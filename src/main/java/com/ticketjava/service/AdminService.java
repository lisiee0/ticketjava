package com.ticketjava.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.TheaterDao;
import com.ticketjava.vo.TheaterVo;

@Service
public class AdminService {
	
	@Autowired
	private TheaterDao td;
	
	public void theaterAdd(TheaterVo vo) {
		vo.setLatitude("123.123");
		vo.setLongitude("123.123");
		vo.setLogoPath("logopath");
		
		System.out.println(vo);
		td.theaterAdd(vo);
	}

}
