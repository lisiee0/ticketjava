package com.ticketjava.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.TheaterDao;
import com.ticketjava.vo.TheaterVo;

@Service
public class AdminService {
	
	@Autowired
	private TheaterDao td;
	
	public void theaterAdd(TheaterVo vo) {
		
		// 등록하고 셀렉트원으로 가져와서 theaterNo를 가지고 반복문 사용하여 시설 i개 추가 
		// 등록 
		td.theaterAdd(vo);
		// 등록했던거 가져오기
		
		// 시설 추가 i번 반복
		
		// 시설명 배열로 받았을때 나누기
		String[] hallArray= vo.getHallName().split(",");
		
		for (int i = 0; i<hallArray.length; i++) {
	            System.out.println(hallArray[i]);
		}
		
		System.out.println(vo);
		
	}

}
