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

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Service
public class ReservationService {

	@Autowired
	private ReservationDao reservationDao;
	
	@Autowired
	private SelseatDao selseatDao;

	public Map<String, Object> preoccupy(String data) {
		Map<String, Object> map= new HashMap<>(); 
		
		ReservationVo reservationVo = new ReservationVo();
		reservationDao.insertPre(reservationVo);
		
		map.put("rezNo", reservationVo.getRezNo());
		
		List<Integer> selseatNoList = new ArrayList<>();
		
		JSONArray array = JSONArray.fromObject(data);
		for(int i=0; i<array.size(); i++) {
			JSONObject obj = (JSONObject)array.get(i);
			
			String grade = (String) obj.get("grade");
			String section = (String) obj.get("section");
			int col = Integer.parseInt(String.valueOf(obj.get("col")));
			int num = Integer.parseInt(String.valueOf(obj.get("num")));
			
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
		
		return map;
		
	}

	public Map<String, Object> selList(int[] selseatNo) {
		Map<String, Object> map = new HashMap<>();
		
		List<SelseatVo> selList = selseatDao.selectSelList(selseatNo);
		map.put("selList", selList);
		
		return map;
	}

	public void preDel() {
		List<Integer> rezNoList = selseatDao.selectTimeOver();
		
		if(rezNoList.size() >0) {
			reservationDao.deletePre(rezNoList);
		}
	}


	public void modifyPayment(ReservationVo reservationVo) {
		reservationDao.updatePayment(reservationVo);
		
	}
	
	
	
}
