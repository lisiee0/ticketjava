package com.ticketjava.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ticketjava.service.SeatService;

@Controller
@RequestMapping("/seat")
public class SeatController {

	@Autowired
	private SeatService seatService;
	
	@RequestMapping("/seatMap")
	public String seatMap() {
		return "reservation/seatMap";
	}
	
	@RequestMapping("/initSeat")
	public void initSeat(@RequestParam String data) {
		seatService.initSeat(data);
	}
	
}
