package com.ticketjava.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HallDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	

}
