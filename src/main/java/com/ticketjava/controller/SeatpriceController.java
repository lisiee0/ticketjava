package com.ticketjava.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ticketjava.service.SeatpriceService;
import com.ticketjava.vo.SeatpriceVo;

@Controller
@RequestMapping("/seatprice")
public class SeatpriceController {

	@Autowired
	private SeatpriceService seatpriceService;
	
	/* 공연의 좌석별 가격 */
	@ResponseBody
	@PostMapping("/seatpriceList")
	public List<SeatpriceVo> seatpriceList(@RequestParam(value="prodNo") int prodNo ) {
		
		return seatpriceService.seatpriceList(prodNo);
	}
	
}
