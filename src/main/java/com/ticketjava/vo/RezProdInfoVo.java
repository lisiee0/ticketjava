package com.ticketjava.vo;

public class RezProdInfoVo {

	private String prodName;
	private String place;
	private String showTime;
	private String posterPath;

	public RezProdInfoVo() {
	}

	public RezProdInfoVo(String prodName, String place, String showTime, String posterPath) {
		this.prodName = prodName;
		this.place = place;
		this.showTime = showTime;
		this.posterPath = posterPath;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getShowTime() {
		return showTime;
	}

	public void setShowTime(String showTime) {
		this.showTime = showTime;
	}

	public String getPosterPath() {
		return posterPath;
	}

	public void setPosterPath(String posterPath) {
		this.posterPath = posterPath;
	}

	@Override
	public String toString() {
		return "RezProdInfoVo [prodName=" + prodName + ", place=" + place + ", showTime=" + showTime + ", posterPath="
				+ posterPath + "]";
	}

}
