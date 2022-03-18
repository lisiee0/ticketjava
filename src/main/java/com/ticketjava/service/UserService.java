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
		String password = userVo.getPassword();
		String salt = PasswordHash.getSalt();
		userVo.setPassword( PasswordHash.getSHA256(password+salt));
		userVo.setSalt(salt);
		
		userDao.insertUser(userVo);
		
	}

	public UserVo getAuthUser(UserVo userVo) {
		String salt = userDao.selectSalt(userVo.getId());
		String inputPw = userVo.getPassword();
		userVo.setPassword(PasswordHash.getSHA256(inputPw+salt));
		
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
