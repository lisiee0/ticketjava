package com.ticketjava.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@RequestMapping("/")
	public String admin() {
		System.out.println("adminController/admin()");
		
		return "admin/adminTheaterList";
	}
	
	@RequestMapping("/TheaterAdd")
	public String TheaterAdd() {
		System.out.println("adminController/TheaterAdd()");
		
		return "admin/adminTheaterAdd";
	}
	
	@RequestMapping("/TheaterModify")
	public String TheaterModify() {
		System.out.println("adminController/TheaterModify()");
		
		return "admin/adminTheaterModify";
	}
	
	@RequestMapping("/TheaterNoticeList")
	public String TheaterNoticeList() {
		System.out.println("adminController/TheaterNoticeList()");
		
		return "admin/adminNoticeList";
	}
	
	@RequestMapping("/TheaterNoticeAdd")
	public String TheaterNoticeAdd() {
		System.out.println("adminController/TheaterNoticeAdd()");
		
		return "admin/adminNoticeAdd";
	}
	
	@RequestMapping("/TheaterNoticeModify")
	public String TheaterNoticeModify() {
		System.out.println("adminController/TheaterNoticeModify()");
		
		return "admin/adminNoticeModify";
	}
}
