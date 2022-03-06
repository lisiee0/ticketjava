package com.ticketjava.vo;

public class DiscountVo {
	private int dcNo;
	private int prodNo;

	private String dcName;
	private String beginDc;
	private String endDc;
	private int dcrate;
	private String dctype;

	public DiscountVo() {
	}

	public DiscountVo(int dcNo, int prodNo, String dcName, String beginDc, String endDc, int dcrate, String dctype) {
		this.dcNo = dcNo;
		this.prodNo = prodNo;
		this.dcName = dcName;
		this.beginDc = beginDc;
		this.endDc = endDc;
		this.dcrate = dcrate;
		this.dctype = dctype;
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

	public int getDcrate() {
		return dcrate;
	}

	public void setDcrate(int dcrate) {
		this.dcrate = dcrate;
	}

	public String getDctype() {
		return dctype;
	}

	public void setDctype(String dctype) {
		this.dctype = dctype;
	}

	@Override
	public String toString() {
		return "DiscountVo [dcNo=" + dcNo + ", prodNo=" + prodNo + ", dcName=" + dcName + ", beginDc=" + beginDc
				+ ", endDc=" + endDc + ", dcrate=" + dcrate + ", dctype=" + dctype + "]";
	}

}
