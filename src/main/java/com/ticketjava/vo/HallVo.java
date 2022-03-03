package com.ticketjava.vo;

public class HallVo {
	
	private int hallNo;
	private String hallName;
	
	
	public HallVo() {
		
	}
	
	public HallVo(int hallNo, String hallName) {
		this.hallNo = hallNo;
		this.hallName = hallName;
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

	
	@Override
	public String toString() {
		return "HallVo [hallNo=" + hallNo + ", hallName=" + hallName + "]";
	}

}
