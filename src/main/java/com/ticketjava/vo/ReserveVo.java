package com.ticketjava.vo;

public class ReserveVo {
	
	private int user_no; //회원번호
	private int prod_no; // 공연번호
	private int rez_no; // 예매번호
	
	private String rezdate; // 예매일
	private String prodname; //공연명 상품명 
	private String viewdate; // 관람일
	private int ticketcount; // 매수 (카운트 (예매번호) 그룹바이 회원번호) 
	private int status; //상태 예매취소(1예매 0취소)
	
	// 예매정보 상세용
	private int selseat_no; // 선택좌석번호
	private int theater_no; // 공연장번호
	private String theatername; // 장소 (예술의전당 오페라극장)
	private String name; // 이름 (예매자) 
	private int grade; // 좌석등급 1vip 2r 3s 4a 5b
	private int price; // 좌석 가격 
	
	
}
