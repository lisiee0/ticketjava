package com.ticketjava.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.NotireqVo;

@Repository
public class NotireqDao {

	@Autowired
	private SqlSession sqlSession;

	public void insertNotireq(NotireqVo notireqVo) {
		sqlSession.insert("notireq.insertNotireq", notireqVo);
		
	}
}
