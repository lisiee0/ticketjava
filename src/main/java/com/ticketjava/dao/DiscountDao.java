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

	// 상시 할인추가
	public void addAlwaysDis(DiscountVo discountVo) {
		System.out.println("DiscountDao/addAlwaysDis");

		sqlSession.insert("discount.addAlwaysDis", discountVo);
		
	}

	// 이벤트 할인창에서 가져오는 이벤트할인 리스트 (상시할인 제외)
	public List<DiscountVo> getList(int prodNo) {
		return sqlSession.selectList("discount.getList", prodNo);
	}

	// 이벤트 할인 추가
	public void addDis(DiscountVo vo) {
		sqlSession.insert("discount.addDis", vo);
	}

	public DiscountVo getDis(int dcNo) {
		return sqlSession.selectOne("discount.getDis", dcNo);
	}

	public int delDis(DiscountVo vo) {
		sqlSession.delete("discount.delDis", vo);
		return vo.getDcNo();
	}

	// product 창에서 업로드 하는 상시 할인 추가
	public void discountUpload(DiscountVo disVo) {
		System.out.println("DiscountDao/discountUpload");

		sqlSession.insert("discount.discountUpload", disVo);
	}

}
