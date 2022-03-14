package com.ticketjava.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ticketjava.service.ProductService;
import com.ticketjava.vo.TheaterVo;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	// prodType별 상품 리스트 불러오기
	@RequestMapping("/type")
	public String musical(@RequestParam("prodType") int prodType, Model model) {
		
		model.addAttribute("type", productService.typeList(prodType));
		return "product/pList";
	}
	
	// sports 상품 리스트
	@RequestMapping("/sports")
	public String sports(@RequestParam("prodType") int prodType, Model model) {
		
		model.addAttribute("type", productService.sportsList(prodType));
		return "product/pListbySports";
	}
	
	
	// '공연장'페이지  (공연장 & 공지사항 리스트)
	@RequestMapping("/theaterList")
	public String theaterList(Model model) {
		
		model.addAttribute("listMap", productService.getList());
		return "product/theater";
	}
	
	
	// 상품 상세보기
	@RequestMapping("/info")
	public String productInfo(@RequestParam("prodNo") int prodNo, Model model) {
		
		model.addAttribute("product", productService.getProduct(prodNo));
		return "product/productInfo";
	}
	
	
	// 공연장별 리스트
	@RequestMapping("/listbyTheater")
	public String listbyTheater(@ModelAttribute TheaterVo vo, Model model) {
		
		model.addAttribute("map", productService.getTheater(vo));
		return "product/pListbyTheater";
	}

	
}
