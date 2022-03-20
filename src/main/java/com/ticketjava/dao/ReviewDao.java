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
	
//	리뷰 리스트 마이페이지용
	public List<ReviewVo> getReviewListMypage(int userNo) {
		System.out.println("ReviewDao getReviewListMypage");
		
		List<ReviewVo> reviewListMypage = sqlSession.selectList("review.reviewMypageList", userNo);
		
		return reviewListMypage;
	}

	
//	리뷰 삭제 마이페이지
	public void userReviewDelete(int reviewNo) {
		sqlSession.delete("review.deleteReview", reviewNo);
	}
	
	
//	리뷰 리스트 product
	public List<ReviewVo> getReviewListProduct(int prodNo) {
		System.out.println("ReviewDao getReviewListProduct");
		List<ReviewVo> reviewListProduct = sqlSession.selectList("review.reviewProductList", prodNo);
		return reviewListProduct;
	}
	
//	리뷰저장
	public void writeReview(ReviewVo reviewVo) {
		sqlSession.insert("review.insertReview", reviewVo);
	}
	
//	리뷰 하나만 가져오기
	public ReviewVo getOneReview(ReviewVo reviewVo) {
		return sqlSession.selectOne("review.getOneReview", reviewVo);
	}
	
	
} // The end of ReservationDao
