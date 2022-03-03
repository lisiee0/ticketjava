package com.ticketjava.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class MypageController {


	@RequestMapping("/ticketingList")
	public String ticketingList() {
		System.out.println("MypageController ticketingList");
		return "mypage/ticketingList";
	} // MypageController
	


		
} // The end of MypageController 
