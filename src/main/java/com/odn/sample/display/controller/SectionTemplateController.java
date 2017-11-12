package com.odn.sample.display.controller;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.odn.sample.common.dto.PagingDto;
import com.odn.sample.common.dto.ProcessResultDto;
import com.odn.sample.common.util.CommonUtil;
import com.odn.sample.display.dto.DispSectTmplDto;
import com.odn.sample.display.service.SectionTemplateService;

@Controller
public class SectionTemplateController {

	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="commonUtil")
    private CommonUtil commonUtil;
	

	@Resource(name="sectionTemplateService")
    private SectionTemplateService sectionTemplateService;
	
	@RequestMapping(value = "/display/getSectionTemplateList")
	public ModelAndView getSectionTemplateList(HttpServletRequest request) throws Exception{
            	
    	ModelAndView mv = new ModelAndView();
    	DispSectTmplDto paramDispSectTmplDto = new DispSectTmplDto();
    	
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
    	
    	paramDispSectTmplDto.setSectTmplNo(request.getParameter("sectTmplNo"));
    	paramDispSectTmplDto.setSectTmplNm(request.getParameter("sectTmplNm"));
    	paramDispSectTmplDto.setUseYn(request.getParameter("useYn"));
    	paramDispSectTmplDto.setSectTmplTpCd(request.getParameter("tmplTpCd"));
    	pagingDto.setTotalCount(sectionTemplateService.getSectionTemplateListCount(paramDispSectTmplDto));
    	paramDispSectTmplDto.setPagingDto(pagingDto);
    	
    	List<DispSectTmplDto> dispSectTmplDtoList = sectionTemplateService.getSectionTemplateList(paramDispSectTmplDto);
    	
    	mv.setViewName("/display/sectionTemplateList.jsp");
    	
    	mv.addObject("paramDispSectTmplDto", paramDispSectTmplDto);
        mv.addObject("dispSectTmplDtoList", dispSectTmplDtoList);
        
        return mv;
    }
	
	// @ MV. 템플릿 상세보기  
    @RequestMapping(value = "/display/sectTmplMgmtViewDetail")
    public ModelAndView sectTmplMgmtViewDetail(HttpServletRequest request) throws Exception{
        
    	
    	ModelAndView mv = new ModelAndView();
    	String paramTmplNo = request.getParameter("tmplNo");
    	
    	//DispTmplDto dispTmplDto = sectionTemplateService.getSectTmplateDetailInfo(paramTmplNo);
    	

    	mv.setViewName("/display/subPages/popSectTmplMgmt.jsp");
        
        //mv.addObject("dispTmplDto", dispTmplDto);

        return mv;
    }
    

	/**
	 * 추천설정 등록 (ajax)
	 * 
	 * @param params
	 * @param model
	 * @return
	 * @since 2017.10.22
	 * @author flynn@uzen.net
	 */
    @RequestMapping(value = "/display/setSectionTmplInfo", method = RequestMethod.POST )
    public @ResponseBody ProcessResultDto saveTemplate(@RequestBody DispSectTmplDto dispSectTmplDto) throws Exception{
            	    	
    	System.out.println("" + dispSectTmplDto.getSectTmplFileNm());
    	System.out.println("" + dispSectTmplDto.getSectTmplNm());
    	
    	ProcessResultDto processResultDto = new ProcessResultDto();
    	        
        return processResultDto;
    }
}
