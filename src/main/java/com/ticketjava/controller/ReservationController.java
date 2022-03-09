package com.ticketjava.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ticketjava.service.ReservationService;
import com.ticketjava.service.SelseatService;
import com.ticketjava.vo.ReservationVo;
import com.ticketjava.vo.SelseatVo;


@Controller
@RequestMapping("/reservation")
public class ReservationController {

	@Autowired
	private ReservationService reservationService;
	
	@Autowired
	private SelseatService selseatService;
	
	@RequestMapping("/selectSeat")
	public String selectSeat() {
		return "reservation/selectSeat";
	}
	
	@ResponseBody
	@RequestMapping("/preDel")
	public String preDel() {
		reservationService.preDel();
		return "성공";
	}
	
	@ResponseBody
	@RequestMapping("/preoccupy")
	public Map<String, Object> preoccupy(@RequestParam String data, HttpSession session){
		Map<String, Object> map = reservationService.preoccupy(data, session);
		return map;
	}
	
	@RequestMapping("/selectQuantity")
	public String selectQuantity(/*@RequestParam("rezNo") int rezNo,*/
								 @RequestParam("selseatNo") int [] selseatNo,
								 Model model) {
		List<SelseatVo> selList = selseatService.selList(selseatNo);
		model.addAttribute("selList", selList);
		
		return "reservation/selectQuantity";
	}
	
	@ResponseBody
	@RequestMapping("/modifyPayment")
	public String modifyPayment(@ModelAttribute ReservationVo reservationVo) {
		reservationService.modifyPayment(reservationVo);
		return "성공";
	}
	
	@RequestMapping("/confirmReservation")
	public String confirmReservation(@RequestParam("rezNo") int rezNo,
									 @RequestParam("selseatNo") int [] selseatNo,
									 Model model) {
		Map<String, Object> map = reservationService.confirmReservation(rezNo, selseatNo);
		model.addAttribute("map", map);
		return "reservation/confirmReservation";
	}
	
	@ResponseBody
	@RequestMapping("/finalPayment")
	public String modifyInfo(@ModelAttribute ReservationVo reservationVo) {
		reservationService.finalPayment(reservationVo);
		return "";
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
