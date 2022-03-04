package com.ticketjava.vo;

public class SelseatVo {

	private int selseatNo;
	private int rezNo;
	private int dcNo;

	private int grade;
	private int section;
	private int col;
	private int num;
	
	private int payment;
	private int status;
	
	
	public SelseatVo() {
	}
	
	public SelseatVo(int selseatNo, int rezNo, int dcNo, int grade, int section, int col, int num, int payment,
			int status) {
		this.selseatNo = selseatNo;
		this.rezNo = rezNo;
		this.dcNo = dcNo;
		this.grade = grade;
		this.section = section;
		this.col = col;
		this.num = num;
		this.payment = payment;
		this.status = status;
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

	public int getDcNo() {
		return dcNo;
	}

	public void setDcNo(int dcNo) {
		this.dcNo = dcNo;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public int getSection() {
		return section;
	}

	public void setSection(int section) {
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

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "SelseatVo [selseatNo=" + selseatNo + ", rezNo=" + rezNo + ", dcNo=" + dcNo + ", grade=" + grade
				+ ", section=" + section + ", col=" + col + ", num=" + num + ", payment=" + payment + ", status="
				+ status + "]";
	}
	
	
	
	
	
}
