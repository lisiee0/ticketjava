package com.ticketjava.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ticketjava.service.ReservationService;

@Controller
@RequestMapping("/reservation")
public class ReservationController {

	@Autowired
	private ReservationService reservationService;
	
	@RequestMapping("/selectSeat")
	public String selectSeat() {
		return "reservation/selectSeat";
	}
	
	@RequestMapping("/selectQuantity")
	public String selectQuantity(@RequestParam("sel") String[] sel) {
		/*
		 	or(String str : sel)
			System.out.println(str);
		*/
		reservationService.preoccupy(sel);
		
		return "reservation/selectQuantity";
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
