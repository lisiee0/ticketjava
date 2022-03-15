package com.ticketjava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.ProductVo;
import com.ticketjava.vo.TheaterVo;

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
	
	// 공연장별 예매가능한 상품 리스트 불러오기
	public List<ProductVo> availListbyTheater(TheaterVo vo) {
		return sqlsession.selectList("product.availListbyTheater", vo);
	}
	
	// 공연장별 top5 상품 불러오기
	public List<ProductVo> topListbyTheater(TheaterVo vo) {
		return sqlsession.selectList("product.topListbyTheater", vo);
	}
	
	// 검색결과
	public List<ProductVo> searchResult(String key) {
		return sqlsession.selectList("product.searchResult", key);
	}
	
	// 검색결과 카운트
	public int countResult(String key) {
		return sqlsession.selectOne("product.countResult", key);
	}
	
	// 모든상품 (지역페이지)
	public List<ProductVo> allprod(int cateNo) {
		
		switch(cateNo) {
			case 0: // 전체
					return sqlsession.selectList("product.allprod");
			case 1: // 서울&경기
					return sqlsession.selectList("product.skprod");
			case 2: // 강원&충청
					return sqlsession.selectList("product.gcprod");
			case 3: // 전라
					return sqlsession.selectList("product.jprod");
			case 4: // 경상&제주
					return sqlsession.selectList("product.kjprod");
			default : //디폴트 (전체)
					return sqlsession.selectList("product.allprod");		
		}
	}
}
