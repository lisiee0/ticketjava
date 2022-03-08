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
	public List<ProductVo> getProductList() {
		System.out.println("ProductDao/getProductList");
		System.out.println(sqlsession.selectList("product.getProductList"));

		return sqlsession.selectList("product.getProductList");
	}

	// 공연 추가
	public void productAdd(ProductVo vo) {
		System.out.println("ProductDao/productAdd");
		
		sqlsession.insert("product.bmAdd", vo);
	}

}
