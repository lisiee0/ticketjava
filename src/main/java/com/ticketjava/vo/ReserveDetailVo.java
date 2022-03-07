package com.ticketjava.vo;

public class ReserveDetailVo {

//	예매정보 상세용
	private int userNo; //회원번호
	private int rezNo; // 예매번호
	private int prodNo; // 공연번호
	private int theaterNo; // 공연장번호
	private int selseatNo; // 선택좌석번호
	private int grade; // 좌석등급 1vip 2r 3s 4a 5b
	private int price; // 좌석 가격 
	private int status; //상태 예매취소(1예매 0취소)
	private int ticketCount; // 매수 (카운트 (예매번호) 그룹바이 회원번호) 

	private String name; // 이름 (예매자) 
	private String prodname; //공연명 상품명 
	private String theatername; // 장소 (예술의전당 오페라극장)
	private String rezdate; // 예매일
	private String viewdate; // 관람일

	
	public ReserveDetailVo() {
	}
	
	
	public ReserveDetailVo(int userNo, int rezNo, int prodNo, int theaterNo, int selseatNo, int grade, int price,
			int status, int ticketCount, String name, String prodname, String theatername, String rezdate,
			String viewdate) {
		this.userNo = userNo;
		this.rezNo = rezNo;
		this.prodNo = prodNo;
		this.theaterNo = theaterNo;
		this.selseatNo = selseatNo;
		this.grade = grade;
		this.price = price;
		this.status = status;
		this.ticketCount = ticketCount;
		this.name = name;
		this.prodname = prodname;
		this.theatername = theatername;
		this.rezdate = rezdate;
		this.viewdate = viewdate;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getRezNo() {
		return rezNo;
	}
	public void setRezNo(int rezNo) {
		this.rezNo = rezNo;
	}
	public int getProdNo() {
		return prodNo;
	}
	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}
	public int getTheaterNo() {
		return theaterNo;
	}
	public void setTheaterNo(int theaterNo) {
		this.theaterNo = theaterNo;
	}
	public int getSelseatNo() {
		return selseatNo;
	}
	public void setSelseatNo(int selseatNo) {
		this.selseatNo = selseatNo;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getTicketCount() {
		return ticketCount;
	}
	public void setTicketCount(int ticketCount) {
		this.ticketCount = ticketCount;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getProdname() {
		return prodname;
	}
	public void setProdname(String prodname) {
		this.prodname = prodname;
	}
	public String getTheatername() {
		return theatername;
	}
	public void setTheatername(String theatername) {
		this.theatername = theatername;
	}
	public String getRezdate() {
		return rezdate;
	}
	public void setRezdate(String rezdate) {
		this.rezdate = rezdate;
	}
	public String getViewdate() {
		return viewdate;
	}
	public void setViewdate(String viewdate) {
		this.viewdate = viewdate;
	}
	
	
	@Override
	public String toString() {
		return "ReserveDetailVo [userNo=" + userNo + ", rezNo=" + rezNo + ", prodNo=" + prodNo + ", theaterNo="
				+ theaterNo + ", selseatNo=" + selseatNo + ", grade=" + grade + ", price=" + price + ", status="
				+ status + ", ticketCount=" + ticketCount + ", name=" + name + ", prodname=" + prodname
				+ ", theatername=" + theatername + ", rezdate=" + rezdate + ", viewdate=" + viewdate + "]";
	}
	
		
	
	
} // The end of ReserveDetailVo
