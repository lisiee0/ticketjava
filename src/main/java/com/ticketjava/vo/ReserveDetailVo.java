package com.ticketjava.vo;

public class ReserveDetailVo {

//	예매정보 상세용
	private int userNo; //회원번호
	private int rezNo; // 예매번호
	private int prodNo; // 공연번호
	private int theaterNo; // 공연장번호
	private int selseatNo; // 선택좌석번호
	private String grade; // 좌석등급 1vip 2r 3s 4a 5b
	private int payment; // 결제금액 
	private int status; //상태 예매취소(1예매 0취소)
	private int ticketCount; // 매수 (카운트 (예매번호) 그룹바이 회원번호) 

	private String name; // 이름 (예매자) 
	private String prodname; //공연명 상품명 
	private String theatername; // 장소 (예술의전당 오페라극장)
	private String hallname; // 시설 (1관 2관)
	private String rezdate; // 예매일
	private String viewdate; // 관람일
	
	private int section; // selseat 구역 
	private int col; // 열 (a열)
	private int num; // 번호 (3번자리)
	
	
	public ReserveDetailVo() {
	}
	
	
	public ReserveDetailVo(int userNo, int rezNo, int prodNo, int theaterNo, int selseatNo, String grade, int payment,
			int status, int ticketCount, String name, String prodname, String theatername, String hallname,
			String rezdate, String viewdate, int section, int col, int num) {
		this.userNo = userNo;
		this.rezNo = rezNo;
		this.prodNo = prodNo;
		this.theaterNo = theaterNo;
		this.selseatNo = selseatNo;
		this.grade = grade;
		this.payment = payment;
		this.status = status;
		this.ticketCount = ticketCount;
		this.name = name;
		this.prodname = prodname;
		this.theatername = theatername;
		this.hallname = hallname;
		this.rezdate = rezdate;
		this.viewdate = viewdate;
		this.section = section;
		this.col = col;
		this.num = num;
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
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
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
	public String getHallname() {
		return hallname;
	}
	public void setHallname(String hallname) {
		this.hallname = hallname;
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
	public int getSection() {
		return section;
	}
	public void setSection(int section) {
		this.section = section;
	}
	public int getCol() {
		return col;
	}
	public void setCol(int col) {
		this.col = col;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
	
	@Override
	public String toString() {
		return "ReserveDetailVo [userNo=" + userNo + ", rezNo=" + rezNo + ", prodNo=" + prodNo + ", theaterNo="
				+ theaterNo + ", selseatNo=" + selseatNo + ", grade=" + grade + ", payment=" + payment + ", status="
				+ status + ", ticketCount=" + ticketCount + ", name=" + name + ", prodname=" + prodname
				+ ", theatername=" + theatername + ", hallname=" + hallname + ", rezdate=" + rezdate + ", viewdate="
				+ viewdate + ", section=" + section + ", col=" + col + ", num=" + num + "]";
	}
	
		
	
	
} // The end of ReserveDetailVo
