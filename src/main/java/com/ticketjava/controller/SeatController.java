package com.ticketjava.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ticketjava.service.SeatService;
import com.ticketjava.vo.SeatVo;

@Controller
@RequestMapping("/seat")
public class SeatController {

	@Autowired
	private SeatService seatService;
	
	@RequestMapping("/seatMap")
	public String seatMap() {
		return "reservation/seatMap";
	}
	
	@ResponseBody
	@RequestMapping("/initSeat")
	public String initSeat(@RequestBody List<SeatVo> seatList) {
		seatService.initSeat(seatList);
		return "";
	}
	
}
