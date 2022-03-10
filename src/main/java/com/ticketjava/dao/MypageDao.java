package com.ticketjava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.ReserveDetailVo;

@Repository
public class MypageDao {
	
	@Autowired
	private SqlSession sqlSession;
	
//	예매 취소내역 가져오기
	public List<ReserveDetailVo> getReserveList() {
		System.out.println("MypageDao getReserveList");
		
		List<ReserveDetailVo> reserveList = sqlSession.selectList("mypage.reserveList");
		
		return reserveList;
	}
	

//	예매내역 상세보기 
	public List<ReserveDetailVo> getReserveDetail() {
		System.out.println("MypageDao getReserveDetail 예매 상세내역보기");
		
		List<ReserveDetailVo> reserveDetail = sqlSession.selectList("mypage.reserveDetail");
		
		System.out.println("MypageDao reserveList "+reserveDetail);
		return reserveDetail;
	}
	
} // The end of MypageDao
