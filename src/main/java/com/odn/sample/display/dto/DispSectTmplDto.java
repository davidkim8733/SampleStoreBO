package com.odn.sample.display.dto;

import java.io.Serializable;
import java.util.Date;

import com.odn.sample.common.dto.PagingDto;

public class DispSectTmplDto implements Serializable {

	//private static final long serialVersionUID = 1L;
	
	private String sectTmplNo;
	private String tmplNo;
	private String tmplNm;
	private String sectTmplNm;
	private String sectTmplFilePathNm;
	private String sectTmplFileNm;
	private String sectTmplFile;
	private String useYn;
	private String sectTmplDesc;
	private String sysRegUsrNm;
	private Date sysRegDt;
	private String sysModUsrNm;
	private Date sysModDt;
	private PagingDto pagingDto;
	private DispConrTmplDto dispConrTmplDto;
	private String sectTmplTpCd;
	
	
	
	public String getSectTmplTpCd() {
		return sectTmplTpCd;
	}
	public void setSectTmplTpCd(String sectTmplTpCd) {
		this.sectTmplTpCd = sectTmplTpCd;
	}
	/*
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	*/
	public String getSectTmplNo() {
		return sectTmplNo;
	}
	public String getTmplNo() {
		return tmplNo;
	}
	public String getTmplNm() {
		return tmplNm;
	}
	public String getSectTmplNm() {
		return sectTmplNm;
	}
	public String getSectTmplFilePathNm() {
		return sectTmplFilePathNm;
	}
	public String getSectTmplFileNm() {
		return sectTmplFileNm;
	}
	public String getUseYn() {
		return useYn;
	}
	public String getSectTmplDesc() {
		return sectTmplDesc;
	}
	public String getSysRegUsrNm() {
		return sysRegUsrNm;
	}
	public Date getSysRegDt() {
		return sysRegDt;
	}
	public String getSysModUsrNm() {
		return sysModUsrNm;
	}
	public Date getSysModDt() {
		return sysModDt;
	}
	public PagingDto getPagingDto() {
		return pagingDto;
	}
	public void setSectTmplNo(String sectTmplNo) {
		this.sectTmplNo = sectTmplNo;
	}
	public void setTmplNo(String tmplNo) {
		this.tmplNo = tmplNo;
	}
	public void setTmplNm(String tmplNm) {
		this.tmplNm = tmplNm;
	}
	public void setSectTmplNm(String sectTmplNm) {
		this.sectTmplNm = sectTmplNm;
	}
	public void setSectTmplFilePathNm(String sectTmplFilePathNm) {
		this.sectTmplFilePathNm = sectTmplFilePathNm;
	}
	public void setSectTmplFileNm(String sectTmplFileNm) {
		this.sectTmplFileNm = sectTmplFileNm;
	}
	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}
	public void setSectTmplDesc(String sectTmplDesc) {
		this.sectTmplDesc = sectTmplDesc;
	}
	public void setSysRegUsrNm(String sysRegUsrNm) {
		this.sysRegUsrNm = sysRegUsrNm;
	}
	public void setSysRegDt(Date sysRegDt) {
		this.sysRegDt = sysRegDt;
	}
	public void setSysModUsrNm(String sysModUsrNm) {
		this.sysModUsrNm = sysModUsrNm;
	}
	public void setSysModDt(Date sysModDt) {
		this.sysModDt = sysModDt;
	}
	public void setPagingDto(PagingDto pagingDto) {
		this.pagingDto = pagingDto;
	}
	public String getSectTmplFile() {
		return sectTmplFile;
	}
	public void setSectTmplFile(String sectTmplFile) {
		this.sectTmplFile = sectTmplFile;
	}
	public DispConrTmplDto getDispConrTmplDto() {
		return dispConrTmplDto;
	}
	public void setDispConrTmplDto(DispConrTmplDto dispConrTmplDto) {
		this.dispConrTmplDto = dispConrTmplDto;
	}
	
	
	
}
