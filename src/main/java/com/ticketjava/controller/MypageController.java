package com.ticketjava.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ticketjava.service.NotificationService;
import com.ticketjava.service.NotireqService;
import com.ticketjava.service.ReservationService;
import com.ticketjava.service.ReviewService;
import com.ticketjava.service.UserService;
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
	
	@Autowired
	private UserService userService;
	
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
	@RequestMapping("/requestCancelTicket")
	public String requestCancelTicket(Model model, @RequestParam("selseatNo") List<Integer> selseatNo) {
		System.out.println("MypageController reserveSeatCancel 예매 좌석 삭제 실행");

		reservationService.deleteReserveSeat(selseatNo);
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
		if(! userService.loginCheck(session)) {
			return "error/errorBack";
		}
		else {
			int userNo = ((UserVo)session.getAttribute("authUser")).getUserNo();
			List<NotificationVo> notiList = notificationService.myNoti(userNo);
			System.out.println(notiList);
			model.addAttribute("notiList",notiList);
			return "mypage/reserveAlram";
		}
	}
	
//	마이페이지 취소 티켓알람 설정
	@RequestMapping("/reserveAlramSet")
	public String reserveAlramSet(HttpSession session,
			Model model) {
		
		if(! userService.loginCheck(session)) {
			return "error/errorBack";
		}	
		else {
			int userNo = ((UserVo)session.getAttribute("authUser")).getUserNo();
			List<NotireqVo> reqList = notireqService.myReqList(userNo);

			model.addAttribute("reqList", reqList);
			return "mypage/reserveAlramSet";
		}
	}	
	
	
//	마이페이지 예매내역 및 취소 
	@RequestMapping("/reserveAndCancel")
	public String ticketingAndCancel() {
		System.out.println("MypageController reserveAndCancel 예매내역 및 취소");
		return "mypage/reserveAndCancel";
	}
	
//	후기 리뷰 관리 마이페이지 페이징
	@RequestMapping("/userReview")
	public String getReviewListMypage(@RequestParam(value="crtPage", required= false, defaultValue= "1") int crtPage, Model model, HttpSession session) {
		System.out.println("MypageController userReview");
		
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		int userNo = authUser.getUserNo();
		System.out.println(userNo);
		model.addAttribute("review", reviewService.getReviewListMypagePaging(crtPage, userNo));
		
		return "mypage/userReview";
	}
	
////	후기 리뷰 관리 for 마이페이지 페이징2
//	@RequestMapping("/userReview2")
//	public String getReviewListMypage2(@RequestParam(value="crtPage", required= false, defaultValue= "1") int crtPage, Model model, HttpSession session) {
//		System.out.println("MypageController userReview");
//		
//		UserVo authUser = (UserVo)session.getAttribute("authUser");
//		int userNo = authUser.getUserNo();
//		System.out.println("컨트롤러 userNo"+userNo);
//		Map<String, Object> rMap = reviewService.getReviewListMypagePaging(userNo, crtPage);
//		model.addAttribute("rMap", rMap);
//		
//		System.out.println("rMap "+rMap);
//		System.out.println("model "+model);
//		
////		System.out.println("컨트롤러 알맵 출력"+rMap);
//		
//		return "mypage/userReview";
//	}
	
	
//	리뷰 수정폼
	@RequestMapping("/userReviewModify")
	public String userReviewModify(@RequestParam("reviewNo") int reviewNo, Model model, @ModelAttribute ReviewVo reviewVo) {
		System.out.println("MypageControlller userReviewModify");
		
//		ReviewVo rVo = reviewService.getOneReview(reviewVo);
//		List<ReviewVo> reqList = reviewService.getOneReview(reviewVo);
		ReviewVo reviewList = reviewService.getOneReview(reviewVo);

		model.addAttribute("reviewList", reviewList);
		
//		return rVo;
		return "mypage/userReviewModify";
	}
	
//	리뷰 수정  
	@RequestMapping("/userReviewModifyAction")
	public String userReviewModifyAction (ReviewVo reviewVo, @RequestParam("reviewNo") int reviewNo,@RequestParam("rating") int rating,@RequestParam("content") String content) {
		System.out.println("MypageControlller userReviewModifyAction");
		
		reviewService.reviewModifyAction(reviewVo, reviewNo, rating, content);
		
		return "redirect:/mypage/userReview";
	}
	
//	리뷰 삭제
	@RequestMapping("/userReviewDelete")
	public String userReviewDelete(@RequestParam("reviewNo") int reviewNo) {
		System.out.println("MypageController userReviewDelete "+reviewNo);
		
		reviewService.userReviewDelete(reviewNo);
		return "redirect:/mypage/userReview";
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
