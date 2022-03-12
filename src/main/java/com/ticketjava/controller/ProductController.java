package com.ticketjava.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ticketjava.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/musical")
	public String musical() {
		System.out.println("musical");
		
		return "product/pList";
	}
	
	
	@RequestMapping("/info")
	public String productInfo() {
		
		return "product/productInfo";
	}
	
	
	@RequestMapping("/theaterList")
	public String theaterList(Model model) {
		
		model.addAttribute("listMap", productService.getList());
		return "product/theater";
	}
	

	
}
