package com.ticketjava.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.SeatpriceDao;

@Service
public class SeatpriceService {

	@Autowired
	private SeatpriceDao seatpriceDao;
	
}
