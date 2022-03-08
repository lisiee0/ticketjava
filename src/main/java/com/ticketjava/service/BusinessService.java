package com.ticketjava.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.BusinessDao;
import com.ticketjava.dao.DiscountDao;
import com.ticketjava.vo.DiscountVo;

@Service
public class BusinessService {

	@Autowired
	private BusinessDao businessDao;
	@Autowired
	private DiscountDao dd;
	
	
	public DiscountVo selectProdDiscount(int prodNo) {
		return dd.selectProdDiscount(prodNo);
	}

}
