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
		
		System.out.println("MypageDao reserveList "+reserveList);
		return reserveList;
	}
	

	
	
} // The end of MypageDao
