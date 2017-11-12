package com.odn.sample.display.service;

import java.util.List;

import com.odn.sample.common.dto.ProcessResultDto;
import com.odn.sample.display.dto.DispTmplDto;

public interface DisplayTemplateService {

	public List<DispTmplDto> getTmplateList(DispTmplDto dispTmplDto) throws Exception;

	public ProcessResultDto saveTmeplateInfo(DispTmplDto dispTmplDto) throws Exception;

	public ProcessResultDto deleteTemplate(String[] arrTmplNo) throws Exception;

	public int getTmplateListCount(DispTmplDto reqDispTmplDto) throws Exception;

	public DispTmplDto getTmplateDetailInfo(String paramTmplNo) throws Exception; 
	
}
