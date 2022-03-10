package com.ticketjava.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.NotireqDao;
import com.ticketjava.vo.NotireqVo;
import com.ticketjava.vo.UserVo;

@Service
public class NotireqService {

	@Autowired
	private NotireqDao notireqDao;

	public void addNotireq(NotireqVo notireqVo, HttpSession session) {
		
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		int userNo;
		
		if(authUser != null) {
			userNo = authUser.getUserNo();
		}
		else {
			userNo = 1;
		}
		
		notireqVo.setUserNo(userNo);
		notireqDao.insertNotireq(notireqVo);
	}
	
}
