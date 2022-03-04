package com.ticketjava.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.ReservationDao;
import com.ticketjava.dao.SelseatDao;
import com.ticketjava.vo.ReservationVo;

@Service
public class ReservationService {

	@Autowired
	private ReservationDao reservationDao;
	
	@Autowired
	private SelseatDao selseatDao;

	public void preoccupy(String[] sel) {
		
		ReservationVo reservationVo = new ReservationVo();
		reservationDao.insertPre(reservationVo);
		
		
		for(String str: sel) {
			String[] arr = str.split(",");
			String grade = arr[0];
			String section = arr[1];
			int col = Integer.parseInt(arr[2]);
			int num = Integer.parseInt(arr[3]);
			
		}
	}
	
	
	
}
