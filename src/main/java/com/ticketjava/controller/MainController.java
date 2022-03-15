package com.ticketjava.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class MainController {

	
	@RequestMapping(value="/", method={RequestMethod.GET, RequestMethod.POST })
	public String main() {

		return "main/index";
	} // main
	

	
} // The end of MainController
