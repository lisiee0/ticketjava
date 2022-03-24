package com.ticketjava.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.UserDao;
import com.ticketjava.util.PasswordHash;
import com.ticketjava.vo.UserVo;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	public void join(UserVo userVo) {
		String password = userVo.getPassword();	// 입력 비밀번호
		String salt = PasswordHash.getSalt();	// 16자리 랜덤 문자열
		userVo.setPassword( PasswordHash.getSHA256(password+salt)); // 회원가입 > 입력 비밀번호+랜덤 문자열 조합으로 해시함수 적용한 결과를 비밀번호로 저장 
		userVo.setSalt(salt);	// 로그인을 위해 salt값도 같이 저장
		
		userDao.insertUser(userVo);
		
	}

	public UserVo getAuthUser(UserVo userVo) {
		String salt = userDao.selectSalt(userVo.getId());
		String inputPw = userVo.getPassword();
		userVo.setPassword(PasswordHash.getSHA256(inputPw+salt));	// 로그인 > 아이디로 salt값을 조회하고 입력한 비밀번호와 조합하여 해시함수를 적용하여 db에서 검색
		
		return userDao.selectAuthUser(userVo);
	}
	
	public boolean loginCheck(HttpSession session) {
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		
		if(authUser == null)
			return false;
		else
			return true;
				
	}

	public boolean dupCheck(String id) {
		int count = userDao.selectDupId(id);
		
		if(count>0)
			return true;
		else
			return false;
	}

	
}
