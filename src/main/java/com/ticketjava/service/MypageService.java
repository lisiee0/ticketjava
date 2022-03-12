package com.ticketjava.service;

import java.util.List;
import java.util.Map;

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
	
	public Map<String, Object> getReserveDetail (int rezNo, int userNo) {
		System.out.println("MypageService getReserveDetail");
		
//		map.put("reserveDetail", mypageDao.reserveDetail);
//		map.put("reserveSeatList", mypageDao.reserveSeatList);
		
		return mypageDao.getReserveDetail();
		
	}
	


	
	
} // The end of MypageService
