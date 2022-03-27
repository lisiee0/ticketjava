package com.ticketjava.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
//	회원 정보 수정
	public void userModifyAction(UserVo userVo) {
		sqlSession.update("user.updateUser", userVo);
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

	
//	회원 탈퇴 - 예매내역(rezNo) 있으면 탈퇴불가 
	public void userOutAction(UserVo userVo, int userNo, String password) {
		
		Map<String, Object> map= new HashMap<>();
		map.put("userVo", userVo);
		map.put("userNo", userNo);
		map.put("password", password);
		
		sqlSession.delete("user.deleteUser", map);
	}
	
}
