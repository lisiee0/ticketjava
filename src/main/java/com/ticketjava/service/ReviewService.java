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

	
	//	마이페이지 예매 리스트
	public List<ReviewVo> getReviewListMypage (int userNo) {
		System.out.println("ReviewService getReviewList");
		return reviewDao.getReviewListMypage(userNo);
	}
	
	
	
	
	
} // The end of ReservationService
