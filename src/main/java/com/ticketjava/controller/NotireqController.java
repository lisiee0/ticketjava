package com.ticketjava.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ticketjava.service.NotireqService;
import com.ticketjava.service.ReservationService;
import com.ticketjava.vo.NotireqVo;
import com.ticketjava.vo.RezProdInfoVo;

@Controller
@RequestMapping("/notification")
public class NotireqController {
	
	@Autowired
	private ReservationService reservationService;

	@Autowired
	private NotireqService notireqService;
	
	@RequestMapping("/notireqForm")
	public String notireqForm(@RequestParam("prodNo") int prodNo,
							   Model model) {
		RezProdInfoVo rezProdInfo = reservationService.rezProdInfo(prodNo);
		model.addAttribute("rezProdInfo", rezProdInfo);
		return "reservation/notireqForm";
	}
	@RequestMapping("/addNotireq")
	public String addNotireq(@ModelAttribute NotireqVo notireqVo, HttpSession session) {
		System.out.println(notireqVo);
		notireqService.addNotireq(notireqVo, session);
		return "redirect:/mypage/reserveAlram";
	}
	
	
	@RequestMapping("/myReq")
	public String myReq(@RequestParam("prodNo") int prodNo,
			   			 Model model) {
		RezProdInfoVo rezProdInfo = reservationService.rezProdInfo(prodNo);
		model.addAttribute("rezProdInfo", rezProdInfo);
		return "reservation/myReq";
	}
	
	
	
}
