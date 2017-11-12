package com.odn.sample.display.dto;

import java.io.Serializable;
import java.util.Date;

import com.odn.sample.common.dto.PagingDto;

public class DispTmplDto implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String tmplNo;
	private String tmplNm;
	private String tmplTpCd;
	private String tmplTpNm;
	private String tmplFile;
	private String tmplFilePathNm;
	private String tmplFileNm;
	private String useYn;
	private String sysRegUsrNm;
	private Date sysRegDt; 
	private String sysModUsrNm;
	private Date sysModDt;
	private PagingDto pagingDto;
	
	
	public String getSysRegUsrNm() {
		return sysRegUsrNm;
	}
	public String getSysModUsrNm() {
		return sysModUsrNm;
	}
	public void setSysRegUsrNm(String sysRegUsrNm) {
		this.sysRegUsrNm = sysRegUsrNm;
	}
	public void setSysModUsrNm(String sysModUsrNm) {
		this.sysModUsrNm = sysModUsrNm;
	}

	
	public PagingDto getPagingDto() {
		return pagingDto;
	}
	public void setPagingDto(PagingDto pagingDto) {
		this.pagingDto = pagingDto;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public String getTmplNm() {
		return tmplNm;
	}
	public String getTmplTpNm() {
		return tmplTpNm;
	}
	public String getTmplFile() {
		return tmplFile;
	}
	public String getUseYn() {
		return useYn;
	}
	
	public Date getSysRegDt() {
		return sysRegDt;
	}
	
	public Date getSysModDt() {
		return sysModDt;
	}
	
	public void setTmplNm(String tmplNm) {
		this.tmplNm = tmplNm;
	}
	public void setTmplTpNm(String tmplTpNm) {
		this.tmplTpNm = tmplTpNm;
	}
	public void setTmplFile(String tmplFile) {
		this.tmplFile = tmplFile;
	}
	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}
	
	public void setSysRegDt(Date sysRegDt) {
		this.sysRegDt = sysRegDt;
	}
	
	public void setSysModDt(Date sysModDt) {
		this.sysModDt = sysModDt;
	}
	
	public String getTmplTpCd() {
		return tmplTpCd;
	}
	public void setTmplTpCd(String tmplTpCd) {
		this.tmplTpCd = tmplTpCd;
	}
	public String getTmplFilePathNm() {
		return tmplFilePathNm;
	}
	public String getTmplFileNm() {
		return tmplFileNm;
	}
	public void setTmplFilePathNm(String tmplFilePathNm) {
		this.tmplFilePathNm = tmplFilePathNm;
	}
	public void setTmplFileNm(String tmplFileNm) {
		this.tmplFileNm = tmplFileNm;
	}
	public String getTmplNo() {
		return tmplNo;
	}
	public void setTmplNo(String tmplNo) {
		this.tmplNo = tmplNo;
	}
	
	
}
