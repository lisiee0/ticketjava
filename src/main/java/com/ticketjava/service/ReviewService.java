package com.ticketjava.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.ReviewDao;
import com.ticketjava.vo.ReviewVo;

@Service
public class ReviewService {

	@Autowired
	private ReviewDao reviewDao;

	// 리뷰 리스트 마이페이지 List<ReviewVo>
	public Map<String, Object> getReviewListMypage(int crtPage, int userNo) {
		System.out.println("ReviewService getReviewList");


//		#리스트 가져오기
		
//		페이지 당 글 갯수 10개
		int listCnt = 12;
		
//		현재페이지 처리 if문 방식
		if (crtPage <= 0) { // 마이너스 페이지 입력이 들어오면 그냥 1페이지로 간다
			crtPage = 1;
		}
		
//		현재페이지 처리 삼항연산자 방식 간단한if문 (위와 같은 동작)
//		crtPage = 조건(crtPage>0) ? 참crtPage : 거짓(crtPage=1);  
		
//		시작글 번호 
		int startRnum = (crtPage-1) * listCnt + 1 ; // 1페이지라면1 6페이지라면51 
				
//		끝글 번호
		int endRnum = (startRnum + listCnt) - 1 ; // 1이면 11-1 = 10
		
		List<ReviewVo> reviewList = reviewDao.getReviewListMypagePaging(startRnum, endRnum);
		
//		#페이징 버튼
		int totalCnt = reviewDao.selectTotal();
//		System.out.println("BoardService.totalCnt 출력 "+totalCnt);
		
//		페이지당 버튼 갯수
		int pageBtnCount = 5;
		
		/*
		마지막 버튼 번호 구하기
		1 1~5 0.2 올림 처리 1
		2 1~5 0.4
		3 1~5 0.6
		4 1~5 1
		5 1~5 1.2
		6 6~10
		10 6~10
		11 11~15
		 */
//		마지막 페이지 버튼 번호
		int endPageBtnNo = (int)( Math.ceil(crtPage/(double)pageBtnCount) )*pageBtnCount; // 나눈값의 올림처리 
		
//		시작 버튼 번호
		int startPageBtnNo = endPageBtnNo - (pageBtnCount-1) ; // 끝번호가5면 --> 5-(5-4)=1 
		
//		다음 화살표 출력 유무
		boolean next = false;
		if( endPageBtnNo * listCnt < totalCnt ) {
			next = true;
		} else { // 다음 화살표가 없으면 마지막 버튼값을 다시 계산한다 없는 페이지 출력안함
			endPageBtnNo = (int)Math.ceil(totalCnt/(double)listCnt); // 정수와 double실수형 계산해서 나오는 소숫점을 올림처리  
		};
		
//		이전 화살표 출력 유무
		boolean prev = false;
		if ( startPageBtnNo != 1) {
			prev = true;
		};
		
		Map<String, Object> rMap = new HashMap<String, Object>();
		rMap.put("vo", reviewDao.getReviewListMypage(userNo));
		rMap.put("prev", prev);
		rMap.put("next", next);
		rMap.put("startPageBtnNo", startPageBtnNo);
		rMap.put("endPageBtnNo", endPageBtnNo);
		rMap.put("pageBtnCount", pageBtnCount);
		rMap.put("reviewList", reviewList);
		
		System.out.println("리뷰 r맵 출력 "+rMap);
//		return reviewDao.getReviewListMypage(userNo);
		return rMap;

	}

	// 마이페이지 리뷰 삭제
	public void userReviewDelete(int reviewNo) {
		reviewDao.userReviewDelete(reviewNo);
	}

	// 리뷰 리스트 product
	public List<ReviewVo> getReviewListProduct(int prodNo) {
		return reviewDao.getReviewListProduct(prodNo);
	}

	public void writeReview(ReviewVo reviewVo) {
		reviewDao.writeReview(reviewVo);
		System.out.println("리뷰 서비스 reviewVo " + reviewVo);
	}

	public ReviewVo getOneReview(ReviewVo reviewVo) {
		return reviewDao.getOneReview(reviewVo);
	}

} // The end of ReservationService
