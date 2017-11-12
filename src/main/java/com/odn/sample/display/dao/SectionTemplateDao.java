package com.odn.sample.display.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.odn.sample.common.dao.AbstractDao;
import com.odn.sample.display.dto.DispSectTmplDto;

@Repository("sectionTemplateDao")
public class SectionTemplateDao extends AbstractDao {

	@SuppressWarnings("unchecked")
	public List<DispSectTmplDto> selectSectionTemplateList(DispSectTmplDto paramDispSectTmplDto) throws Exception {
		
		return (List<DispSectTmplDto>) selectList("sectionTemplate.selectSectionTemplateList", paramDispSectTmplDto);
	}

	public int selectSectionTemplateListCount(DispSectTmplDto paramDispSectTmplDto) throws Exception {

		return (Integer) selectOne("sectionTemplate.selectSectionTemplateListCount", paramDispSectTmplDto);
	}

}
