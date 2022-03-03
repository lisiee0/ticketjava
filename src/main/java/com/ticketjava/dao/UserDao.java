package com.ticketjava.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.UserVo;

@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;
	
	public void insertPersonal(UserVo userVo) {
		sqlSession.insert("user.insertPersonal", userVo);
	}

	public void insertBizman(UserVo userVo) {
		sqlSession.insert("user.insertBizman", userVo);
		
	}

	public UserVo selectAuthUser(UserVo userVo) {
		return sqlSession.selectOne("user.selectAuthUser", userVo);
	}
	
}
