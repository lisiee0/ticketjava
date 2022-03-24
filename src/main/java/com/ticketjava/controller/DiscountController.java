package com.ticketjava.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
	
	/* 공연별 할인 정보 */
	@ResponseBody
	@PostMapping("/discountList")
	public List<DiscountVo> discountList(@RequestBody Map<String, Object> dcSelData) {
		return discountService.discountList(dcSelData);
	}
	
	
	@ResponseBody
	@RequestMapping("/getList")
	public List<DiscountVo> getList(@RequestParam("prodNo") int prodNo) {

		return discountService.getList(prodNo);
	}
	
	
	@ResponseBody
	@RequestMapping("/addDis")
	public DiscountVo addDis(@ModelAttribute DiscountVo vo) {

		return discountService.addDis(vo);
	}
	
	@ResponseBody
	@RequestMapping("/delDis")
	public int delDis(@ModelAttribute DiscountVo vo) {

		discountService.delDis(vo);
		return vo.getDcNo();
	}
}
