package com.ticketjava.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.BusinessDao;
import com.ticketjava.vo.BusinessVo;

@Service
public class BusinessService {

	@Autowired
	private BusinessDao businessDao;
	

}
