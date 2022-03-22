package com.ticketjava.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

//	리뷰 리스트 마이페이지 페이징
	public List<ReviewVo> getReviewListMypagePaging (int userNo, int crtPage, int startRnum, int endRnum) {
	System.out.println("ReviewDao 페이징");	
	
	Map<String, Integer> map = new HashMap<String, Integer>();
	map.put("startRnum", startRnum);
	map.put("endRnum", endRnum);
	map.put("userNo", userNo);
	map.put("crtPage", crtPage);
	
	List<ReviewVo> reviewList = sqlSession.selectList("review.getReviewListMypagePaging", map);
	System.out.println("ReviewDao reviewList 페이징 갯수 출력"+reviewList);
	
	return reviewList;
	
	}
	
//	전체 글 갯수 가져오기 페이징용
	public int selectTotal() {
		System.out.println("ReviewDao.selectTotal 실행");
		return sqlSession.selectOne("review.totalCnt"); 
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
	
	
	// 상품별 리뷰 총개수
	public int reviewCntbyprodNo(int prodNo) {
		return sqlSession.selectOne("review.reviewCntbyprodNo", prodNo);
	}
	
	// 상품별 리뷰 리스트 (페이징)
	public List<ReviewVo> pagingrList(int prodNo, int startRnum, int endRnum) {
		
		Map<String, Integer> map= new HashMap<String, Integer>();
		map.put("prodNo", prodNo);
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		return sqlSession.selectList("pagingrListbyprodNo", map);
	}
	
	public void userReviewModify (int reviewNo) {
		System.out.println("ReviewDao.userReviewModify 실행");
		sqlSession.update("review.ReviewUpdate", reviewNo);
	} 
	
	
} // The end of ReservationDao
