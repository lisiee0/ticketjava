package com.ticketjava.vo;

public class HallVo {
	
	private int hallNo;
	private String hallName;
	private int theaterNo;
	private String theaterName;
	private String postCode;
	private String address;
	private String address2;
	private String phone;
	private String homePage;
	private String logoPath;
	

	public HallVo() {
		
	}


	public HallVo(int hallNo, String hallName, int theaterNo, String theaterName, String postCode, String address,
			String address2, String phone, String homePage, String logoPath) {
		this.hallNo = hallNo;
		this.hallName = hallName;
		this.theaterNo = theaterNo;
		this.theaterName = theaterName;
		this.postCode = postCode;
		this.address = address;
		this.address2 = address2;
		this.phone = phone;
		this.homePage = homePage;
		this.logoPath = logoPath;
	}


	public int getHallNo() {
		return hallNo;
	}


	public void setHallNo(int hallNo) {
		this.hallNo = hallNo;
	}


	public String getHallName() {
		return hallName;
	}


	public void setHallName(String hallName) {
		this.hallName = hallName;
	}


	public int getTheaterNo() {
		return theaterNo;
	}


	public void setTheaterNo(int theaterNo) {
		this.theaterNo = theaterNo;
	}


	public String getTheaterName() {
		return theaterName;
	}


	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
	}


	public String getPostCode() {
		return postCode;
	}


	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getAddress2() {
		return address2;
	}


	public void setAddress2(String address2) {
		this.address2 = address2;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getHomePage() {
		return homePage;
	}


	public void setHomePage(String homePage) {
		this.homePage = homePage;
	}


	public String getLogoPath() {
		return logoPath;
	}


	public void setLogoPath(String logoPath) {
		this.logoPath = logoPath;
	}


	@Override
	public String toString() {
		return "HallVo [hallNo=" + hallNo + ", hallName=" + hallName + ", theaterNo=" + theaterNo + ", theaterName="
				+ theaterName + ", postCode=" + postCode + ", address=" + address + ", address2=" + address2
				+ ", phone=" + phone + ", homePage=" + homePage + ", logoPath=" + logoPath + "]";
	}

	
	

}
