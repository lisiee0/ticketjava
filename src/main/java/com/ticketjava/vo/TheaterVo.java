package com.ticketjava.vo;

public class TheaterVo {
	
	private int theaterNo;
	private String theaterName;
	private String postCode;
	private String address;
	private String address2;
	private String latitude;
	private String longitude;
	private String phone;
	private String homePage;
	private String logoPath;
	private String hallName;
	
	public TheaterVo() {
		
	}
	
	public TheaterVo(int theaterNo, String theaterName, String postCode, String address, String address2, String latitude,
			String longitude, String phone, String homePage, String logoPath, String hallName) {
		this.theaterNo = theaterNo;
		this.theaterName = theaterName;
		this.postCode = postCode;
		this.address = address;
		this.address2 = address2;
		this.latitude = latitude;
		this.longitude = longitude;
		this.phone = phone;
		this.homePage = homePage;
		this.logoPath = logoPath;
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

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
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

	public String getHallName() {
		return hallName;
	}

	public void setHallName(String hallName) {
		this.hallName = hallName;
	}

	
	@Override
	public String toString() {
		return "AdminVo [theaterNo=" + theaterNo + ", theaterName=" + theaterName + ", postCode=" + postCode
				+ ", address=" + address + ", address2=" + address2 + ", latitude=" + latitude + ", longitude="
				+ longitude + ", phone=" + phone + ", homePage=" + homePage + ", logoPath=" + logoPath + ", hallName="
				+ hallName + "]";
	}
	
}
