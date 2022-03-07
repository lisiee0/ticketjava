package com.ticketjava.vo;

public class BusinessVo {

	// 필드
	private int prodNo; // 공연번호

	private int userNo;
	private int hallNo;

	private String prodName; // 공연명
	private int prodType; // 공연구분
	private String beginShow; // 공연기간(시작)
	private String endShow; // 공연기간(종료)
	private String beginRez; // 예매기간(시작)
	private String endRez; // 예매기간(종료)
	private String showTime; // 공연 시작시간
	private int viewTime; // 관람 시간
	private int viewGrade; // 관람 등급
	private String notice; // 공지사항
	private String cancelInfo; // 예매/취소안내
	private int status; // 노출 여부
	private String posterPath; // 포스터 이미지 경로

	// 생성자
	public BusinessVo() {
	}

	public BusinessVo(int prodNo, int userNo, int hallNo, String prodName, int prodType, String beginShow,
			String endShow, String beginRez, String endRez, String showTime, int viewTime, int viewGrade, String notice,
			String cancelInfo, int status, String posterPath) {
		this.prodNo = prodNo;
		this.userNo = userNo;
		this.hallNo = hallNo;
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

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getHallNo() {
		return hallNo;
	}

	public void setHallNo(int hallNo) {
		this.hallNo = hallNo;
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
		return "BusinessVo [prodNo=" + prodNo + ", userNo=" + userNo + ", hallNo=" + hallNo + ", prodName=" + prodName
				+ ", prodType=" + prodType + ", beginShow=" + beginShow + ", endShow=" + endShow + ", beginRez="
				+ beginRez + ", endRez=" + endRez + ", showTime=" + showTime + ", viewTime=" + viewTime + ", viewGrade="
				+ viewGrade + ", notice=" + notice + ", cancelInfo=" + cancelInfo + ", status=" + status
				+ ", posterPath=" + posterPath + "]";
	}

}
