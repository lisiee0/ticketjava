package com.ticketjava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.ProductVo;

@Repository
public class ProductDao {

	@Autowired
	private SqlSession sqlsession;

	// 공연 리스트
	public List<ProductVo> getProductList(int prodNo) {
		System.out.println("ProductDao/getProductList");

		return sqlsession.selectList("product.getProductList", prodNo);
	}

	// 공연 추가
	public void productUpload(ProductVo pvo) {
		System.out.println("ProductDao/productUpload");
		System.out.println(pvo);

		sqlsession.insert("product.productUpload", pvo);
	}
	
	
	

	// 평점 top4 불러오기
	public List<ProductVo> topList(int prodType) {
		return sqlsession.selectList("product.topList", prodType);
	}
	
	// prodType별 모든 상품 리스트
	public List<ProductVo> allList(int prodType) {
		return sqlsession.selectList("product.allList", prodType);
	}


}
