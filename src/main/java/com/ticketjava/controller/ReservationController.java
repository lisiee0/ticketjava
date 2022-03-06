package com.ticketjava.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ticketjava.service.ReservationService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


@Controller
@RequestMapping("/reservation")
public class ReservationController {

	@Autowired
	private ReservationService reservationService;
	
	@RequestMapping("/selectSeat")
	public String selectSeat() {
		return "reservation/selectSeat";
	}
	
	@RequestMapping("/selectQuantity")
	public String selectQuantity() {
		/*
		 	or(String str : sel)
			System.out.println(str);
		*/
		
		
		return "reservation/selectQuantity";
	}
	
	@ResponseBody
	@RequestMapping("/preoccupy")
	public String preoccupy(@RequestParam String data){

		reservationService.preoccupy(data);

		
		return "성공";
	}
	
	@RequestMapping("/confirmReservation")
	public String confirmReservation() {
		return "reservation/confirmReservation";
	}
	
	
	@RequestMapping("/notification")
	public String notification() {
		return "reservation/notification";
	}
	
	@RequestMapping("/myNoti")
	public String myNoti() {
		return "reservation/myNoti";
	}
}
