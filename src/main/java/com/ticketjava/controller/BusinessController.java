package com.ticketjava.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ticketjava.service.BusinessService;
import com.ticketjava.vo.BusinessVo;

@Controller
@RequestMapping("/bm")
public class BusinessController {
	
	@Autowired BusinessService businessService;

	@RequestMapping("/bmAdd")
	public String bmAdd(@ModelAttribute BusinessVo businessVo) {
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
