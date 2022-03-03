package com.ticketjava.vo;

public class UserVo {

	private int userNo;
	private String id;
	private String password;
	private String name;
	private String phone;
	private String postcode;
	private String address;
	private String address2;
	private String email;
	private int usertype;
	private String joindate;
	private String bizno;
	private String salt;

	public UserVo() {
	}

	public UserVo(int userNo, String id, String password, String name, String phone, String postcode, String address,
			String address2, String email, int usertype, String joindate, String bizno, String salt) {
		this.userNo = userNo;
		this.id = id;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.postcode = postcode;
		this.address = address;
		this.address2 = address2;
		this.email = email;
		this.usertype = usertype;
		this.joindate = joindate;
		this.bizno = bizno;
		this.salt = salt;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getUsertype() {
		return usertype;
	}

	public void setUsertype(int usertype) {
		this.usertype = usertype;
	}

	public String getJoindate() {
		return joindate;
	}

	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}

	public String getBizno() {
		return bizno;
	}

	public void setBizno(String bizno) {
		this.bizno = bizno;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	@Override
	public String toString() {
		return "UserVo [userNo=" + userNo + ", id=" + id + ", password=" + password + ", name=" + name + ", phone="
				+ phone + ", postcode=" + postcode + ", address=" + address + ", address2=" + address2 + ", email="
				+ email + ", usertype=" + usertype + ", joindate=" + joindate + ", bizno=" + bizno + ", salt=" + salt
				+ "]";
	}

}
