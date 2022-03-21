package com.ticketjava.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ticketjava.service.AdminService;
import com.ticketjava.vo.HallVo;
import com.ticketjava.vo.NoticeVo;
import com.ticketjava.vo.TheaterVo;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	// 관리자 페이지 main - 등록된 공연장 리스트 불러오기
	@RequestMapping("/")
	public String admin(@RequestParam(value="crtPage", required= false, defaultValue= "1") int crtPage,
						Model model) {

		model.addAttribute("hallList", adminService.getList(crtPage));
		return "admin/adminTheaterList";
	}
	
	
	// 공연장 등록양식 불러오기
	@RequestMapping("/theaterAddpage")
	public String theaterAddpage() {
		
		return "admin/adminTheaterAdd";
	}
	
	
	// 공연장 등록
	@RequestMapping("/theaterAdd")
	public String theaterAdd(@ModelAttribute TheaterVo vo,
							 @RequestParam("file") MultipartFile file) {

		adminService.theaterAdd(vo, file);
		return "redirect:/admin/";
	}
	
	
	// 공연장 수정양식 불러오기
	@RequestMapping("/theaterModifyForm")
	public String theaterModifyForm(@RequestParam("hallNo") int hallNo, Model model) {
		
		model.addAttribute("hallVo", adminService.getHall(hallNo));
		return "admin/adminTheaterModify";
	}
	
	
	// 공연장 수정
	@RequestMapping("/theaterModify")
	public String theaterModify(@ModelAttribute HallVo vo,
								@RequestParam("file") MultipartFile file) {
		adminService.modifyHall(vo, file);
		return "redirect:/admin/";
	}
	
	
	// 공연장 삭제
	@RequestMapping("/theaterDelete")
	public String theaterDelete(@ModelAttribute HallVo vo) {
		
		adminService.deleteHall(vo);
		return "redirect:/admin/";
	}
	
	// 공연장 검색
	@RequestMapping("/theaterSearch")
	public String theaterSearch(@RequestParam(value="crtPage", required= false, defaultValue= "1") int crtPage,
								@RequestParam("key") String key, Model model) {
		
		model.addAttribute("hallList", adminService.getResultList(crtPage, key));
		return "admin/theaterSearchResult";
	}
	
	
	///////////////////////////////
	/*           공지사항          */
	//////////////////////////////

	// 공지사항 리스트 불러오기
	@RequestMapping("/noticeList")
	public String noticeList(@RequestParam(value="crtPage", required= false, defaultValue= "1") int crtPage,
							 Model model) {
		
		model.addAttribute("noticeList", adminService.getNoticeList(crtPage));
		return "admin/adminNoticeList";
	}
	
	
	// 공지사항 등록양식 불러오기
	@RequestMapping("/noticeAddForm")
	public String noticeAddForm(Model model) {
		
		model.addAttribute("selectList", adminService.selectList());
		return "admin/adminNoticeAdd";
	}
	
	
	// 공지사항 등록
	@RequestMapping("/noticeAdd")
	public String noticeAdd(@ModelAttribute NoticeVo vo) {
		
		adminService.noticeAdd(vo);
		return "redirect:/admin/noticeList";
	}
	
	
	// 공지사항 수정양식 불러오기
	@RequestMapping("/noticeModifyForm")
	public String noticeModifyForm(@RequestParam("noticeNo") int noticeNo, Model model) {
		
		model.addAttribute("getNotice", adminService.getNotice(noticeNo));
		return "admin/adminNoticeModify";
	}
	
	
	// 공지사항 수정
	@RequestMapping("/noticeModify")
	public String noticeModify(@ModelAttribute NoticeVo vo) {
		
		adminService.noticeModify(vo);
		return "redirect:/admin/noticeList";
	}
	
	
	// 공지사항 삭제
	@RequestMapping("/noticeDelete")
	public String noticeDelete(@RequestParam("noticeNo") int noticeNo) {
		
		adminService.noticeDelete(noticeNo);
		return "redirect:/admin/noticeList";
	}
	
}