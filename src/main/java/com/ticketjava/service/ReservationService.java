package com.ticketjava.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.ReservationDao;
import com.ticketjava.dao.SelseatDao;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Service
public class ReservationService {

	@Autowired
	private ReservationDao reservationDao;
	
	@Autowired
	private SelseatDao selseatDao;

	public void preoccupy(String data) {
		
		JSONArray array = JSONArray.fromObject(data);
		JSONObject obj = (JSONObject)array.get(0);
		
		Map<String, Object> selectMap = new HashMap<>();
		selectMap.put("grade", obj.get("grade"));
		selectMap.put("section", obj.get("section"));
		selectMap.put("col", obj.get("col"));
		selectMap.put("num", obj.get("num"));
		
		System.out.println(selectMap);
		
		
		/*
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
		*/
	}
	
	
	
}
