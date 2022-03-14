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

		return sqlsession.selectList("product.getProductList");
	}

	// 공연 추가
	public void productUpload(ProductVo pvo) {
		System.out.println("ProductDao/productUpload");
		System.out.println(pvo);

		sqlsession.insert("product.productUpload", pvo);
	}
	
	//공연 삭제
	public int productDelete(ProductVo productVo) {
		System.out.println("ProductDao/productDelete");
		
		return sqlsession.delete("product.productDelete", productVo);
	}
	
	
	

	// 평점 top4 불러오기
	public List<ProductVo> topList(int prodType) {
		return sqlsession.selectList("product.topList", prodType);
	}
	
	// prodType별 모든 상품 리스트
	public List<ProductVo> allList(int prodType) {
		return sqlsession.selectList("product.allList", prodType);
	}
	
	// 특정 상품 상세정보 불러오기
	public ProductVo getProduct(int prodNo) {
		return sqlsession.selectOne("product.getProduct", prodNo);
	}


}
