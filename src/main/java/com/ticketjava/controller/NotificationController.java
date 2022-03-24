package com.ticketjava.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ticketjava.service.NotificationService;
import com.ticketjava.vo.UserVo;

@Controller
@RequestMapping("/notification")
public class NotificationController {
	
	@Autowired
	private NotificationService notificationService;
	
	/* 알림 내역 삭제 */
	@ResponseBody
	@PostMapping("/deleteNoti")
	public String deleteNoti(@RequestParam("notiNo") int notiNo) {
		
		return notificationService.deleteNoti(notiNo);
	}
	
	/* 읽은 알림으로 표시 */
	@ResponseBody
	@PostMapping("/read")
	public String read(@RequestParam("notiNo") int notiNo) {
		notificationService.read(notiNo);
		return "";
	}
	
	/* 읽지 않은 알림이 있는지 확인 */
	@ResponseBody
	@PostMapping("/unread")
	public String unread(HttpSession session) {
		int userNo = ((UserVo)session.getAttribute("authUser")).getUserNo();
		return notificationService.unread(userNo);
	}
}
