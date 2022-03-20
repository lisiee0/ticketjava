package com.ticketjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.NotireqDao;
import com.ticketjava.vo.NotireqVo;

@Service
public class NotireqService {

	@Autowired
	private NotireqDao notireqDao;
	
	public String addNotireq(NotireqVo notireqVo, int userNo) {
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

	public NotireqVo myNotireq(NotireqVo notireqVo, int userNo) {
		notireqVo.setUserNo(userNo);
		NotireqVo selectVo = notireqDao.selectReq(notireqVo);
		
		if( selectVo == null) {
			selectVo = new NotireqVo();
		}
		
		return selectVo;
	}

	public String reqDel(NotireqVo notireqVo, int userNo) {
		notireqVo.setUserNo(userNo);
		
		int count = notireqDao.deleteReq(notireqVo);
		if(count>0)
			return "success";
		else
			return "fail";
	}
	

	public List<NotireqVo> myReqList(int userNo) {
		return notireqDao.selectReqList(userNo);
		
		
	}

	public String notiToggle(NotireqVo notireqVo) {

		int count = notireqDao.updateStatus(notireqVo);
		
		if (count>0)
			return "success";
		else
			return "fail";
	}
	
}
