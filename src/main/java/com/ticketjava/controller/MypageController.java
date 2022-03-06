package com.ticketjava.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	
//	마이페이지 예매내역
	@RequestMapping("/reserveList")
	public String ticketingList() {
		System.out.println("MypageController reserveList 예매내역");
		return "mypage/reserveList";
	} 
	
	
//	마이페이지 문의내역
	@RequestMapping("/reserveAsking")
	public String asking() {
		System.out.println("MypageController reserveAsking 문의내역");
		return "mypage/reserveAsking";
	}
	
	
//	마이페이지 취소 티켓알람
	@RequestMapping("/reserveAlram")
	public String ticketAlram() {
		System.out.println("MypageController reserveAlram 취소 티켓알람");
		return "mypage/reserveAlram";
	}
	
	
//	마이페이지 예매내역 및 취소 
	@RequestMapping("/reserveAndCancel")
	public String ticketingAndCancel() {
		System.out.println("MypageController reserveAndCancel 예매내역 및 취소");
		return "mypage/reserveAndCancel";
	}
	
	
//	예매 상세페이지
	@RequestMapping("/reserveDetail")
	public String ticketingDetail() {
		System.out.println("MypageController reserveDetail 예매 상세페이지");
		return "mypage/reserveDetail";
	}
	
	
//	후기 리뷰 관리
	@RequestMapping("/userReview")
	public String userReview() {
		System.out.println("MypageController userReview");
		return "mypage/userReview";
	}
	
	
//	회원정보 수정
	@RequestMapping("/userModify")
	public String userModify() {
		System.out.println("MypageControlller userModify");
		return "mypage/userModify";
	}
	
	
//	회원탈퇴
	@RequestMapping("/userOut")
	public String userOut() {
		System.out.println("MypageController userOut");
		return "mypage/userOut";
	}
	
	
} // The end of MypageController 
