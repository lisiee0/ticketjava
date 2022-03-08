package com.ticketjava.vo;

public class DiscountVo {
	private int dcNo;
	private int prodNo;

	private String dcName;
	private String beginDc;
	private String endDc;
	private int dcRate;
	private String dcType;

	private String prodName;
	private String hallName;

	public DiscountVo() {
	}

	public DiscountVo(int dcNo, int prodNo, String dcName, String beginDc, String endDc, int dcRate, String dcType,
			String prodName, String hallName) {
		this.dcNo = dcNo;
		this.prodNo = prodNo;
		this.dcName = dcName;
		this.beginDc = beginDc;
		this.endDc = endDc;
		this.dcRate = dcRate;
		this.dcType = dcType;
		this.prodName = prodName;
		this.hallName = hallName;
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

	public int getDcRate() {
		return dcRate;
	}

	public void setDcRate(int dcRate) {
		this.dcRate = dcRate;
	}

	public String getDcType() {
		return dcType;
	}

	public void setDcType(String dcType) {
		this.dcType = dcType;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public String getHallName() {
		return hallName;
	}

	public void setHallName(String hallName) {
		this.hallName = hallName;
	}

	@Override
	public String toString() {
		return "DiscountVo [dcNo=" + dcNo + ", prodNo=" + prodNo + ", dcName=" + dcName + ", beginDc=" + beginDc
				+ ", endDc=" + endDc + ", dcRate=" + dcRate + ", dcType=" + dcType + ", prodName=" + prodName
				+ ", hallName=" + hallName + "]";
	}
	
}
