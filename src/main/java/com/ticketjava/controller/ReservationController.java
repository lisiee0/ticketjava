package com.ticketjava.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/reservation")
public class ReservationController {

	@RequestMapping("/selectSeat")
	public String selectSeat() {
		return "reservation/selectSeat";
	}
	
	@RequestMapping("/selectQuantity")
	public String selectQuantity() {
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
