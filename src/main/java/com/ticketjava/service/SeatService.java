package com.ticketjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.SeatDao;
import com.ticketjava.vo.SeatVo;

@Service
public class SeatService {

	@Autowired
	private SeatDao seatDao;
	
	public void initSeat(List<SeatVo> seatList) {
		for(SeatVo seatVo : seatList) {
			seatDao.insertInit(seatVo);
		}
	}

	
	
}
