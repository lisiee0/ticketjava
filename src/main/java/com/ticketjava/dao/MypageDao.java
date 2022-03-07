package com.ticketjava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.ReservationVo;

@Repository
public class MypageDao {
	@Autowired
	private SqlSession sqlSession;
	
	
	public List<ReservationVo> getReserveList() {
		System.out.println("MypageDao getReserveList");
		List<ReservationVo> reserveList = sqlSession.selectList("mypage.reserveList");
		return reserveList;
	}
	
	
	
} // The end of MypageDao
