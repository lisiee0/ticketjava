package com.ticketjava.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.ticketjava.vo.SeatVo;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Service
public class SeatService {

	public void initSeat(String data) {
		// TODO Auto-generated method stub
		
		List<SeatVo> seatList = new ArrayList<>();
		
		JSONArray array = JSONArray.fromObject(data);
		for(int i=0; i<array.size(); i++) {
			JSONObject obj = (JSONObject)array.get(i);
			
			int hallNo = Integer.parseInt(String.valueOf(obj.get("hallNo")));
			String grade = (String)obj.get("grade");
			String section = (String)obj.get("section");
			int col = Integer.parseInt(String.valueOf(obj.get("col")));
			int num = Integer.parseInt(String.valueOf(obj.get("num")));
					
			SeatVo seatVo = new SeatVo(0, hallNo, grade, section, col, num, 1);
			seatList.add(seatVo);
		}
		
		System.out.println(seatList);
	}

	
	
}
