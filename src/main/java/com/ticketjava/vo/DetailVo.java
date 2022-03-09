package com.ticketjava.vo;

public class DetailVo {

	// 생성자
	public String theaterName; // 공연장명
	public String prodName; // 공연명
	public int prodType; // 공연 구분
	public String beginShow; // 공연 시작시간
	public String endShow; // 공연 종료시간
	public String beginRez; // 예매 시작시간
	public String endrez; // 예매 종료시간
	public int showTime; // 관람 시간
	public int viewGrade; // 관람 등급
	public String grade; // 좌석 등급
	public int price; // 가격
	public String notice; // 공지사항
	public String posterPath; // 포스터 이미지 경로
	public String prodPath; // 공연 정보
	public String castingPath; // 캐스팅 정보
	public String addPath; // 부가 정보
	public String cancelInfo; // 예매/취소 안내

	// 필드
	public DetailVo() {
	}

	// 업로드 필드
	public DetailVo(String posterPath, String prodPath, String castingPath, String addPath) {
		super();
		this.posterPath = posterPath;
		this.prodPath = prodPath;
		this.castingPath = castingPath;
		this.addPath = addPath;
	}

	// 일반 필드
	public DetailVo(String theaterName, String prodName, int prodType, String beginShow, String endShow,
			String beginRez, String endrez, int showTime, int viewGrade, String grade, int price, String notice,
			String posterPath, String prodPath, String castingPath, String addPath, String cancelInfo) {
		this.theaterName = theaterName;
		this.prodName = prodName;
		this.prodType = prodType;
		this.beginShow = beginShow;
		this.endShow = endShow;
		this.beginRez = beginRez;
		this.endrez = endrez;
		this.showTime = showTime;
		this.viewGrade = viewGrade;
		this.grade = grade;
		this.price = price;
		this.notice = notice;
		this.posterPath = posterPath;
		this.prodPath = prodPath;
		this.castingPath = castingPath;
		this.addPath = addPath;
		this.cancelInfo = cancelInfo;
	}

	// 메소드
	public String getTheaterName() {
		return theaterName;
	}

	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
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

	public String getEndrez() {
		return endrez;
	}

	public void setEndrez(String endrez) {
		this.endrez = endrez;
	}

	public int getShowTime() {
		return showTime;
	}

	public void setShowTime(int showTime) {
		this.showTime = showTime;
	}

	public int getViewGrade() {
		return viewGrade;
	}

	public void setViewGrade(int viewGrade) {
		this.viewGrade = viewGrade;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getNotice() {
		return notice;
	}

	public void setNotice(String notice) {
		this.notice = notice;
	}

	public String getPosterPath() {
		return posterPath;
	}

	public void setPosterPath(String posterPath) {
		this.posterPath = posterPath;
	}

	public String getProdPath() {
		return prodPath;
	}

	public void setProdPath(String prodPath) {
		this.prodPath = prodPath;
	}

	public String getCastingPath() {
		return castingPath;
	}

	public void setCastingPath(String castingPath) {
		this.castingPath = castingPath;
	}

	public String getAddPath() {
		return addPath;
	}

	public void setAddPath(String addPath) {
		this.addPath = addPath;
	}

	public String getCancelInfo() {
		return cancelInfo;
	}

	public void setCancelInfo(String cancelInfo) {
		this.cancelInfo = cancelInfo;
	}

	// 메소드 일반
	@Override
	public String toString() {
		return "DetailVo [theaterName=" + theaterName + ", prodName=" + prodName + ", prodType=" + prodType
				+ ", beginShow=" + beginShow + ", endShow=" + endShow + ", beginRez=" + beginRez + ", endrez=" + endrez
				+ ", showTime=" + showTime + ", viewGrade=" + viewGrade + ", grade=" + grade + ", price=" + price
				+ ", notice=" + notice + ", posterPath=" + posterPath + ", prodPath=" + prodPath + ", castingPath="
				+ castingPath + ", addPath=" + addPath + ", cancelInfo=" + cancelInfo + "]";
	}

}
