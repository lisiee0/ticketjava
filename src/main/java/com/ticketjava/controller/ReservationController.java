package com.ticketjava.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ticketjava.service.ReservationService;
import com.ticketjava.service.SelseatService;
import com.ticketjava.vo.SelseatVo;


@Controller
@RequestMapping("/reservation")
public class ReservationController {

	@Autowired
	private ReservationService reservationService;
	@Autowired
	private SelseatService selseatService;
	
	@RequestMapping("/selectSeat")
	public String selectSeat(Model model) {
		
		return "reservation/selectSeat";
	}
	
	@ResponseBody
	@RequestMapping("selseatList")
	public List<SelseatVo> selseatList(){
		return selseatService.selList();
	}
	
	
	@RequestMapping("/selectQuantity")
	public String selectQuantity(@RequestParam("rezNo") int rezNo,
								 @RequestParam("selseatNo") int [] selseatNo,
								 Model model) {
		System.out.println(rezNo);
		System.out.println(selseatNo);
		Map<String, Object> map = reservationService.selList( rezNo,selseatNo);
		model.addAttribute("map", map);
		
		return "reservation/selectQuantity";
	}
	
	@ResponseBody
	@RequestMapping("/preoccupy")
	public Map<String, Object> preoccupy(@RequestParam String data){

		Map<String, Object> map = reservationService.preoccupy(data);
		return map;
	}
	
	@ResponseBody
	@RequestMapping("/preDel")
	public String preDel() {
		reservationService.preDel();
		return "성공";
	}
	
	
	@RequestMapping("/confirmReservation")
	public String confirmReservation() {
		return "reservation/confirmReservation";
	}
	
	
	@RequestMapping("/notification")
	public String notification() {
		return "reservation/notification";
	}
	
	@RequestMapping("/myNoti")
	public String myNoti() {
		return "reservation/myNoti";
	}
}
