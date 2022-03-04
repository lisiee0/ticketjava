package com.ticketjava.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.TheaterVo;

@Repository
public class HallDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public void hallAdd(TheaterVo vo) {
		sqlSession.insert("hall.hallAdd", vo);
	}
	

}
