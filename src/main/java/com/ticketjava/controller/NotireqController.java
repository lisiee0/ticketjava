package com.ticketjava.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ticketjava.service.NotireqService;
import com.ticketjava.service.ReservationService;
import com.ticketjava.vo.NotireqVo;
import com.ticketjava.vo.RezProdInfoVo;
import com.ticketjava.vo.UserVo;

@Controller
@RequestMapping("/notireq")
public class NotireqController {
	
	@Autowired
	private ReservationService reservationService;

	@Autowired
	private NotireqService notireqService;
	
	/* 알림 신청 페이지 */
	@PostMapping("/notireq")
	public String notireq(@RequestParam("prodNo") int prodNo,
						  Model model) {
		RezProdInfoVo rezProdInfo = reservationService.rezProdInfo(prodNo);
		model.addAttribute("rezProdInfo", rezProdInfo);
		
		return "reservation/notireq";
	}
	
	/* 내 신청 */
	@ResponseBody
	@PostMapping("/myNotireq")
	public NotireqVo myNotireq (@ModelAttribute NotireqVo notireqVo, HttpSession session) {
		int userNo = ((UserVo)session.getAttribute("authUser")).getUserNo();
		return notireqService.myNotireq(notireqVo, userNo);
	}
	
	/* 알림 신청하기 */
	@ResponseBody
	@PostMapping("/addNotireq")
	public String addNotireq(@ModelAttribute NotireqVo notireqVo, HttpSession session) {
		int userNo = ((UserVo)session.getAttribute("authUser")).getUserNo();
		return notireqService.addNotireq(notireqVo, userNo);
	}
	
	/* 알림 취소 */
	@ResponseBody
	@PostMapping("/reqDel")
	public String reqDel(@ModelAttribute NotireqVo notireqVo, HttpSession session) {
		int userNo = ((UserVo)session.getAttribute("authUser")).getUserNo();
		return notireqService.reqDel(notireqVo, userNo);
	}
	
	/* 알림 여부 on off */
	@ResponseBody
	@PostMapping("/notiToggle")
	public String notiToggle(@ModelAttribute NotireqVo notireqVo) {
		
		return notireqService.notiToggle(notireqVo);
	}
	
	
}
