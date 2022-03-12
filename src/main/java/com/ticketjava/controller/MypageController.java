package com.ticketjava.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ticketjava.service.ReservationService;
import com.ticketjava.vo.ReserveDetailVo;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	@Autowired
	private ReservationService reservationService;
	
	
//	마이페이지 예매내역
	@RequestMapping("/reserveList")
	public String reserveList(Model model, @RequestParam(value="userNo") int userNo) {
		System.out.println("MypageController reserveList 예매내역");
		
		List<ReserveDetailVo> reserveList = reservationService.getReserveList(userNo);
		
		model.addAttribute("reserveList",reserveList);
		
		return "mypage/reserveList";
	} 
	
	
//	예매 상세페이지
	@RequestMapping("/reserveDetail")
	public String reserveDetail(Model model,@RequestParam("rezNo") int rezNo, @RequestParam("userNo") int userNo) {
		System.out.println("MypageController reserveDetail 예매 상세페이지");
        
//		List<ReserveDetailVo> reserveDetail = mypageService.getReserveDetail();
		
//		DS에서 리스트 데이터 공유하는 model
//		model.addAttribute("reserveDetail",reserveDetail);
//		System.out.println("컨트롤러 reserveDetail "+reserveDetail);
		return "mypage/reserveDetail";
	}
	
	
//	마이페이지 문의내역
	@RequestMapping("/reserveAsking")
	public String asking() {
		System.out.println("MypageController reserveAsking 문의내역");
		return "mypage/reserveAsking";
	}
	
	
//	마이페이지 취소 티켓알람 내역
	@RequestMapping("/reserveAlram")
	public String ticketAlram() {
		System.out.println("MypageController reserveAlram 취소 티켓알람 내역");
		return "mypage/reserveAlram";
	}
	
//	마이페이지 취소 티켓알람 설정
	@RequestMapping("/reserveAlramSet")
	public String reserveAlramSet() {
		System.out.println("MypageController reserveAlramSet 취소 티켓알람 설정");
		return "mypage/reserveAlramSet";
	}	
	
	
//	마이페이지 예매내역 및 취소 
	@RequestMapping("/reserveAndCancel")
	public String ticketingAndCancel() {
		System.out.println("MypageController reserveAndCancel 예매내역 및 취소");
		return "mypage/reserveAndCancel";
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
