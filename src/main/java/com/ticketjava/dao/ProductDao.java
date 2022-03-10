package com.ticketjava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.DetailVo;
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

	// 공연 추가(파일만)
	public void productAdd(DetailVo vo) {
		System.out.println(sqlsession.insert("product.bmAdd", vo));
		
		sqlsession.insert("product.bmAdd", vo);
	}
	
	// 공연 추가(파일만)
	public void bmUpload(DetailVo vo) {
		System.out.println(sqlsession.insert("product.bmUpload", vo));
		
		sqlsession.insert("product.bmAdd", vo);
	}


}
