package com.odn.sample.common.dto;

import java.io.Serializable;

public class PagingDto implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private int curPage;
	private int countPage;
	private int totalCount;
	private int strIdx;
	private int endIdx;
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public int getCurPage() {
		return curPage;
	}

	public int getCountPage() {
		return countPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public void setCountPage(int countPage) {
		this.countPage = countPage;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getStrIdx() {
		return strIdx;
	}

	public int getEndIdx() {
		return endIdx;
	}

	public void setStrIdx(int strIdx) {
		this.strIdx = strIdx;
	}

	public void setEndIdx(int endIdx) {
		this.endIdx = endIdx;
	}
	
	

	
	
	
	
	
}
