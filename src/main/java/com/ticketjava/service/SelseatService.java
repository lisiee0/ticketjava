package com.ticketjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.SelseatDao;
import com.ticketjava.vo.SelseatVo;

@Service
public class SelseatService {

	@Autowired
	private SelseatDao selseatDao;
	
	public List<SelseatVo> selList() {
		return selseatDao.selectList();
	}

}
