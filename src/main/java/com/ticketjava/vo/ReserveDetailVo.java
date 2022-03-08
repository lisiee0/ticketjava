package com.ticketjava.vo;

public class ReserveDetailVo {

//	예매정보 상세용
	private int userNo; //회원번호
	private int rezNo; // 예매번호
	private int prodNo; // 공연번호
	private int theaterNo; // 공연장번호
	private int selseatNo; // 선택좌석번호
	private String grade; // 좌석등급 1vip 2r 3s 4a 5b
	private int payment; // 결제금액 
	private int status; //상태 예매취소(1예매 0취소)
	private int ticketCount; // 매수 (카운트 (예매번호) 그룹바이 회원번호) 

	private String name; // 이름 (예매자) 
	private String prodname; //공연명 상품명 
	private String theatername; // 장소 (예술의전당 오페라극장)
	private String hallname; // 시설 (1관 2관)
	private String rezdate; // 예매일
	private String viewdate; // 관람일
	
	private int section; // selseat 구역 
	private int col; // 열 (a열)
	private int num; // 번호 (3번자리)
	
		
	
	
} // The end of ReserveDetailVo
