package com.ticketjava.vo;

public class NotificationVo {

	private int notiNo;
	private int userNo;
	private String content;
	private String notiTime;
	private int read;
	
	public NotificationVo() {
	}

	public NotificationVo(int notiNo, int userNo, String content, String notiTime, int read) {
		this.notiNo = notiNo;
		this.userNo = userNo;
		this.content = content;
		this.notiTime = notiTime;
		this.read = read;
	}

	public int getNotiNo() {
		return notiNo;
	}

	public void setNotiNo(int notiNo) {
		this.notiNo = notiNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getNotiTime() {
		return notiTime;
	}

	public void setNotiTime(String notiTime) {
		this.notiTime = notiTime;
	}

	public int getRead() {
		return read;
	}

	public void setRead(int read) {
		this.read = read;
	}

	
}
