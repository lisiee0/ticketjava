package com.ticketjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.ReviewDao;
import com.ticketjava.vo.ReviewVo;

@Service
public class ReviewService {

	@Autowired
	private ReviewDao reviewDao;

	
	//	리뷰 리스트 마이페이지 
	public List<ReviewVo> getReviewListMypage (int userNo) {
		System.out.println("ReviewService getReviewList");
		return reviewDao.getReviewListMypage(userNo);
	}
	
	// 마이페이지 리뷰 삭제
	public void userReviewDelete(int reviewNo) {
		reviewDao.userReviewDelete(reviewNo);
	}
	
	//	리뷰 리스트 product
	public List<ReviewVo> getReviewListProduct (int prodNo) {
		return reviewDao.getReviewListProduct(prodNo);
	}	
	
	public void writeReview(ReviewVo reviewVo) {
		reviewDao.writeReview(reviewVo);
		System.out.println("리뷰 서비스 reviewVo "+reviewVo);
	}
	
	
} // The end of ReservationService
