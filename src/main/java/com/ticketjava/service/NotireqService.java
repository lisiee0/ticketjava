package com.ticketjava.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.NotireqDao;

@Service
public class NotireqService {

	@Autowired
	private NotireqDao notireqDao;
	
}
