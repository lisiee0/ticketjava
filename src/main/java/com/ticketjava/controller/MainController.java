package com.ticketjava.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ticketjava.service.MainService;

@Controller
@RequestMapping("/")
public class MainController {

	@Autowired
	MainService mainService;
	
	@RequestMapping(value="/", method={RequestMethod.GET, RequestMethod.POST })
	public String main(Model model) {

		Map<String, Object> map= mainService.getCount();
		model.addAttribute("map", map);
		
		return "main/index";
	} // main
	

	
} // The end of MainController
