package com.ticketjava.vo;

public class SeatpriceVo {
	
	//필드
	private int seatpriceNo;
	private int grade;
	private int price;

	//생성자
	public SeatpriceVo(int seatpriceNo, int grade, int price) {
		this.seatpriceNo = seatpriceNo;
		this.grade = grade;
		this.price = price;
	}

	//메소드gs
	public int getSeatpriceNo() {
		return seatpriceNo;
	}

	public void setSeatpriceNo(int seatpriceNo) {
		this.seatpriceNo = seatpriceNo;
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
	
	//메소드
	@Override
	public String toString() {
		return "SeatpriceVo [seatpriceNo=" + seatpriceNo + ", grade=" + grade + ", price=" + price + "]";
	}
	

}
