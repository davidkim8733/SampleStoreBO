package com.odn.sample.display.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.odn.sample.common.dto.PagingDto;
import com.odn.sample.common.util.CommonUtil;
import com.odn.sample.display.dao.SectionTemplateDao;
import com.odn.sample.display.dto.DispSectTmplDto;

@Service("sectionTemplateService")
public class SectionTemplateServiceImpl implements SectionTemplateService {

	
	Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="sectionTemplateDao")
    private SectionTemplateDao sectionTemplateDao;
    
    @Resource(name="commonUtil")
    private CommonUtil commonUtil;
	
	
	@Override
	public List<DispSectTmplDto> getSectionTemplateList(DispSectTmplDto paramDispSectTmplDto) throws Exception {

		PagingDto pagingDto = paramDispSectTmplDto.getPagingDto();
		pagingDto = commonUtil.calculatePagingIndex(pagingDto);
		
		log.info("pagingDto.getStrIdx()               :  " + pagingDto.getStrIdx());
		log.info("pagingDto.getEndIdx()               :  " + pagingDto.getEndIdx());
		paramDispSectTmplDto.setPagingDto(pagingDto);
		
		
		List<DispSectTmplDto> dispSectTmplDtoList = sectionTemplateDao.selectSectionTemplateList(paramDispSectTmplDto);
		
		return dispSectTmplDtoList;
	}


	@Override
	public int getSectionTemplateListCount(DispSectTmplDto paramDispSectTmplDto) throws Exception {
		
		int totalCount = sectionTemplateDao.selectSectionTemplateListCount(paramDispSectTmplDto);
		return totalCount;
	}

	
	
}
