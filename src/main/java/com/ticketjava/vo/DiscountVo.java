package com.ticketjava.vo;

public class DiscountVo {
	private int dcNo;
	private int prodNo;

	private String dcName;
	private String beginDc;
	private String endDc;
	private int dcRate;
	private String dcType;

	public DiscountVo() {
	}

	public DiscountVo(int dcNo, int prodNo, String dcName, String beginDc, String endDc, int dcRate, String dcType) {
		this.dcNo = dcNo;
		this.prodNo = prodNo;
		this.dcName = dcName;
		this.beginDc = beginDc;
		this.endDc = endDc;
		this.dcRate = dcRate;
		this.dcType = dcType;
	}

	public int getDcNo() {
		return dcNo;
	}

	public void setDcNo(int dcNo) {
		this.dcNo = dcNo;
	}

	public int getProdNo() {
		return prodNo;
	}

	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}

	public String getDcName() {
		return dcName;
	}

	public void setDcName(String dcName) {
		this.dcName = dcName;
	}

	public String getBeginDc() {
		return beginDc;
	}

	public void setBeginDc(String beginDc) {
		this.beginDc = beginDc;
	}

	public String getEndDc() {
		return endDc;
	}

	public void setEndDc(String endDc) {
		this.endDc = endDc;
	}

	public int getdcRate() {
		return dcRate;
	}

	public void setdcRate(int dcRate) {
		this.dcRate = dcRate;
	}

	public String getdcType() {
		return dcType;
	}

	public void setdcType(String dcType) {
		this.dcType = dcType;
	}

	@Override
	public String toString() {
		return "DiscountVo [dcNo=" + dcNo + ", prodNo=" + prodNo + ", dcName=" + dcName + ", beginDc=" + beginDc
				+ ", endDc=" + endDc + ", dcRate=" + dcRate + ", dcType=" + dcType + "]";
	}

}
