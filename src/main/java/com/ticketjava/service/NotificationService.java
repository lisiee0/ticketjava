package com.ticketjava.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.NotificationDao;
import com.ticketjava.vo.NotificationVo;
import com.ticketjava.vo.UserVo;

@Service
public class NotificationService {
	
	@Autowired
	private NotificationDao notificationDao;

	public List<NotificationVo> myNoti(int userNo) {
		return notificationDao.selectByUser(userNo);
		
	}

	public String deleteNoti(int notiNo) {
		int count = notificationDao.deleteNoti(notiNo);
		
		if(count>0)
			return "success";
		else
			return "fail";
	}
	
}
