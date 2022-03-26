package com.ticketjava.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.SelseatDao;

@Service
public class MainService {

	@Autowired
	SelseatDao selseatDao;
	
	public Map<String, Object> getCount() {
		Map<String, Object> map = new HashMap<>();
		int userNum = selseatDao.selectUserCount();
		int cumulativeTime = selseatDao.selectCumulativeTime();  
		map.put("userNum", userNum);
		map.put("cumulativeTime", cumulativeTime);
		return map;
	}

	
}
