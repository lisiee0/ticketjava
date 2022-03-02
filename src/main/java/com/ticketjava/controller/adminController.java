package com.ticketjava.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class adminController {
	
	@RequestMapping("/")
	public String admin() {
		System.out.println("adminController/admin()");
		
		return "/WEB-INF/views/admin/adminPage.jsp";
	}
	
	@RequestMapping("/TheaterAdd")
	public String TheaterAdd() {
		System.out.println("adminController/TheaterAdd()");
		
		return "/WEB-INF/views/admin/adminTheaterAdd.jsp";
	}
}
