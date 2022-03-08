package com.ticketjava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.DiscountVo;

@Repository
public class DiscountDao {

	@Autowired
	private SqlSession sqlSession;

	public List<DiscountVo> selectList(int prodNo) {
		// TODO Auto-generlated method stub
		return sqlSession.selectList("discount.selectList", prodNo);
	}
	
	
	public List<DiscountVo> selectProdDiscount(int prodNo) {
		return sqlSession.selectList("discount.selectProdDiscount", prodNo);
	}
	
	public DiscountVo selectProdHall(int prodNo) {
		return sqlSession.selectOne("discount.selectProdHall", prodNo);
	}
}
