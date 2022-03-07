package com.ticketjava.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ticketjava.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/info")
	public String productInfo() {
		
		return "product/productInfo";
	}
	
	
	@RequestMapping("/theaterList")
	public String theaterList(Model model) {
		
		
		model.addAttribute("theaterList", productService.getTheaterList());
		return "product/theater";
	}

	
}
