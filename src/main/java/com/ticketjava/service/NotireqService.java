package com.ticketjava.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.NotificationDao;
import com.ticketjava.dao.NotireqDao;
import com.ticketjava.dao.SeatDao;
import com.ticketjava.dao.SelseatDao;
import com.ticketjava.dao.UserDao;
import com.ticketjava.util.NotiMail;
import com.ticketjava.vo.NotiDataVo;
import com.ticketjava.vo.NotificationVo;
import com.ticketjava.vo.NotireqVo;
import com.ticketjava.vo.UserVo;

@Service
public class NotireqService {

	@Autowired
	private NotireqDao notireqDao;

	@Autowired
	private SelseatDao selseatDao;
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private NotificationDao notificationDao;
	
	@Autowired
	private SeatDao seatDao;
	
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
	
	
	public void notiSend(int selseatNo) {
		 
		// 1. selseat 예매취소(selseatNo) -->  rezNo, grade, section, col, num
		// ( selseat status = 0 )
		
		 //2. reserve(rezNo) >  prodNo, viewDate
		 //( rezNo 같은 selseat status가 모두 0이면 --> reserve status = 0 )
		 
		 //3. product(prodNo) >  prodName, showTime
		 
		// selseatNo == 520; >> 192, s, C, 6, 2
		NotiDataVo notiDataVo = selseatDao.selectByNo(selseatNo);
		System.out.println(notiDataVo);
		
		int seatCount = seatDao.selectSeatCount(notiDataVo);
		int selseatCount = selseatDao.selectSelseatCount(notiDataVo);
		
		System.out.println(seatCount+" "+selseatCount);
		
		if(seatCount - selseatCount == 1) {
			
			 //4. notireq(prodNo, viewDate, section, status==1?)  >  결과 userNo 리스트   
			List<NotireqVo> notireqList = notireqDao.selectTargetUser(notiDataVo);
			
			
			 //5. noti (결과 userNo 리스트 ) > 알림 번호(시퀀스), 내용 ( viewDate+showTime , prodName, section ) , 알림 시간 (sysdate)   
			 //								    └ 링크(예매페이지 --> 취소 좌석 선택 (prodNo, viewDate, grade, section, col, num 으로 기본 선택) )
			String content = ""
					+ "<a target='_blank' href='http://localhost:8088/ticketjava/reservation/selectSeat?prodNo="+notiDataVo.getProdNo()+"&viewDate="+notiDataVo.getViewDate()+"'>"
					+ notiDataVo.getViewDate()+" "+notiDataVo.getShowTime()+" "+notiDataVo.getProdName()+" "+notiDataVo.getGrade().toUpperCase()+"석 "
					+ notiDataVo.getSection()+"구역 "+notiDataVo.getCol()+"열 "+notiDataVo.getNum()+"번 좌석 취소 안내"
					+ "</a>";
			
			List <NotificationVo> notificationList = new ArrayList<>();
			for(NotireqVo notireqVo : notireqList) {
				NotificationVo n = new NotificationVo();
				n.setUserNo(notireqVo.getUserNo());
				n.setContent(content);
				
				notificationList.add(n);
			}
			notificationDao.insertList(notificationList);

			// 6. Users (결과 userNo 리스트) > email로 내용 전송								    
			List<String> emailList = userDao.selectEmail(notireqList);
			System.out.println(emailList);
			
			List<String>test = new ArrayList<>();
			test.add("dldnjswns134@naver.com");
			NotiMail.sendMail(test, notiDataVo);
			
			notireqDao.updateNotiTimes(notireqList);
			notireqDao.deleteDoneReq(notireqList);
		}
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
