package com.ticketjava.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ticketjava.service.DiscountService;
import com.ticketjava.vo.DiscountVo;

@Controller
@RequestMapping("/discount")
public class DiscountController {

	@Autowired
	private DiscountService discountService;
	
	@ResponseBody
	@RequestMapping("/discountList")
	public List<DiscountVo> discountList(@RequestParam(value="prodNo") int prodNo) {
		return discountService.discountList(prodNo);
	}
	
	
}
