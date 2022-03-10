package com.ticketjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.MypageDao;
import com.ticketjava.vo.ReserveDetailVo;

@Service
public class MypageService {

	@Autowired
	private MypageDao mypageDao;
	
	
	public List<ReserveDetailVo> getReserveList () {
		System.out.println("MypageService getReserveList");
		return mypageDao.getReserveList();
	}
	
	public List<ReserveDetailVo> getReserveDetail () {
		System.out.println("MypageService getReserveDetail");
		return mypageDao.getReserveDetail();
	}
	


	
	
} // The end of MypageService
