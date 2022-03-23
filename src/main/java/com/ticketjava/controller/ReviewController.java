package com.ticketjava.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ticketjava.service.ReviewService;
import com.ticketjava.vo.ReviewVo;
import com.ticketjava.vo.UserVo;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	@ResponseBody
	@RequestMapping("/listofReview")
	public String writeReview(@RequestParam("prodNo") int prodNo, Model model, HttpSession session, @ModelAttribute UserVo userVo) {

//		리뷰 리스트를 가져오기 - product 컨트롤러 중복
//		List<ReviewVo> reviewList = reviewService.getReviewListProduct(prodNo);
//		model.addAttribute("reviewList",reviewList);
		
		
//		리뷰 작성용 userNo를 가져오기 
		int userNo = ((UserVo)session.getAttribute("authUser")).getUserNo();
		System.out.println("userNo 확인 "+userNo);
		
		return "";
	}
	
	
//	상품 상세보기 후기(리뷰) 작성
	@ResponseBody
	@RequestMapping("/writeReview")
	public ReviewVo writeReview (@ModelAttribute ReviewVo reviewVo) {
		System.out.println("프로덕컨트롤러 reviewVo "+reviewVo);
		
		reviewService.writeReview(reviewVo);
		
		System.out.println("프로덕컨트롤러 reviewVo "+reviewVo);
		
		//review 번호로 리뷰를 가져온다
		ReviewVo rVo = reviewService.getOneReview(reviewVo);
		System.out.println("컨트롤러 번호로 리뷰가져오기 reviewVo "+rVo);
	
		return rVo; 
	}
	
	
	
} // the end of ReviewController
