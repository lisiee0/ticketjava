package com.ticketjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.TheaterDao;
import com.ticketjava.vo.TheaterVo;

@Service
public class ProductService {
	
	@Autowired
	private TheaterDao td;
	
	
	public List<TheaterVo> getTheaterList() {
		return td.getTheaterList();
	}

}
