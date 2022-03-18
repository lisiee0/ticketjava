package com.ticketjava.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	@RequestMapping(value="/notireq", method=RequestMethod.POST)
	public String notireq(@RequestParam("prodNo") int prodNo,
						  Model model) {
		RezProdInfoVo rezProdInfo = reservationService.rezProdInfo(prodNo);
		model.addAttribute("rezProdInfo", rezProdInfo);
		
		return "reservation/notireq";
	}
	
	@ResponseBody
	@RequestMapping("/myNotireq")
	public NotireqVo myNotireq (@ModelAttribute NotireqVo notireqVo, HttpSession session) {
		int userNo = ((UserVo)session.getAttribute("authUser")).getUserNo();
		return notireqService.myNotireq(notireqVo, userNo);
	}
	
	@ResponseBody
	@RequestMapping("/addNotireq")
	public String addNotireq(@ModelAttribute NotireqVo notireqVo, HttpSession session) {
		int userNo = ((UserVo)session.getAttribute("authUser")).getUserNo();
		return notireqService.addNotireq(notireqVo, userNo);
	}
	
	@ResponseBody
	@RequestMapping("/reqDel")
	public String reqDel(@ModelAttribute NotireqVo notireqVo, HttpSession session) {
		int userNo = ((UserVo)session.getAttribute("authUser")).getUserNo();
		return notireqService.reqDel(notireqVo, userNo);
	}
	
	@ResponseBody
	@RequestMapping("/notiToggle")
	public String notiToggle(@ModelAttribute NotireqVo notireqVo) {
		
		return notireqService.notiToggle(notireqVo);
	}
	
	
	/*@RequestMapping("/myReq")
	public String myReq(@RequestParam("prodNo") int prodNo,
			   			 Model model) {
		RezProdInfoVo rezProdInfo = reservationService.rezProdInfo(prodNo);
		model.addAttribute("rezProdInfo", rezProdInfo);
		return "reservation/myReq";
	}*/
	
	
	/* 마이페이지 알림 */
	
	/*
	 * @RequestMapping("/myReqList") public String myReqList(HttpSession session,
	 * Model model) { List<NotireqVo> reqList = notireqService.myReqList(session);
	 * 
	 * System.out.println("myReqList"); System.out.println(reqList);
	 * model.addAttribute("reqList", reqList);
	 * 
	 * return "mypage/reserveAlramSet";
	 * 
	 * }
	 */
	
	@RequestMapping("/test")
	public String test() {
		notireqService.notiSend(4);
		return "";
	}
	
	
}
