package com.ticketjava.vo;

public class BusinessVo {

	// 필드
	private int prodNo;
	private String prodName;
	private int prodType;
	private String beginShow;
	private String endShow;
	private String beginRez;
	private String endRez;
	private String showTime;
	private int viewTime;
	private int viewGrade;
	private String notice;
	private String cancelInfo;
	private int status;
	private String posterPath;

	// 생성자
	public BusinessVo() {
	}

	public BusinessVo(int prodNo, String prodName, int prodType, String beginShow, String endShow, String beginRez,
			String endRez, String showTime, int viewTime, int viewGrade, String notice, String cancelInfo, int status,
			String posterPath) {
		this.prodNo = prodNo;
		this.prodName = prodName;
		this.prodType = prodType;
		this.beginShow = beginShow;
		this.endShow = endShow;
		this.beginRez = beginRez;
		this.endRez = endRez;
		this.showTime = showTime;
		this.viewTime = viewTime;
		this.viewGrade = viewGrade;
		this.notice = notice;
		this.cancelInfo = cancelInfo;
		this.status = status;
		this.posterPath = posterPath;
	}
	// 메소드

	public int getProdNo() {
		return prodNo;
	}

	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public int getProdType() {
		return prodType;
	}

	public void setProdType(int prodType) {
		this.prodType = prodType;
	}

	public String getBeginShow() {
		return beginShow;
	}

	public void setBeginShow(String beginShow) {
		this.beginShow = beginShow;
	}

	public String getEndShow() {
		return endShow;
	}

	public void setEndShow(String endShow) {
		this.endShow = endShow;
	}

	public String getBeginRez() {
		return beginRez;
	}

	public void setBeginRez(String beginRez) {
		this.beginRez = beginRez;
	}

	public String getEndRez() {
		return endRez;
	}

	public void setEndRez(String endRez) {
		this.endRez = endRez;
	}

	public String getShowTime() {
		return showTime;
	}

	public void setShowTime(String showTime) {
		this.showTime = showTime;
	}

	public int getViewTime() {
		return viewTime;
	}

	public void setViewTime(int viewTime) {
		this.viewTime = viewTime;
	}

	public int getViewGrade() {
		return viewGrade;
	}

	public void setViewGrade(int viewGrade) {
		this.viewGrade = viewGrade;
	}

	public String getNotice() {
		return notice;
	}

	public void setNotice(String notice) {
		this.notice = notice;
	}

	public String getCancelInfo() {
		return cancelInfo;
	}

	public void setCancelInfo(String cancelInfo) {
		this.cancelInfo = cancelInfo;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getPosterPath() {
		return posterPath;
	}

	public void setPosterPath(String posterPath) {
		this.posterPath = posterPath;
	}

	// 메소드
	@Override
	public String toString() {
		return "BusinessVo [prodNo=" + prodNo + ", prodName=" + prodName + ", prodType=" + prodType + ", beginShow="
				+ beginShow + ", endShow=" + endShow + ", beginRez=" + beginRez + ", endRez=" + endRez + ", showTime="
				+ showTime + ", viewTime=" + viewTime + ", viewGrade=" + viewGrade + ", notice=" + notice
				+ ", cancelInfo=" + cancelInfo + ", status=" + status + ", posterPath=" + posterPath + "]";
	}

}
