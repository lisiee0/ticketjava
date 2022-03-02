package com.ticketjava.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/bm")
public class BusinessController {

	@RequestMapping("/bmAdd")
	public String bmAdd() {
		
		return "business/bmAdd";
	}

	@RequestMapping("/bmAddSearch")
	public String bmAddSearch() {
		
		return "business/bmAddSearch";
	}


	@RequestMapping("/bmDisAdd")
	public String bmDisAdd() {
		
		return "business/bmDisAdd";
	}
	
	@RequestMapping("/bmInquiry")
	public String bmInquiry() {
		
		return "business/bmInquiry";
	}
	
	@RequestMapping("/bmManage")
	public String bmManage() {
		
		return "business/bmManage";
	}

}
