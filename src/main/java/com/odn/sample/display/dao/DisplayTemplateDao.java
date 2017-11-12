package com.odn.sample.display.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.odn.sample.common.dao.AbstractDao;
import com.odn.sample.display.dto.DispTmplDto;

@Repository("displayTemplateDAO")
public class DisplayTemplateDao extends AbstractDao {

	
	@SuppressWarnings("unchecked")
	public List<DispTmplDto> selectDispTmplList(DispTmplDto reqDispTmplDto) throws Exception{
		
		return (List<DispTmplDto>) selectList("displayTemplate.selectDispTmplList", reqDispTmplDto);
	}

	// Merge문 Sample (사용하지 않음.) 
	public void mergeTemplageInfo(DispTmplDto dispTmplDto) throws Exception {
	
		insert("displayTemplate.mergeTemplageInfo", dispTmplDto);
	}

	public void deleteDispTmpl(String[] arrTmplNo) throws Exception{
		
		delete("displayTemplate.deleteDispTmpl", arrTmplNo);
		
	}

	public int selectDispTmplListCount(DispTmplDto dispTmplDto) throws Exception {
		return (Integer) selectOne("displayTemplate.selectDispTmplListCount", dispTmplDto);
	}

	public DispTmplDto selectTmplateDetailInfo(String paramTmplNo) throws Exception{

		return (DispTmplDto) selectOne("displayTemplate.selectTmplateDetailInfo", paramTmplNo);
	}

	public void insertTemplateInfo(DispTmplDto paramDispTmplDto) throws Exception {

		insert("displayTemplate.insertTemplateInfo", paramDispTmplDto);
	}

	public void updateTemplateInfo(DispTmplDto paramDispTmplDto) throws Exception {
		
		update("displayTemplate.updateTemplateInfo", paramDispTmplDto);
		
	}

	
}
