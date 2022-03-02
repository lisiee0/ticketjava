package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Hello{

	@RequestMapping( "/hello")
	public String hello(){
		System.out.println("/hellospring/hello");
		return "/WEB-INF/views/index.jsp";
	}
}
