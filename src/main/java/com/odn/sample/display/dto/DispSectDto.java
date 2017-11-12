package com.odn.sample.display.dto;

import java.util.List;

import com.odn.sample.common.dto.ProcessResultDto;

public class DispSectDto extends ProcessResultDto{

	private static final long serialVersionUID = 1L;
	
	private String sectNo;
	private String sectTmplNo;
	private String sectTmplFile;
	private String sectTmplTpCd;
	private String sectNm;
	private String dispYn;
	private String sectBgImgFilePath;
	private String sectBgImgFileNm;
	private String sectBgRgbCd;
	private String sectHiddenYn;
	private String sectDesc;
	private List<DispConrDto> dispConrDtoList;
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getSectNo() {
		return sectNo;
	}
	public String getSectTmplNo() {
		return sectTmplNo;
	}
	public String getSectTmplFile() {
		return sectTmplFile;
	}
	public String getSectNm() {
		return sectNm;
	}
	public String getDispYn() {
		return dispYn;
	}
	public String getSectBgImgFilePath() {
		return sectBgImgFilePath;
	}
	public String getSectBgImgFileNm() {
		return sectBgImgFileNm;
	}
	public String getSectBgRgbCd() {
		return sectBgRgbCd;
	}
	public String getSectHiddenYn() {
		return sectHiddenYn;
	}
	public String getSectDesc() {
		return sectDesc;
	}
	public List<DispConrDto> getDispConrDtoList() {
		return dispConrDtoList;
	}
	public void setSectNo(String sectNo) {
		this.sectNo = sectNo;
	}
	public void setSectTmplNo(String sectTmplNo) {
		this.sectTmplNo = sectTmplNo;
	}
	public void setSectTmplFile(String sectTmplFile) {
		this.sectTmplFile = sectTmplFile;
	}
	public void setSectNm(String sectNm) {
		this.sectNm = sectNm;
	}
	public void setDispYn(String dispYn) {
		this.dispYn = dispYn;
	}
	public void setSectBgImgFilePath(String sectBgImgFilePath) {
		this.sectBgImgFilePath = sectBgImgFilePath;
	}
	public void setSectBgImgFileNm(String sectBgImgFileNm) {
		this.sectBgImgFileNm = sectBgImgFileNm;
	}
	public void setSectBgRgbCd(String sectBgRgbCd) {
		this.sectBgRgbCd = sectBgRgbCd;
	}
	public void setSectHiddenYn(String sectHiddenYn) {
		this.sectHiddenYn = sectHiddenYn;
	}
	public void setSectDesc(String sectDesc) {
		this.sectDesc = sectDesc;
	}
	public void setDispConrDtoList(List<DispConrDto> dispConrDtoList) {
		this.dispConrDtoList = dispConrDtoList;
	}
	public String getSectTmplTpCd() {
		return sectTmplTpCd;
	}
	public void setSectTmplTpCd(String sectTmplTpCd) {
		this.sectTmplTpCd = sectTmplTpCd;
	}
	
	
	
	
	

}
