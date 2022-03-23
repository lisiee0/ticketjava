package com.ticketjava.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	/* 예매 1단계 */
	@PostMapping("/selectSeat")
	public String selectSeat(@ModelAttribute ReservationVo reservationVo,
							 RedirectAttributes redirectAttributes,
							 HttpSession session,
							 Model model) {
		
		if(!userService.loginCheck(session)) { 
			model.addAttribute("prodNo", reservationVo.getProdNo()); // 예매하려는 공연 번호
			return "error/requireLogin";
		}
		
		else {
			int userNo = ((UserVo)session.getAttribute("authUser")).getUserNo();
			ReservationVo rezHistory = reservationService.checkRezHistory(reservationVo, userNo); // 예매 기록
			
			if(rezHistory.getRezNo() != 0) {	// 예매 기록이 있으면
				redirectAttributes.addAttribute("rezNo", rezHistory.getRezNo());
				redirectAttributes.addAttribute("viewDate", reservationVo.getViewDate());
				redirectAttributes.addAttribute("prodNo", reservationVo.getProdNo());
				redirectAttributes.addAttribute("totalPayment", rezHistory.getTotalPayment());
				return "redirect:confirmContinue"; 
			}
			
			else {
				List<SeatpriceVo> seatpriceList = seatpriceService.seatpriceList(reservationVo.getProdNo()); // 좌석별 가격
				model.addAttribute("seatpriceList", seatpriceList);
				RezProdInfoVo rezProdInfo = reservationService.rezProdInfo(reservationVo.getProdNo());	// 예매할 공연 정보
				model.addAttribute("rezProdInfo", rezProdInfo);
				
				return "reservation/selectSeat";
			}
		}
	}
	
	/* 선점 삭제 */
	@ResponseBody
	@PostMapping("/preDelNow")
	public String preDelNow(@RequestParam("rezNo") int rezNo) {
		reservationService.preDelNow(rezNo);
		return "";
	}
	
	/* 좌석 선점 */
	@ResponseBody
	@PostMapping("/preoccupy")
	public int preoccupy(@RequestBody ReservationVo reservationVo,
						 HttpSession session){
		int userNo = ((UserVo)session.getAttribute("authUser")).getUserNo();
		return reservationService.preoccupy(reservationVo, userNo);
	}
	
	/* 예매 2단계 */
	@PostMapping("/selectQuantity")
	public String selectQuantity(@RequestParam("prodNo") int prodNo,
								 @RequestParam("rezNo") int rezNo,
								 Model model) {
		RezProdInfoVo rezProdInfo = reservationService.rezProdInfo(prodNo);
		model.addAttribute("rezProdInfo", rezProdInfo);
		
		Map<String, Object> map = reservationService.selectQuantity(rezNo); // 예매 정보, 선택 좌석
		model.addAttribute("map", map);
		
		return "reservation/selectQuantity";
	}
	
	/* 최종 결제금액 저장  */
	@ResponseBody
	@PostMapping("/modifyPayment")
	public String modifyPayment(@ModelAttribute ReservationVo reservationVo) {
		return reservationService.modifyPayment(reservationVo);
	}
	
	/* 예매 3단계 */
	@PostMapping("/confirmReservation")
	public String confirmReservation(@RequestParam("prodNo") int prodNo,
									 @RequestParam("rezNo") int rezNo,
									 Model model) {
		RezProdInfoVo rezProdInfo = reservationService.rezProdInfo(prodNo);
		model.addAttribute("rezProdInfo", rezProdInfo);
		
		Map<String, Object> map = reservationService.confirmReservation(rezNo); // 예매 정보, 선택 좌석
		model.addAttribute("map", map);
		return "reservation/confirmReservation";
	}
	
	/* 최종 결제 */
	@ResponseBody
	@PostMapping("/finalPayment")
	public String modifyInfo(@ModelAttribute ReservationVo reservationVo) {
		return reservationService.finalPayment(reservationVo); 
	}
	
	/* 예매 이어하기 묻기 */
	@GetMapping("/confirmContinue")
	public String confirmContinue(HttpSession session) {
		
		if(! userService.loginCheck(session))
			return "error/errorBack";
		else
			return "reservation/confirmContinue";
	}
	
	
	
} 
