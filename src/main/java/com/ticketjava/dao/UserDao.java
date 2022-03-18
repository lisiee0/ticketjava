package com.ticketjava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.NotireqVo;
import com.ticketjava.vo.UserVo;

@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;
	
	public void insertUser(UserVo userVo) {
		sqlSession.insert("user.insertUser", userVo);
	}

	/*
	 * public void insertBizman(UserVo userVo) {
	 * sqlSession.insert("user.insertBizman", userVo);
	 * 
	 * }
	 */
	
	public String selectSalt(String id) {
		return sqlSession.selectOne("user.selectSalt", id);
	}

	public UserVo selectAuthUser(UserVo userVo) {
		return sqlSession.selectOne("user.selectAuthUser", userVo);
	}

	public List<String> selectEmail(List<NotireqVo> notireqList) {
		return sqlSession.selectList("user.selectEmail", notireqList);
	}

	public int selectDupId(String id) {
		return sqlSession.selectOne("user.selectDupId", id);
	}
	
}
