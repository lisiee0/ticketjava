package com.ticketjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.SeatpriceDao;
import com.ticketjava.vo.SeatpriceVo;

@Service
public class SeatpriceService {

	@Autowired
	private SeatpriceDao seatpriceDao;

	public List<SeatpriceVo> seatpriceList(int prodNo) {
		return seatpriceDao.selectList(prodNo);
	}
	
}
