package com.odn.sample.display.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.odn.sample.common.dto.PagingDto;
import com.odn.sample.common.dto.ProcessResultDto;
import com.odn.sample.common.result.SystemResultCode;
import com.odn.sample.common.util.CommonUtil;
import com.odn.sample.display.dao.DisplayTemplateDao;
import com.odn.sample.display.dto.DispTmplDto;

@Service("displayTemplateService")
public class DisplayTemplateServiceImpl implements DisplayTemplateService{
 
	Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="displayTemplateDAO")
    private DisplayTemplateDao displayDAO;
    
    @Resource(name="commonUtil")
    private CommonUtil commonUtil;
	

	@Override
	public List<DispTmplDto> getTmplateList(DispTmplDto reqDispTmplDto) throws Exception {
		
		PagingDto pagingDto = reqDispTmplDto.getPagingDto();
		pagingDto = commonUtil.calculatePagingIndex(pagingDto);
		
		log.info("pagingDto.getStrIdx()               :  " + pagingDto.getStrIdx());
		log.info("pagingDto.getEndIdx()               :  " + pagingDto.getEndIdx());
		reqDispTmplDto.setPagingDto(pagingDto);
		
		return displayDAO.selectDispTmplList(reqDispTmplDto);
	}


	@Override
	@Transactional
	public ProcessResultDto saveTmeplateInfo(DispTmplDto paramDispTmplDto) throws Exception {
		
		ProcessResultDto processResultDto = new ProcessResultDto();
		String paramTmplNo = paramDispTmplDto.getTmplNo();
		
		try {
			
			if (paramTmplNo == null || paramTmplNo == "") {
				
				displayDAO.insertTemplateInfo(paramDispTmplDto);	
				processResultDto.setProcRsltCd(SystemResultCode.SUCCESS);
				processResultDto.setProcRsltMsg("Inserted");
			} else {
			
				displayDAO.updateTemplateInfo(paramDispTmplDto);
				processResultDto.setProcRsltCd(SystemResultCode.SUCCESS);	
				processResultDto.setProcRsltMsg("Updated");
			}
			
			
			
		} catch (Exception e) {
			log.error(e.getMessage());
			processResultDto.setFailCausCd(SystemResultCode.FAIL);
			processResultDto.setFailCausDesc(e.getMessage());
			
		}
		return processResultDto;
		
	}


	@Override
	@Transactional
	public ProcessResultDto deleteTemplate(String[] arrTmplNo) throws Exception {
		
		ProcessResultDto processResultDto = new ProcessResultDto();
		try {
			
			displayDAO.deleteDispTmpl(arrTmplNo);
			processResultDto.setProcRsltCd(SystemResultCode.SUCCESS);
			processResultDto.setProcRsltMsg("Deleted");
		} catch (Exception e) {
			
			log.error(e.getMessage());
			processResultDto.setFailCausCd(SystemResultCode.FAIL);
			processResultDto.setFailCausDesc(e.getMessage());
		}
		return processResultDto;
	}


	@Override
	public int getTmplateListCount(DispTmplDto reqDispTmplDto) throws Exception {
		
		int totalCount = displayDAO.selectDispTmplListCount(reqDispTmplDto);
		
		return totalCount;
		
	}


	@Override
	public DispTmplDto getTmplateDetailInfo(String paramTmplNo) throws Exception {
		
		return displayDAO.selectTmplateDetailInfo(paramTmplNo);
	}
	
}

