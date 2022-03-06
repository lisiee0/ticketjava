package com.ticketjava.vo;

public class ReserveDetailVo {

//	예매정보 상세용
	
	private int user_no; //회원번호
	private int rez_no; // 예매번호
	private int prod_no; // 공연번호
	private int theater_no; // 공연장번호
	private int selseat_no; // 선택좌석번호
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
	
	
	public ReserveDetailVo(int user_no, int rez_no, int prod_no, int theater_no, int selseat_no, int grade, int price,
			int status, int ticketCount, String name, String prodname, String theatername, String rezdate,
			String viewdate) {
		this.user_no = user_no;
		this.rez_no = rez_no;
		this.prod_no = prod_no;
		this.theater_no = theater_no;
		this.selseat_no = selseat_no;
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
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public int getRez_no() {
		return rez_no;
	}
	public void setRez_no(int rez_no) {
		this.rez_no = rez_no;
	}
	public int getProd_no() {
		return prod_no;
	}
	public void setProd_no(int prod_no) {
		this.prod_no = prod_no;
	}
	public int getTheater_no() {
		return theater_no;
	}
	public void setTheater_no(int theater_no) {
		this.theater_no = theater_no;
	}
	public int getSelseat_no() {
		return selseat_no;
	}
	public void setSelseat_no(int selseat_no) {
		this.selseat_no = selseat_no;
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
		return "ReserveDetailVo [user_no=" + user_no + ", rez_no=" + rez_no + ", prod_no=" + prod_no + ", theater_no="
				+ theater_no + ", selseat_no=" + selseat_no + ", grade=" + grade + ", price=" + price + ", status="
				+ status + ", ticketCount=" + ticketCount + ", name=" + name + ", prodname=" + prodname
				+ ", theatername=" + theatername + ", rezdate=" + rezdate + ", viewdate=" + viewdate + "]";
	}
	
	
	
	
} // The end of ReserveDetailVo
