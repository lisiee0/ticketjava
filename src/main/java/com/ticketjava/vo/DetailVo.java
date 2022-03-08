package com.ticketjava.vo;

public class DetailVo {

	// 필드
	private int detailNo; // 상세정보 번호

	private int prodNo; // 공연번호 FK

	private String prodPath; // 공연 정보
	private String castingPaht; // 캐스팅 정보
	private String addedPath; // 부가 정보

	// 생성자
	public DetailVo() {
	}

	public DetailVo(int detailNo, int prodNo, String prodPath, String castingPaht, String addedPath) {
		this.detailNo = detailNo;
		this.prodNo = prodNo;
		this.prodPath = prodPath;
		this.castingPaht = castingPaht;
		this.addedPath = addedPath;
	}

	// 생성자
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

	public String getCastingPaht() {
		return castingPaht;
	}

	public void setCastingPaht(String castingPaht) {
		this.castingPaht = castingPaht;
	}

	public String getAddedPath() {
		return addedPath;
	}

	public void setAddedPath(String addedPath) {
		this.addedPath = addedPath;
	}

	// 생성자
	@Override
	public String toString() {
		return "BusinessDetailVo [detailNo=" + detailNo + ", prodNo=" + prodNo + ", prodPath=" + prodPath
				+ ", castingPaht=" + castingPaht + ", addedPath=" + addedPath + "]";
	}

}
