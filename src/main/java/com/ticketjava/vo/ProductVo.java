package com.ticketjava.vo;

import java.util.List;

public class ProductVo {

	// 필드
	private int prodNo; // 공연번호

	private int userNo;	// 회원번호
	private int hallNo;	//시설 번호

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
	private String theaterName; // 공연장명
	private String hallName; // 시설명
	
	private List<SeatpriceVo> seatpriceList; // 등급별 좌석 리스트
	private List<DiscountVo> productDisList; // 공연별 상시할인 정보 

	
	private int detailNo; // 상세정보 번호
	private String seatpriceNo;	//등급별가격 번호
	
	private String dcName;
	private String dcRate;

	// 기본 생성자
	public ProductVo() {
	}

	// 생성자
	public ProductVo(int prodNo, int userNo, int hallNo, String prodName, int prodType, String beginShow,
			String endShow, String beginRez, String endRez, String showTime, int viewTime, int viewGrade, String notice,
			String cancelInfo, int status, String posterPath, String theaterName, String hallName,
			List<SeatpriceVo> seatpriceList, List<DiscountVo> productDisList) {
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
		this.theaterName = theaterName;
		this.hallName = hallName;
		this.seatpriceList = seatpriceList;
		this.productDisList = productDisList;
	}

	public ProductVo(int prodNo, int userNo, int hallNo, String prodName, int prodType, String beginShow,
			String endShow, String beginRez, String endRez, String showTime, int viewTime, int viewGrade, String notice,
			String cancelInfo, int status, String posterPath, String theaterName, String hallName,
			List<SeatpriceVo> seatpriceList, List<DiscountVo> productDisList, int detailNo) {
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
		this.theaterName = theaterName;
		this.hallName = hallName;
		this.seatpriceList = seatpriceList;
		this.productDisList = productDisList;
		this.detailNo = detailNo;
	}

	public ProductVo(int prodNo, int userNo, int hallNo, String prodName, int prodType, String beginShow,
			String endShow, String beginRez, String endRez, String showTime, int viewTime, int viewGrade, String notice,
			String cancelInfo, int status, String posterPath, String theaterName, String hallName,
			List<SeatpriceVo> seatpriceList, List<DiscountVo> productDisList, int detailNo, String seatpriceNo) {
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
		this.theaterName = theaterName;
		this.hallName = hallName;
		this.seatpriceList = seatpriceList;
		this.productDisList = productDisList;
		this.detailNo = detailNo;
		this.seatpriceNo = seatpriceNo;
	}
	
	

	public ProductVo(int prodNo, int userNo, int hallNo, String prodName, int prodType, String beginShow,
			String endShow, String beginRez, String endRez, String showTime, int viewTime, int viewGrade, String notice,
			String cancelInfo, int status, String posterPath, String theaterName, String hallName,
			List<SeatpriceVo> seatpriceList, List<DiscountVo> productDisList, int detailNo, String seatpriceNo,
			String dcName, String dcRate) {
		super();
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
		this.theaterName = theaterName;
		this.hallName = hallName;
		this.seatpriceList = seatpriceList;
		this.productDisList = productDisList;
		this.detailNo = detailNo;
		this.seatpriceNo = seatpriceNo;
		this.dcName = dcName;
		this.dcRate = dcRate;
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

	public String getTheaterName() {
		return theaterName;
	}

	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
	}

	public String getHallName() {
		return hallName;
	}

	public void setHallName(String hallName) {
		this.hallName = hallName;
	}

	public List<SeatpriceVo> getSeatpriceList() {
		return seatpriceList;
	}

	public void setSeatpriceList(List<SeatpriceVo> seatpriceList) {
		this.seatpriceList = seatpriceList;
	}

	public List<DiscountVo> getProductDisList() {
		return productDisList;
	}

	public void setProductDisList(List<DiscountVo> productDisList) {
		this.productDisList = productDisList;
	}

	public int getDetailNo() {
		return detailNo;
	}

	public void setDetailNo(int detailNo) {
		this.detailNo = detailNo;
	}
	
	public String getDcName() {
		return dcName;
	}

	public void setDcName(String dcName) {
		this.dcName = dcName;
	}

	public String getDcRate() {
		return dcRate;
	}

	public void setDcRate(String dcRate) {
		this.dcRate = dcRate;
	}

	public String getSeatpriceNo() {
		return seatpriceNo;
	}

	public void setSeatpriceNo(String seatpriceNo) {
		this.seatpriceNo = seatpriceNo;
	}
	//생성자

	@Override
	public String toString() {
		return "ProductVo [prodNo=" + prodNo + ", userNo=" + userNo + ", hallNo=" + hallNo + ", prodName=" + prodName
				+ ", prodType=" + prodType + ", beginShow=" + beginShow + ", endShow=" + endShow + ", beginRez="
				+ beginRez + ", endRez=" + endRez + ", showTime=" + showTime + ", viewTime=" + viewTime + ", viewGrade="
				+ viewGrade + ", notice=" + notice + ", cancelInfo=" + cancelInfo + ", status=" + status
				+ ", posterPath=" + posterPath + ", theaterName=" + theaterName + ", hallName=" + hallName
				+ ", seatpriceList=" + seatpriceList + ", productDisList=" + productDisList + ", detailNo=" + detailNo
				+ ", seatpriceNo=" + seatpriceNo + ", dcName=" + dcName + ", dcRate=" + dcRate + "]";
	}


}
