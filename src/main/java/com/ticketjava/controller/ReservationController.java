package com.ticketjava.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/reservation")
public class ReservationController {

	@RequestMapping("/selecetion")
	public String selection() {
		return "/WEB-INF/views/reservation/selection.jsp";
	}
	
	
	
}
