package com.ticketjava.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.TheaterVo;

@Repository
public class TheaterDao {
	
	@Autowired
	private SqlSession sqlsession;
	
	
	public void theaterAdd(TheaterVo vo) {
		sqlsession.insert("theater.theaterAdd", vo);
	}
	
	
	public TheaterVo selectTheater(TheaterVo vo) {
		return sqlsession.selectOne("theater.selectTheater", vo);
	}
	
	
}
