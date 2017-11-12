package com.odn.sample.common.dto;

public class ProcessResultDto {

	
	/** 처리된개수 */
	private String processedCnt;
	/** 실패사유코드 */
	private String failCausCd;
	/** 결과코드 */
	private String procRsltCd;
	/** 실패사유설명 */
	private String failCausDesc;
	/** 결과메시지 */
	private String procRsltMsg;
	
	public String getProcessedCnt() {
		return processedCnt;
	}
	public String getFailCausCd() {
		return failCausCd;
	}
	public String getProcRsltCd() {
		return procRsltCd;
	}
	public String getFailCausDesc() {
		return failCausDesc;
	}
	public String getProcRsltMsg() {
		return procRsltMsg;
	}
	public void setProcessedCnt(String processedCnt) {
		this.processedCnt = processedCnt;
	}
	public void setFailCausCd(String failCausCd) {
		this.failCausCd = failCausCd;
	}
	public void setProcRsltCd(String procRsltCd) {
		this.procRsltCd = procRsltCd;
	}
	public void setFailCausDesc(String failCausDesc) {
		this.failCausDesc = failCausDesc;
	}
	public void setProcRsltMsg(String procRsltMsg) {
		this.procRsltMsg = procRsltMsg;
	}
	
	
}
