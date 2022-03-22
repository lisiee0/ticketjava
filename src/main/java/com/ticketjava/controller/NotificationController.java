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
	
	@ResponseBody
	@RequestMapping("/deleteNoti")
	public String deleteNoti(@RequestParam("notiNo") int notiNo) {
		
		return notificationService.deleteNoti(notiNo);
	}
	
	@ResponseBody
	@PostMapping("/read")
	public String read(@RequestParam("notiNo") int notiNo) {
		notificationService.read(notiNo);
		return "";
	}
	
	@ResponseBody
	@PostMapping("/unread")
	public String unread(HttpSession session) {
		int userNo = ((UserVo)session.getAttribute("authUser")).getUserNo();
		return notificationService.unread(userNo);
	}
}
