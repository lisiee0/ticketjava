package com.ticketjava.vo;

public class DetailVo {

	// 생성자
	private int detailNo;
	private int prodNo;
	private String prodPath;
	private String castingPath;
	private String addedPath;

	// 필드
	public DetailVo() {
	}


	// 업로드 필드
	public DetailVo(String prodPath, String castingPath, String addedPath) {
		super();
		this.prodPath = prodPath;
		this.castingPath = castingPath;
		this.addedPath = addedPath;
	}
	

	// 일반 필드
	public DetailVo(int detailNo, int prodNo, String prodPath, String castingPath, String addedPath) {
		this.detailNo = detailNo;
		this.prodNo = prodNo;
		this.prodPath = prodPath;
		this.castingPath = castingPath;
		this.addedPath = addedPath;
	}

	// 메소드
	public int getDetailNo() {
		return detailNo;
	}


	public void setDetailNo(int detailNo) {
		this.detailNo = detailNo;
	}


	public int getProdNo() {
		return prodNo;
	}


	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}


	public String getProdPath() {
		return prodPath;
	}


	public void setProdPath(String prodPath) {
		this.prodPath = prodPath;
	}


	public String getCastingPath() {
		return castingPath;
	}


	public void setCastingPath(String castingPath) {
		this.castingPath = castingPath;
	}


	public String getAddedPath() {
		return addedPath;
	}


	public void setAddedPath(String addedPath) {
		this.addedPath = addedPath;
	}


	// 메소드 일반
	@Override
	public String toString() {
		return "DetailVo [detailNo=" + detailNo + ", prodNo=" + prodNo + ", prodPath=" + prodPath + ", castingPath="
				+ castingPath + ", addedPath=" + addedPath + "]";
	}


}
