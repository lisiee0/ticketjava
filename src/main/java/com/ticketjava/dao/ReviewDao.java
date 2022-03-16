package com.ticketjava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.ReviewVo;

@Repository
public class ReviewDao {

	@Autowired
	private SqlSession sqlSession;
	
	
	public List<ReviewVo> getReviewListMypage(int userNo) {
		System.out.println("ReviewDao getReviewListMypage");
		
		List<ReviewVo> reviewListMypage = sqlSession.selectList("review.reviewMypageList", userNo);
		
		return reviewListMypage;
	}

	

	
} // The end of ReservationDao
