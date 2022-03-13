package com.ticketjava.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.NoticeDao;
import com.ticketjava.dao.ProductDao;
import com.ticketjava.dao.TheaterDao;

@Service
public class ProductService {
	
	@Autowired
	private TheaterDao td;
	@Autowired
	private NoticeDao nd;
	@Autowired
	private ProductDao pd;
	
	
	// prodType별 TOP4 리스트 & 모든상품 리스트
	public Map<String, Object> typeList(int prodType) {
		
		Map<String, Object> typeList= new HashMap<String, Object>();
		typeList.put("topList", pd.topList(prodType));
		typeList.put("allList", pd.allList(prodType));

		return typeList;
	}

	
	// '공연장'페이지 공연장리스트 & 공지사항리스트
	public Map<String, Object> getList() {
		
		Map<String, Object> listMap= new HashMap<String, Object>();
		listMap.put("tList", td.getTheaterList());
		listMap.put("nList", nd.getNoticeList());
		
		return listMap;
	}

}
