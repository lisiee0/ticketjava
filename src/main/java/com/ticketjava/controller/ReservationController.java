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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ticketjava.service.ReservationService;
import com.ticketjava.service.SeatpriceService;
import com.ticketjava.service.UserService;
import com.ticketjava.vo.ReservationVo;
import com.ticketjava.vo.RezProdInfoVo;
import com.ticketjava.vo.SeatpriceVo;
import com.ticketjava.vo.UserVo;


@Controller
@RequestMapping("/reservation")
public class ReservationController {

	@Autowired
	private ReservationService reservationService;
	
	@Autowired
	private SeatpriceService seatpriceService;

	@Autowired
	private UserService userService;
	
	
	@RequestMapping(value="/selectSeat", method=RequestMethod.POST)
	public String selectSeat(@ModelAttribute ReservationVo reservationVo,
							 RedirectAttributes redirectAttributes,
							 HttpSession session,
							 Model model) {
		
		if(!userService.loginCheck(session)) {
			model.addAttribute("prodNo", reservationVo.getProdNo());
			return "error/requireLogin";
		}
		
		else {
			int userNo = ((UserVo)session.getAttribute("authUser")).getUserNo();
			ReservationVo rezHistory = reservationService.checkRezHistory(reservationVo, userNo);
			
			if(rezHistory.getRezNo() != 0) {
				redirectAttributes.addAttribute("rezNo", rezHistory.getRezNo());
				redirectAttributes.addAttribute("viewDate", reservationVo.getViewDate());
				redirectAttributes.addAttribute("prodNo", reservationVo.getProdNo());
				redirectAttributes.addAttribute("totalPayment", rezHistory.getTotalPayment());
				return "redirect:confirmContinue";
			}
			
			else {
				List<SeatpriceVo> seatpriceList = seatpriceService.seatpriceList(reservationVo.getProdNo());
				model.addAttribute("seatpriceList", seatpriceList);
				
				RezProdInfoVo rezProdInfo = reservationService.rezProdInfo(reservationVo.getProdNo());
				model.addAttribute("rezProdInfo", rezProdInfo);
				
				return "reservation/selectSeat";
			}
		}
	}
	
	@ResponseBody
	@RequestMapping("/preDelNow")
	public String preDelNow(@RequestParam("rezNo") int rezNo) {
		reservationService.preDelNow(rezNo);
		return "";
	}
	
	
	@ResponseBody
	@RequestMapping("/preoccupy")
	public int preoccupy(@RequestBody ReservationVo reservationVo,
						 HttpSession session){
		int userNo = ((UserVo)session.getAttribute("authUser")).getUserNo();
		return reservationService.preoccupy(reservationVo, userNo);
	}
	
	@RequestMapping(value="/selectQuantity", method=RequestMethod.POST)
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
	
	@RequestMapping(value="/confirmReservation", method=RequestMethod.POST)
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
