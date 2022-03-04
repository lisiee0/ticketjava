package com.ticketjava.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	
//	마이페이지 예매내역
	@RequestMapping("/ticketingList")
	public String ticketingList() {
		System.out.println("MypageController ticketingList");
		return "mypage/ticketingList";
	} // MypageController
	
	
//	마이페이지 문의내역
	@RequestMapping("/asking")
	public String asking() {
		System.out.println("MypageController asking");
		return "mypage/asking";
	}
	
//	마이페이지 티켓알람
	@RequestMapping("/ticketAlram")
	public String ticketAlram() {
		System.out.println("MypageController ticketAlram");
		return "mypage/ticketAlram";
	}
	
//	티케팅 
	@RequestMapping("/ticketingAndCancel")
	public String ticketingAndCancel() {
		System.out.println("MypageController ticketingAndCancel");
		return "mypage/ticketingAndCancel";
	}
	
//	예매 상세페이지
	@RequestMapping("/ticketingDetail")
	public String ticketingDetail() {
		System.out.println("MypageController ticketingDetail");
		return "mypage/ticketingDetail";
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
