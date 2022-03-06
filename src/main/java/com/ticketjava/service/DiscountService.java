package com.ticketjava.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.DiscountDao;

@Service
public class DiscountService {

	@Autowired
	private DiscountDao discountDao;
	
	
}
