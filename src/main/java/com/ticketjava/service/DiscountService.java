package com.ticketjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.DiscountDao;
import com.ticketjava.vo.DiscountVo;

@Service
public class DiscountService {

	@Autowired
	private DiscountDao discountDao;

	public List<DiscountVo> discountList(int prodNo) {
		return discountDao.selectList(prodNo);
	}
	
	
}
