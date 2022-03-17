package com.ticketjava.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ticketjava.service.ReservationService;
import com.ticketjava.service.SeatpriceService;
import com.ticketjava.vo.ReservationVo;
import com.ticketjava.vo.RezProdInfoVo;
import com.ticketjava.vo.SeatpriceVo;


@Controller
@RequestMapping("/reservation")
public class ReservationController {

	@Autowired
	private ReservationService reservationService;
	
	@Autowired
	private SeatpriceService seatpriceService;
	
	@RequestMapping("/selectSeat")
	public String selectSeat(@RequestParam(value = "rezNo", required=false, defaultValue="0") int rezNo,
							 @RequestParam("prodNo") int prodNo,
							 Model model) {
		if(rezNo != 0) {
			System.out.println("선점 삭제");
		}
		
		List<SeatpriceVo> seatpriceList = seatpriceService.seatpriceList(prodNo);
		model.addAttribute("seatpriceList", seatpriceList);
		
		RezProdInfoVo rezProdInfo = reservationService.rezProdInfo(prodNo);
		model.addAttribute("rezProdInfo", rezProdInfo);
		
		return "reservation/selectSeat";
	}
	
	@ResponseBody
	@RequestMapping("/preDelNow")
	public String preDelNow(@RequestParam("rezNo") int rezNo) {
		reservationService.preDelNow(rezNo);
		return "";
	}
	
	
	@ResponseBody
	@RequestMapping("/preoccupy")
	public int preoccupy(@RequestBody ReservationVo reservationVo, HttpSession session){
		return reservationService.preoccupy(reservationVo, session);
	}
	
	@RequestMapping("/selectQuantity")
	public String selectQuantity(@RequestParam("prodNo") int prodNo,
								 @RequestParam("rezNo") int rezNo,
								 Model model) {
		RezProdInfoVo rezProdInfo = reservationService.rezProdInfo(prodNo);
		model.addAttribute("rezProdInfo", rezProdInfo);
		
		Map<String, Object> map = reservationService.selectQuantity(rezNo);
		model.addAttribute("map", map);
		
		return "reservation/selectQuantity";
	}
	
	@ResponseBody
	@RequestMapping("/modifyPayment")
	public String modifyPayment(@ModelAttribute ReservationVo reservationVo) {
		return reservationService.modifyPayment(reservationVo);
	}
	
	@RequestMapping("/confirmReservation")
	public String confirmReservation(@RequestParam("prodNo") int prodNo,
									 @RequestParam("rezNo") int rezNo,
									 Model model) {
		RezProdInfoVo rezProdInfo = reservationService.rezProdInfo(prodNo);
		model.addAttribute("rezProdInfo", rezProdInfo);
		
		Map<String, Object> map = reservationService.confirmReservation(rezNo);
		model.addAttribute("map", map);
		return "reservation/confirmReservation";
	}
	
	@ResponseBody
	@RequestMapping("/finalPayment")
	public String modifyInfo(@ModelAttribute ReservationVo reservationVo) {
		return reservationService.finalPayment(reservationVo); 
	}
	
	@RequestMapping("/confirmContinue")
	public String confirmContinue() {
		return "reservation/confirmContinue";
	}
	
	
	
	
} // The end of ReservationController
