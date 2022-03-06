package com.ticketjava.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ticketjava.service.AdminService;
import com.ticketjava.vo.HallVo;
import com.ticketjava.vo.TheaterVo;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	// 관리자 페이지 main - 등록된 공연장 리스트 불러오기
	@RequestMapping("/")
	public String admin(Model model) {

		model.addAttribute("hallList", adminService.getList());
		return "admin/adminTheaterList";
	}
	
	
	// 공연장 등록양식 불러오기
	@RequestMapping("/theaterAddpage")
	public String theaterAddpage() {
		
		return "admin/adminTheaterAdd";
	}
	
	
	// 공연장 등록
	@RequestMapping("/theaterAdd")
	public String theaterAdd(@ModelAttribute TheaterVo vo) {

		adminService.theaterAdd(vo);
		return "redirect:/admin/";
	}
	
	
	// 공연장 수정양식 불러오기
	@RequestMapping("/theaterModifyForm")
	public String theaterModifyForm(@RequestParam("hallNo") int hallNo, Model model ) {
		System.out.println("adminController/theaterModifyForm()");
		
		model.addAttribute("hallVo", adminService.getHall(hallNo));
		
		return "admin/adminTheaterModify";
	}
	
	
	// 공연장 수정
	@RequestMapping("/theaterModify")
	public String theaterModify(@ModelAttribute HallVo vo) {
		
		adminService.modifyHall(vo);
		return "redirect:/admin/";
	}
	
	
	// 공연장 삭제
	@RequestMapping("/theaterDelete")
	public String theaterDelete(@ModelAttribute HallVo vo) {
		
		adminService.deleteHall(vo);
		return "redirect:/admin/";
	}
	
	
	
	@RequestMapping("/noticeList")
	public String noticeList() {
		System.out.println("adminController/TheaterNoticeList()");
		
		return "admin/adminNoticeList";
	}
	
	
	@RequestMapping("/noticeAdd")
	public String TheaterNoticeAdd() {
		System.out.println("adminController/TheaterNoticeAdd()");
		
		return "admin/adminNoticeAdd";
	}
	
	/*
	@RequestMapping("/adminNoticeModify")
	public String TheaterNoticeModify() {
		System.out.println("adminController/TheaterNoticeModify()");
		
		return "admin/adminNoticeModify";
	}
	*/
}
