package com.odn.sample.display.service;

import java.util.List;

import com.odn.sample.display.dto.DispSectTmplDto;

public interface SectionTemplateService {

	public List<DispSectTmplDto> getSectionTemplateList(DispSectTmplDto paramDispSectTmplDto) throws Exception;

	public int getSectionTemplateListCount(DispSectTmplDto paramDispSectTmplDto) throws Exception;

}
