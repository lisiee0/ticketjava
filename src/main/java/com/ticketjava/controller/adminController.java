package com.ticketjava.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class adminController {
	
	@RequestMapping("/admin")
	public String admin() {
		
		return "/WEB-INF/views/admin/adminPage.jsp";
	}

}
