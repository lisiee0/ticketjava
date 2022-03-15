package com.ticketjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.SelseatDao;
import com.ticketjava.vo.ReservationVo;
import com.ticketjava.vo.SelseatVo;

@Service
public class SelseatService {

	@Autowired
	private SelseatDao selseatDao;
	
	public List<SelseatVo> occupyList(ReservationVo reservationVo) {
		return selseatDao.selectOccupy(reservationVo);
	}

	public List<SelseatVo> selList(int rezNo) {
		return selseatDao.selectSelList(rezNo);
	}

	
	public void modifyDcPay(List<SelseatVo> selseatList) {
		for(SelseatVo selseatVo : selseatList) {
			selseatDao.updateDcPay(selseatVo);
		}
		
	}

}
