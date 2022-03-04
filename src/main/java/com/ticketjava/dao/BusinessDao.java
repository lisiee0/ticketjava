package com.ticketjava.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.BusinessVo;

@Repository
public class BusinessDao {

	@Autowired
	private SqlSession sqlSession;
	
//	public void insert(BusinessVo businessVo) {
//		sqlSession.insert("business.insert", businessVo);
//	}
	
	
}
