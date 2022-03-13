package com.ticketjava.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.NoticeDao;
import com.ticketjava.dao.TheaterDao;

@Service
public class ProductService {
	
	@Autowired
	private TheaterDao td;
	@Autowired
	private NoticeDao nd;
	
	
	
	// '공연장'페이지 공연장리스트 & 공지사항리스트
	public Map<String, Object> getList() {
		
		Map<String, Object> listMap= new HashMap<String, Object>();
		listMap.put("tList", td.getTheaterList());
		listMap.put("nList", nd.getNoticeList());
		
		return listMap;
	}

}
