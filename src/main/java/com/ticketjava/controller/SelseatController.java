package com.ticketjava.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ticketjava.service.SelseatService;
import com.ticketjava.vo.SelseatVo;

@Controller
@RequestMapping("/selseat")
public class SelseatController {

	@Autowired
	private SelseatService selseatService;
	
	@ResponseBody
	@RequestMapping("selseatList")
	public List<SelseatVo> selseatList(){
		return selseatService.selList();
	}
	
}
