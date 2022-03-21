package com.ticketjava.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.ReviewDao;
import com.ticketjava.vo.Paging;
import com.ticketjava.vo.ReviewVo;

@Service
public class ReviewService {

	@Autowired
	private ReviewDao reviewDao;

	
	/*
	 * // 리뷰 리스트 마이페이지 public Map<String, Object> getReviewListMypage (int crtPage,
	 * int userNo) { System.out.println("ReviewService getReviewList");
	 * 
	 * 
	 * int listCnt= 12; // 한 페이지당 글 개수 int startRnum= (crtPage-1)*listCnt +1; // 시작글
	 * 번호 int endRnum= (startRnum+listCnt) -1; // 마지막글 번호
	 * 
	 * Paging paging= new Paging(); paging.setPageNo(crtPage);
	 * paging.setPageSize(listCnt);
	 * paging.setTotalCount(reviewDao.allreviewCnt(no));
	 * 
	 * Map<String, Object> rMap= new HashMap<String, Object>(); rMap.put("vo",
	 * reviewDao.getReviewListMypage(userNo)); rMap.put("paging", paging);
	 * 
	 * // return reviewDao.getReviewListMypage(userNo); return rMap;
	 * 
	 * 
	 * }
	 */
	
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
	
	public ReviewVo getOneReview(ReviewVo reviewVo) {
		return reviewDao.getOneReview(reviewVo);
	}
	
	
} // The end of ReservationService
