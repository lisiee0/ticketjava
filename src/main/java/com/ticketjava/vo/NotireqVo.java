package com.ticketjava.vo;

public class NotireqVo {

	private int reqNo;
	private int userNo;
	private int prodNo;

	private String viewDate;
	private String selSection;
	private int interval;
	private int notiTimes;
	private String reqDate;
	private int status;

	private String prodName;

	public NotireqVo() {
	}

	public NotireqVo(int reqNo, int userNo, int prodNo, String viewDate, String selSection, int interval, int notiTimes,
			String reqDate, int status, String prodName) {
		this.reqNo = reqNo;
		this.userNo = userNo;
		this.prodNo = prodNo;
		this.viewDate = viewDate;
		this.selSection = selSection;
		this.interval = interval;
		this.notiTimes = notiTimes;
		this.reqDate = reqDate;
		this.status = status;
		this.prodName = prodName;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public int getReqNo() {
		return reqNo;
	}

	public void setReqNo(int reqNo) {
		this.reqNo = reqNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getProdNo() {
		return prodNo;
	}

	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}

	public String getViewDate() {
		return viewDate;
	}

	public void setViewDate(String viewDate) {
		this.viewDate = viewDate;
	}

	public String getSelSection() {
		return selSection;
	}

	public void setSelSection(String selSection) {
		this.selSection = selSection;
	}

	public int getInterval() {
		return interval;
	}

	public void setInterval(int interval) {
		this.interval = interval;
	}

	public int getNotiTimes() {
		return notiTimes;
	}

	public void setNotiTimes(int notiTimes) {
		this.notiTimes = notiTimes;
	}

	public String getReqDate() {
		return reqDate;
	}

	public void setReqDate(String reqDate) {
		this.reqDate = reqDate;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "NotireqVo [reqNo=" + reqNo + ", userNo=" + userNo + ", prodNo=" + prodNo + ", viewDate=" + viewDate
				+ ", selSection=" + selSection + ", interval=" + interval + ", notiTimes=" + notiTimes + ", reqDate="
				+ reqDate + ", status=" + status + ", prodName=" + prodName + "]";
	}

}
