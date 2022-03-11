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

	public String addNotireq(NotireqVo notireqVo, HttpSession session) {
		
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		int userNo;
		
		if(authUser != null) {
			userNo = authUser.getUserNo();
		}
		else {
			userNo = 1;
		}
		
		notireqVo.setUserNo(userNo);
		
		NotireqVo selectVo =  notireqDao.selectReq(notireqVo);
		
		if(selectVo != null) {
			return "fail";
		}
		else {
			notireqDao.insertNotireq(notireqVo);
			return "success";
		}
		
	}

	public NotireqVo myNotireq(NotireqVo notireqVo,HttpSession session) {
		
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		int userNo;
		
		if(authUser != null) {
			userNo = authUser.getUserNo();
		}
		else {
			userNo = 1;
		}
		notireqVo.setUserNo(userNo);
		
		NotireqVo selectVo = notireqDao.selectReq(notireqVo);
		if( selectVo == null) {
			selectVo = new NotireqVo();
		}
		
		return selectVo;
	}

	public String reqDel(NotireqVo notireqVo, HttpSession session) {
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		int userNo;
		
		if(authUser != null) {
			userNo = authUser.getUserNo();
		}
		else {
			userNo = 1;
		}
		notireqVo.setUserNo(userNo);
		
		int count = notireqDao.deleteReq(notireqVo);
		if(count>0)
			return "success";
		else
			return "fail";
	}
	
}
