package com.ticketjava.vo;

public class ReservationVo {

	private int rezNo;
	private int prodNo;
	private int userNo;

	private String rezDate;
	private String viewDate;
	private String phone;
	private String email;
	private String status;
	private int ticketCount; // 예매 매수
	private String prodName;
	private int totalPayment;

	public ReservationVo() {
	}

	public ReservationVo(int rezNo, int prodNo, int userNo, String rezDate, String viewDate, String phone, String email,
			String status, int ticketCount, String prodName, int totalPayment) {
		this.rezNo = rezNo;
		this.prodNo = prodNo;
		this.userNo = userNo;
		this.rezDate = rezDate;
		this.viewDate = viewDate;
		this.phone = phone;
		this.email = email;
		this.status = status;
		this.ticketCount = ticketCount;
		this.prodName = prodName;
		this.totalPayment = totalPayment;
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

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getRezDate() {
		return rezDate;
	}

	public void setRezDate(String rezDate) {
		this.rezDate = rezDate;
	}

	public String getViewDate() {
		return viewDate;
	}

	public void setViewDate(String viewDate) {
		this.viewDate = viewDate;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getTicketCount() {
		return ticketCount;
	}

	public void setTicketCount(int ticketCount) {
		this.ticketCount = ticketCount;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public int getTotalPayment() {
		return totalPayment;
	}

	public void setTotalPayment(int totalPayment) {
		this.totalPayment = totalPayment;
	}

	@Override
	public String toString() {
		return "ReservationVo [rezNo=" + rezNo + ", prodNo=" + prodNo + ", userNo=" + userNo + ", rezDate=" + rezDate
				+ ", viewDate=" + viewDate + ", phone=" + phone + ", email=" + email + ", status=" + status
				+ ", ticketCount=" + ticketCount + ", prodName=" + prodName + ", totalPayment=" + totalPayment + "]";
	}

} // The end of ReservationVo
