package com.ticketjava.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ticketjava.service.NotificationService;

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
	
	@ResponseBody
	@RequestMapping("/deleteNoti")
	public String deleteNoti(@RequestParam("notiNo") int notiNo) {
		
		return notificationService.deleteNoti(notiNo);
	}
}
