package com.ticketjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
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

@Service
public class NotificationService {
	
	@Autowired
	private NotificationDao notificationDao;
	
	@Autowired
	private SelseatDao selseatDao;
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private SeatDao seatDao;
	
	@Autowired
	private NotireqDao notireqDao;
	

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
	
	@Async
	public void notiSend(int selseatNo) {
		// 1. selseat 예매취소(selseatNo) -->  rezNo, grade, section, col, num
		// 2. reserve(rezNo) >  prodNo, viewDate
		// 3. product(prodNo) >  prodName, showTime
		 
		NotiDataVo notiDataVo = selseatDao.selectByNo(selseatNo);
		
		int seatCount = seatDao.selectSeatCount(notiDataVo);			// 구역의 전체 좌석
		int selseatCount = selseatDao.selectSelseatCount(notiDataVo);	// 구역의 예매된 좌석 
		
		if(seatCount - selseatCount == 1) { // 해당 좌석의 구역이 매진인 상태에서 취소됐을 때
			
			//4. notireq(prodNo, viewDate, section, status==1?)  >  결과 userNo 리스트   
			List<NotireqVo> notireqList = notireqDao.selectTargetUser(notiDataVo);
			
			//5. noti > 알림 번호(시퀀스), 내용 ( viewDate+showTime , prodName, section ) , 알림 시간 (sysdate)   
			String content = ""
					+ "<a class='content' target='_blank' href='/ticketjava/product/info?prodNo="+notiDataVo.getProdNo()+"&viewDate="+notiDataVo.getViewDate()+"'>"
					+ notiDataVo.getViewDate()+" "+notiDataVo.getShowTime()+" "+notiDataVo.getProdName()+" "+notiDataVo.getGrade().toUpperCase()+"석 "
					+ notiDataVo.getSection()+"구역 "+notiDataVo.getCol()+"열 "+notiDataVo.getNum()+"번 좌석 취소 안내"
					+ "</a>";
			
			for(NotireqVo notireqVo : notireqList) {
				NotificationVo n = new NotificationVo();
				n.setUserNo(notireqVo.getUserNo());
				n.setContent(content);
				notificationDao.insert(n);
			}
			
			// 6. Users > email로 내용 전송								    
			List<String> emailList = userDao.selectEmail(notireqList);
			NotiMail.sendMail(emailList, notiDataVo);
			
			notireqDao.updateNotiTimes(notireqList);
			notireqDao.deleteDoneReq(notireqList);
		}
	}

	public void read(int notiNo) {
		notificationDao.updateRead(notiNo);
	}

	public String unread(int userNo) {
		int count = notificationDao.selectUnread(userNo);
		
		if(count > 0)
			return "unread";
		else
			return "read";
	}
	
	
	
}
