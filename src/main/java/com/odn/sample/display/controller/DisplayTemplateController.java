package com.odn.sample.display.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.odn.sample.common.dto.PagingDto;
import com.odn.sample.common.dto.ProcessResultDto;
import com.odn.sample.common.util.CommonUtil;
import com.odn.sample.display.dto.DispTmplDto;
import com.odn.sample.display.service.DisplayTemplateService;

@Controller
public class DisplayTemplateController {

	Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="displayTemplateService")
    private DisplayTemplateService displayService;
    

    @Resource(name="commonUtil")
    private CommonUtil commonUtil;
    
    /*
     * Return : MV
     * 템플릿리스트. 
     */
    
    @RequestMapping(value = "/display/tmplMgmtList")
    public ModelAndView getTmplMgmtList(HttpServletRequest request) throws Exception{
        
    	
    	ModelAndView mv = new ModelAndView();
    	DispTmplDto reqDispTmplDto = new DispTmplDto();
    	
    	
    	PagingDto pagingDto = new PagingDto();
    	
    	String curPage = request.getParameter("curPage");
    	String countPage = request.getParameter("countPage");
    	
    	if (curPage == null || curPage == "") {
			curPage = "1";
		}
    	
    	if (countPage == null || countPage == "") {
    		countPage = "10";
		}
    	
    	pagingDto.setCurPage(Integer.parseInt(curPage));
    	pagingDto.setCountPage(Integer.parseInt(countPage));
    	
    	reqDispTmplDto.setTmplNo(request.getParameter("tmplNo"));
    	reqDispTmplDto.setTmplNm(request.getParameter("tmplNm"));
    	reqDispTmplDto.setUseYn(request.getParameter("useYn"));
    	reqDispTmplDto.setTmplTpCd(request.getParameter("tmplTpCd"));
    	pagingDto.setTotalCount(displayService.getTmplateListCount(reqDispTmplDto));
    	reqDispTmplDto.setPagingDto(pagingDto);
    	
    	List<DispTmplDto> dispTmplDtoList = displayService.getTmplateList(reqDispTmplDto);
    	
    	
    	mv.setViewName("/display/tmplMgmtList.jsp");
    	mv.addObject("reqDispTmplDto", reqDispTmplDto);
        mv.addObject("dispTmplDtoList", dispTmplDtoList);
        
        
        return mv;
    }
        
    // @Ajax 템플릿 정보 저장 (Insert / Update)
    @RequestMapping(value = "/display/saveTemplateInfo", method = RequestMethod.POST )
    public @ResponseBody ProcessResultDto saveTemplate(HttpServletRequest request) throws Exception{
        
    	DispTmplDto dispTmplDto = new DispTmplDto();
    	dispTmplDto.setTmplNo(request.getParameter("inputTmplNo"));
    	dispTmplDto.setTmplNm(request.getParameter("inputTmplNm"));
    	dispTmplDto.setUseYn(request.getParameter("selectUseYn"));
    	dispTmplDto.setTmplTpCd(request.getParameter("selectTmplTpCd"));
    	dispTmplDto.setTmplFilePathNm(request.getParameter("inputTmplFilePathNm"));
    	dispTmplDto.setTmplFileNm(request.getParameter("inputTmplFileNm"));
    	
    	ProcessResultDto processResultDto = displayService.saveTmeplateInfo(dispTmplDto);
    	        
        return processResultDto;
    }
    
    // @Ajax Template 삭제
    @RequestMapping(value = "/display/deleteTmpl", method = RequestMethod.POST )
    public @ResponseBody ProcessResultDto deleteTemplates(HttpServletRequest request) throws Exception{
        
    	String[] arrTmplNo = request.getParameterValues("arrTmplNo");
    	
    	for (int i = 0; i < arrTmplNo.length; i++) {
			log.info("arr value            : " + arrTmplNo[i]);
		}
    	
    	ProcessResultDto processResultDto = displayService.deleteTemplate(arrTmplNo);
    	
        return processResultDto;
    }
    
    // @ MV. 템플릿 상세보기  
    @RequestMapping(value = "/display/tmplMgmtViewDetail")
    public ModelAndView tmplMgmtViewDetail(HttpServletRequest request) throws Exception{
        
    	
    	ModelAndView mv = new ModelAndView();
    	String paramTmplNo = request.getParameter("tmplNo");
    	
    	DispTmplDto dispTmplDto = displayService.getTmplateDetailInfo(paramTmplNo);
    	

    	mv.setViewName("/display/subPages/popRegisterTmpl.jsp");
        
        mv.addObject("dispTmplDto", dispTmplDto);

        return mv;
    }
  

}
