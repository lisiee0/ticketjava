package com.ticketjava.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ticketjava.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	// '상품'페이지 리스트불러오기
	@RequestMapping("/type")
	public String musical(@RequestParam("prodType") int prodType, Model model) {
		System.out.println("type");
		
		model.addAttribute("type", productService.typeList(prodType));
		return "product/pList";
	}
	
	
	// '공연장'페이지  (공연장 & 공지사항 리스트)
	@RequestMapping("/theaterList")
	public String theaterList(Model model) {
		
		model.addAttribute("listMap", productService.getList());
		return "product/theater";
	}
	
	
	// 상품 상세보기
	@RequestMapping("/info")
	public String productInfo() {
		
		return "product/productInfo";
	}

	
}
