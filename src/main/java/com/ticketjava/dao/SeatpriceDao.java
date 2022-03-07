package com.ticketjava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.SeatpriceVo;

@Repository
public class SeatpriceDao {

	@Autowired
	public SqlSession sqlSession;

	public List<SeatpriceVo> selectList(int prodNo) {
		return sqlSession.selectList("seatprice.selectList", prodNo);
	}
	
	
}
