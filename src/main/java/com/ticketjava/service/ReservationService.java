package com.ticketjava.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.ReservationDao;
import com.ticketjava.dao.SelseatDao;
import com.ticketjava.vo.ReservationVo;
import com.ticketjava.vo.SelseatVo;

@Service
public class ReservationService {

	@Autowired
	private ReservationDao reservationDao;
	
	@Autowired
	private SelseatDao selseatDao;

	public void preoccupy(String[] sel) {
		
		Map<String, Object> map= new HashMap<>(); 
		
		ReservationVo reservationVo = new ReservationVo();
		reservationDao.insertPre(reservationVo);
		
		map.put("rezNo", reservationVo.getRezNo());
		
		List<Integer> selseatNoList = new ArrayList<>();
		for(String str: sel) {
			String[] arr = str.split(",");
			String grade = arr[0];
			String section = arr[1];
			int col = Integer.parseInt(arr[2]);
			int num = Integer.parseInt(arr[3]);
			
			SelseatVo selseatVo = new SelseatVo();
			selseatVo.setRezNo(reservationVo.getRezNo());
			selseatVo.setGrade(grade);
			selseatVo.setSection(section);
			selseatVo.setCol(col);
			selseatVo.setNum(num);
			
			selseatDao.insertPre(selseatVo);
			selseatNoList.add(selseatVo.getSelseatNo());
		}
		map.put("selseatNoList", selseatNoList);
		
		System.out.println(map);
	}
	
	
	
}
