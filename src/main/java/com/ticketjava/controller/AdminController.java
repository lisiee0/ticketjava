package com.ticketjava.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ticketjava.service.AdminService;
import com.ticketjava.vo.TheaterVo;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/")
	public String admin() {
		System.out.println("adminController/admin()");
		
		return "admin/adminTheaterList";
	}
	
	@RequestMapping("/theaterAddpage")
	public String theaterAddpage() {
		System.out.println("adminController/theaterAddpage()");
		
		return "admin/adminTheaterAdd";
	}
	
	@RequestMapping("/theaterAdd")
	public String theaterAdd(@ModelAttribute TheaterVo vo) {
		System.out.println("adminController/theaterAdd()");
		System.out.println(vo);
		System.out.println(vo.getHallName());
		adminService.theaterAdd(vo);
		
		
		System.out.println("add complete");
		return "admin/adminTheaterAdd";
	}
	
	@RequestMapping("/theaterModify")
	public String theaterModify() {
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
