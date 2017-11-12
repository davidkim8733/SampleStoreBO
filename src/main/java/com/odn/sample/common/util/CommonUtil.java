package com.odn.sample.common.util;

import org.springframework.stereotype.Service;

import com.odn.sample.common.dto.PagingDto;

@Service
public class CommonUtil {

	public PagingDto calculatePagingIndex (PagingDto paramPagingDto) {
		
		int curPage = paramPagingDto.getCurPage();
		int countPage = paramPagingDto.getCountPage();
		int strIdx = (curPage - 1) * countPage;
		int endIdx = curPage * countPage;
		
		paramPagingDto.setStrIdx(strIdx);
		paramPagingDto.setEndIdx(endIdx);
		
		return paramPagingDto;
		
	}
}
