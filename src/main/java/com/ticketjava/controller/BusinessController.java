package com.ticketjava.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ticketjava.service.BusinessService;
import com.ticketjava.vo.BusinessVo;

@Controller
@RequestMapping("/bm")
public class BusinessController {

	@Autowired
	BusinessService businessService;

	// 공연 목록
	@RequestMapping("/")
	public String bmInquiry(Model model) {
		System.out.println("BusinessController/bmInquiry");
		
		model.addAttribute(null, model);
		
		return "business/bmInquiry";
	}

	// 공연 추가
	@RequestMapping("/bmAdd")
	public String bmAdd(@ModelAttribute BusinessVo businessVo) {
		System.out.println("BusinessController/bmAdd");
		
		return "business/bmAdd";
	}

	//공연 검색
	@RequestMapping("/bmAddSearch")
	public String bmAddSearch() {
		System.out.println("BusinessController/bmAddSearch");

		return "business/bmAddSearch";
	}

	//공연 할인정보 추가
	@RequestMapping("/bmDisAdd")
	public String bmDisAdd() {
		System.out.println("BusinessController/bmDisAdd");

		return "business/bmDisAdd";
	}

	//문의내역 관리
	@RequestMapping("/bmManage")
	public String bmManage() {
		System.out.println("BusinessController/bmManage");

		return "business/bmManage";
	}

}
