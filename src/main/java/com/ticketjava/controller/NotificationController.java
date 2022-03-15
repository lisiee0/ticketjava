package com.ticketjava.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ticketjava.service.NotificationService;
import com.ticketjava.vo.NotificationVo;

@Controller
@RequestMapping("/notification")
public class NotificationController {
	
	@Autowired
	private NotificationService notificationService;
	
	/*
	@RequestMapping("myNoti")
	public String myNoti(HttpSession session,
						Model model) {
		List<NotificationVo> notiList = notificationService.myNoti(session);
		System.out.println(notiList);
		model.addAttribute("notiList",notiList);
		return "mypage/reserveAlram";
	}
	*/
}
