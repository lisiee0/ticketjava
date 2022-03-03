package com.ticketjava.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.UserDao;
import com.ticketjava.vo.UserVo;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	public void join(UserVo userVo) {
		
		if (userVo.getUsertype() == 1)
			userDao.insertPersonal(userVo);
		else { // == 2
			userDao.insertBizman(userVo);
		}
		
	}

	public UserVo getAuthUser(UserVo userVo) {
		return userDao.selectAuthUser(userVo);
	}

}