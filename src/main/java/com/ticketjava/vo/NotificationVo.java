package com.ticketjava.vo;

public class NotificationVo {

	private int notiNo;
	private int userNo;
	private String content;
	private String notiTime;

	public NotificationVo() {
	}

	public NotificationVo(int notiNo, int userNo, String content, String notiTime) {
		this.notiNo = notiNo;
		this.userNo = userNo;
		this.content = content;
		this.notiTime = notiTime;
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

	@Override
	public String toString() {
		return "NotificationVo [notiNo=" + notiNo + ", userNo=" + userNo + ", content=" + content + ", notiTime="
				+ notiTime + "]";
	}

}
