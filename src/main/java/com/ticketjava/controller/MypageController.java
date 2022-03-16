package com.ticketjava.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ticketjava.service.NotificationService;
import com.ticketjava.service.NotireqService;
import com.ticketjava.service.ReservationService;
import com.ticketjava.service.ReviewService;
import com.ticketjava.vo.NotificationVo;
import com.ticketjava.vo.NotireqVo;
import com.ticketjava.vo.ReserveDetailVo;
import com.ticketjava.vo.ReviewVo;
import com.ticketjava.vo.UserVo;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	@Autowired
	private ReservationService reservationService;
	
	@Autowired
	private NotireqService notireqService;
	
	@Autowired
	private NotificationService notificationService;
	
	@Autowired
	private ReviewService reviewService;
	
//	마이페이지 예매내역
	@RequestMapping("/reserveList")
	public String reserveList(Model model, HttpSession session) {
		System.out.println("MypageController reserveList 예매내역");
		
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		int userNo = authUser.getUserNo();
		List<ReserveDetailVo> reserveList = reservationService.getReserveList(userNo);
		
		model.addAttribute("reserveList",reserveList);
		
		return "mypage/reserveList";
	} 
	
	
//	예매 상세페이지
	@RequestMapping("/reserveDetail")
	public String reserveDetail(Model model,@RequestParam(value="rezNo") int rezNo) {
		System.out.println("MypageController reserveDetail 예매 상세페이지");
		
		Map<String, Object> rMap = reservationService.getReserveDetail(rezNo);
		
		model.addAttribute("rMap", rMap);
		System.out.println("rMap 컨트롤러"+rMap);
		
		return "mypage/reserveDetail";
	}
	
	
//	예매 좌석 부분 취소
//	@ResponseBody json 사용하기
	@RequestMapping("/requestCancelTicket")
	public String requestCancelTicket(Model model,@RequestParam(value="selseatNo") int selseatNo, @RequestParam(value="rezNo") int rezNo) {
		System.out.println("MypageController reserveSeatCancel 예매 좌석 삭제 실행");
		
		reservationService.deleteReserveSeat(selseatNo);
		System.out.println("컨트롤러 selseatNo "+selseatNo);
		return "redirect:/mypage/reserveList";
	}
	
	

	
//	마이페이지 문의내역
	@RequestMapping("/reserveAsking")
	public String asking() {
		System.out.println("MypageController reserveAsking 문의내역");
		return "mypage/reserveAsking";
	}
	
	
//	마이페이지 취소 티켓알람 내역
	@RequestMapping("/reserveAlram")
	public String ticketAlram(HttpSession session,
							  Model model) {
		List<NotificationVo> notiList = notificationService.myNoti(session);
		System.out.println(notiList);
		model.addAttribute("notiList",notiList);
		return "mypage/reserveAlram";
	}
	
//	마이페이지 취소 티켓알람 설정
	@RequestMapping("/reserveAlramSet")
	public String reserveAlramSet(HttpSession session,
			Model model) {
	List<NotireqVo> reqList = notireqService.myReqList(session);
	 
	System.out.println("myReqList");
	System.out.println(reqList);
	model.addAttribute("reqList", reqList);
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
	public String getReviewListMypage(Model model, HttpSession session) {
		System.out.println("MypageController userReview");
		
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		int userNo = authUser.getUserNo();
		List<ReviewVo> reviewList = reviewService.getReviewListMypage(userNo);
		
		model.addAttribute("reviewList",reviewList);
		
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
