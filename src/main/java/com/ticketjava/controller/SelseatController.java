package com.ticketjava.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ticketjava.service.SelseatService;
import com.ticketjava.vo.ReservationVo;
import com.ticketjava.vo.SelseatVo;

@Controller
@RequestMapping("/selseat")
public class SelseatController {

	@Autowired
	private SelseatService selseatService;
	
	@ResponseBody
	@RequestMapping("/occupyList")
	public List<SelseatVo> occupyList(@ModelAttribute ReservationVo reservationVo){
		return selseatService.occupyList(reservationVo);
	}
	
	
	@ResponseBody
	@RequestMapping("/modifyDcPay")
	public String modifyDcPay(@RequestBody List<SelseatVo> selseatList){
		selseatService.modifyDcPay(selseatList);
		
		return "";
	}
	
	
}
