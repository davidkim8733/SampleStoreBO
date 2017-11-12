package com.odn.sample.display.dto;

import java.io.Serializable;
import java.util.List;

public class DispConrDto implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String conrNo;
	private String conrTmplNo;
	private String conrNm;
	private String dispYn;
	private String conrHiddenYn;
	private String conrBgImgFilePath;
	private String conrBgImgFileNm;
	private String conrBgRgbCd;
	private String conrDesc;
	private List<DispConrContsDto> dispConrContsDtoList;
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getConrNo() {
		return conrNo;
	}
	public String getConrTmplNo() {
		return conrTmplNo;
	}
	public String getConrNm() {
		return conrNm;
	}
	public String getDispYn() {
		return dispYn;
	}
	public String getConrHiddenYn() {
		return conrHiddenYn;
	}
	public String getConrBgImgFilePath() {
		return conrBgImgFilePath;
	}
	public String getConrBgImgFileNm() {
		return conrBgImgFileNm;
	}
	public String getConrBgRgbCd() {
		return conrBgRgbCd;
	}
	public String getConrDesc() {
		return conrDesc;
	}
	public List<DispConrContsDto> getDispConrContsDtoList() {
		return dispConrContsDtoList;
	}
	public void setConrNo(String conrNo) {
		this.conrNo = conrNo;
	}
	public void setConrTmplNo(String conrTmplNo) {
		this.conrTmplNo = conrTmplNo;
	}
	public void setConrNm(String conrNm) {
		this.conrNm = conrNm;
	}
	public void setDispYn(String dispYn) {
		this.dispYn = dispYn;
	}
	public void setConrHiddenYn(String conrHiddenYn) {
		this.conrHiddenYn = conrHiddenYn;
	}
	public void setConrBgImgFilePath(String conrBgImgFilePath) {
		this.conrBgImgFilePath = conrBgImgFilePath;
	}
	public void setConrBgImgFileNm(String conrBgImgFileNm) {
		this.conrBgImgFileNm = conrBgImgFileNm;
	}
	public void setConrBgRgbCd(String conrBgRgbCd) {
		this.conrBgRgbCd = conrBgRgbCd;
	}
	public void setConrDesc(String conrDesc) {
		this.conrDesc = conrDesc;
	}
	public void setDispConrContsDtoList(List<DispConrContsDto> dispConrContsDtoList) {
		this.dispConrContsDtoList = dispConrContsDtoList;
	}
	
	
}
