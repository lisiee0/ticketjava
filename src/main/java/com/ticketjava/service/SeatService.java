package com.ticketjava.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.SeatDao;
import com.ticketjava.vo.SeatVo;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Service
public class SeatService {

	
	@Autowired
	private SeatDao seatDao;
	
	public void initSeat(String data) {
		JSONArray array = JSONArray.fromObject(data);
		for(int i=0; i<array.size(); i++) {
			JSONObject obj = (JSONObject)array.get(i);
			
			int hallNo = Integer.parseInt(String.valueOf(obj.get("hallNo")));
			String grade = (String)obj.get("grade");
			String section = (String)obj.get("section");
			int col = Integer.parseInt(String.valueOf(obj.get("col")));
			int num = Integer.parseInt(String.valueOf(obj.get("num")));
					
			SeatVo seatVo = new SeatVo();
			seatVo.setHallNo(hallNo);
			seatVo.setGrade(grade);
			seatVo.setSection(section);
			seatVo.setCol(col);
			seatVo.setNum(num);
			
			seatDao.insertInit(seatVo);
		}
	}

	
	
}
