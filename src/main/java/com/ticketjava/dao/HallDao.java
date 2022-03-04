package com.ticketjava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.HallVo;
import com.ticketjava.vo.TheaterVo;

@Repository
public class HallDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public void hallAdd(TheaterVo vo) {
		sqlSession.insert("hall.hallAdd", vo);
	}
	
	
	public List<HallVo> getHallList() {
		return sqlSession.selectList("hall.getHallList");
	}
	

}
