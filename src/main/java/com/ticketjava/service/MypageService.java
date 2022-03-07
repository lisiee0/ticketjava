package com.ticketjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.MypageDao;
import com.ticketjava.vo.ReservationVo;

@Service
public class MypageService {

	@Autowired
	private MypageDao mypageDao;
	
	public List<ReservationVo> getReserveList () {
		System.out.println("MypageService getReserveList");
		return mypageDao.getReserveList();
	}
	
	
} // The end of MypageService
