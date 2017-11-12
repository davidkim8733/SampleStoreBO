package com.odn.sample.display.dto;

import java.io.Serializable;
import java.util.Date;

public class DispConrTmplDto implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String conrTmplNo;
	private String sectTmplNo;
	private String tmplNo;
	private String conrTmplNm;
	private String conrTmplTpCd;
	private String conrTmplDesc;
	private String useYn;
	private String sysRegUsrNm;
	private Date sysRegDt;
	private String sysModUsrNm;
	private Date sysModDt;
	private DispConrTmplTrgtDto dispConrTmplTrgtDto;
	
	public String getConrTmplNo() {
		return conrTmplNo;
	}
	public String getSectTmplNo() {
		return sectTmplNo;
	}
	public String getTmplNo() {
		return tmplNo;
	}
	public String getConrTmplNm() {
		return conrTmplNm;
	}
	
	public String getConrTmplDesc() {
		return conrTmplDesc;
	}
	public String getUseYn() {
		return useYn;
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
	public DispConrTmplTrgtDto getDispConrTmplTrgtDto() {
		return dispConrTmplTrgtDto;
	}
	public void setConrTmplNo(String conrTmplNo) {
		this.conrTmplNo = conrTmplNo;
	}
	public void setSectTmplNo(String sectTmplNo) {
		this.sectTmplNo = sectTmplNo;
	}
	public void setTmplNo(String tmplNo) {
		this.tmplNo = tmplNo;
	}
	public void setConrTmplNm(String conrTmplNm) {
		this.conrTmplNm = conrTmplNm;
	}
	
	public void setConrTmplDesc(String conrTmplDesc) {
		this.conrTmplDesc = conrTmplDesc;
	}
	public void setUseYn(String useYn) {
		this.useYn = useYn;
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
	public void setDispConrTmplTrgtDto(DispConrTmplTrgtDto dispConrTmplTrgtDto) {
		this.dispConrTmplTrgtDto = dispConrTmplTrgtDto;
	}
	public String getConrTmplTpCd() {
		return conrTmplTpCd;
	}
	public void setConrTmplTpCd(String conrTmplTpCd) {
		this.conrTmplTpCd = conrTmplTpCd;
	}
	
	
	
	
}
