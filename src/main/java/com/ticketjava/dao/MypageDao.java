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
	public ReserveDetailVo getReserveDetail(int userNo, int rezNo) {
		System.out.println("MypageDao getReserveDetail 예매 상세내역보기");
		
		return sqlSession.selectOne("mypage.reserveDetail");
	}
	
//	예매 좌석 리스트 
	public List<ReserveDetailVo> getReserveSeatList(int rezNo) {
		System.out.println("MypageDao getReserveSeat 예매 상세내역보기");
		
		List<ReserveDetailVo> reserveSeatList = sqlSession.selectList("mypage.reserveSeatList");
		
		System.out.println("MypageDao getReserveDetail "+reserveSeatList);
		return reserveSeatList;
	}
	
	
	
} // The end of MypageDao
