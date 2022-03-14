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
	
	
	// 이벤트 할인 리스트 불러오기 (상시할인 제외)
	public List<DiscountVo> getList() {
		return discountDao.getList();
	}
	
	// 이벤트 할인 추가
	public DiscountVo addDis(DiscountVo vo) {
		
		discountDao.addDis(vo);
		return  discountDao.getDis(vo.getDcNo());
	}
	
	// 이벤트 할인 삭제
	public int delDis(DiscountVo vo) {
		discountDao.delDis(vo);
		return vo.getDcNo();
	}
}
