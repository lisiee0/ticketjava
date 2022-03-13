package com.ticketjava.vo;

public class NotiDataVo {

	// selseat
	private int selseatNo;
	private int rezNo;

	// reserve
	private String grade;
	private String section;
	private int col;
	private int num;

	// product
	private int prodNo;
	private String viewDate;
	private String prodName;

	private String showTime;

	public NotiDataVo() {
	}

	public NotiDataVo(int selseatNo, int rezNo, String grade, String section, int col, int num, int prodNo,
			String viewDate, String prodName, String showTime) {
		this.selseatNo = selseatNo;
		this.rezNo = rezNo;
		this.grade = grade;
		this.section = section;
		this.col = col;
		this.num = num;
		this.prodNo = prodNo;
		this.viewDate = viewDate;
		this.prodName = prodName;
		this.showTime = showTime;
	}


	public int getSelseatNo() {
		return selseatNo;
	}

	public void setSelseatNo(int selseatNo) {
		this.selseatNo = selseatNo;
	}

	public int getRezNo() {
		return rezNo;
	}

	public void setRezNo(int rezNo) {
		this.rezNo = rezNo;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public int getCol() {
		return col;
	}

	public void setCol(int col) {
		this.col = col;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getProdNo() {
		return prodNo;
	}

	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}

	public String getViewDate() {
		return viewDate;
	}

	public void setViewDate(String viewDate) {
		this.viewDate = viewDate;
	}

	public String getShowTime() {
		return showTime;
	}

	public void setShowTime(String showTime) {
		this.showTime = showTime;
	}

	
	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	@Override
	public String toString() {
		return "NotiDataVo [selseatNo=" + selseatNo + ", rezNo=" + rezNo + ", grade=" + grade + ", section=" + section
				+ ", col=" + col + ", num=" + num + ", prodNo=" + prodNo + ", viewDate=" + viewDate + ", prodName="
				+ prodName + ", showTime=" + showTime + "]";
	}

	

}
