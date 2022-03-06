package com.ticketjava.vo;

public class SeatpriceVo {

	// 필드
	private int seatpriceNo;
	private int prodNo;
	private String grade;
	private int price;

	public SeatpriceVo() {
	}

	public SeatpriceVo(int seatpriceNo, int prodNo, String grade, int price) {
		this.seatpriceNo = seatpriceNo;
		this.prodNo = prodNo;
		this.grade = grade;
		this.price = price;
	}

	public int getSeatpriceNo() {
		return seatpriceNo;
	}

	public void setSeatpriceNo(int seatpriceNo) {
		this.seatpriceNo = seatpriceNo;
	}

	public int getProdNo() {
		return prodNo;
	}

	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
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

	@Override
	public String toString() {
		return "SeatpriceVo [seatpriceNo=" + seatpriceNo + ", prodNo=" + prodNo + ", grade=" + grade + ", price="
				+ price + "]";
	}

}
