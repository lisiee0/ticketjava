package com.ticketjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.HallDao;
import com.ticketjava.dao.TheaterDao;
import com.ticketjava.vo.HallVo;
import com.ticketjava.vo.TheaterVo;

@Service
public class AdminService {
	
	@Autowired
	private TheaterDao td;
	@Autowired
	private HallDao hd;
	
	public void theaterAdd(TheaterVo vo) {
		// 임시데이터 넣기
		vo.setLatitude("0");
		vo.setLongitude("0");
		vo.setLogoPath("path");
		
		
		td.theaterAdd(vo);
		td.selectTheater(vo); // 추가한 theater.no 가져오기

		String[] hallArray= vo.getHallName().split(","); // 시설명 나누기
		
		if (hallArray.length>1) { // 시설명이 2개이상일때
			for (int i= 0; i<hallArray.length; i++) {
				vo.setHallName(hallArray[i]);
				hd.hallAdd(vo);
			}
		}
		else { // 시설명이 1개일때
			hd.hallAdd(vo);
		}	
	}
	
	public List<HallVo> getList() {
		return hd.getHallList();
	}


}
