package com.ticketjava.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.SeatVo;

@Repository
public class SeatDao {

	@Autowired
	private SqlSession sqlSession;

	public void insertInit(SeatVo seatVo) {
		sqlSession.insert("seat.insertInit", seatVo);
	}

	public int selectSeatCount(Map<String, Object> seatCountData) {
		return sqlSession.selectOne("seat.selectSeatCount", seatCountData);
	}
	
	
}
