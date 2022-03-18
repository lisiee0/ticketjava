package com.ticketjava.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		System.out.println("ProductDao > getProductList");

		return sqlsession.selectList("product.getProductList");
	}

	// 공연 추가
	public int productUpload(ProductVo productVo) {
		System.out.println("ProductDao > productUpload");

		return sqlsession.insert("product.productUpload", productVo);
	}
	
	//공연 이미지파일 추가 <<<<< 포스터 정보
	public int posterAdd(ProductVo productVo) {
		System.out.println("ProductDao > posterAdd");
		
		return sqlsession.update("product.posterAdd", productVo);
	}
	
	//공연 삭제
	public int productDelete(ProductVo productVo) {
		System.out.println("ProductDao > productDelete");
		
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
	
	// prodType별 상품 카운트
	public int prodTypeCnt(int prodType) {
		return sqlsession.selectOne("product.prodTypeCnt", prodType);
	}
	
	// prodType별 상품 리스트 (페이징)
	public List<ProductVo> pagingList(int prodType, int startRnum, int endRnum) {
		
		Map<String, Integer> map= new HashMap<String, Integer>();
		map.put("prodType", prodType);
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		return sqlsession.selectList("product.pagingList", map);
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
	
	// 검색결과 리스트 페이징
	public List<ProductVo> pagingResult(String key, int startRnum, int endRnum) {
		
		Map<String, Object> map= new HashMap<String, Object>();
		map.put("key", key);
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		return sqlsession.selectList("product.pagingResult", map);
	}
	
	// 모든상품 카운트 (지역페이지)
	public int allprodCnt(int cateNo) {
		
		switch(cateNo) {
		case 0: // 전체
				return sqlsession.selectOne("product.allprodCnt");
		case 1: // 서울&경기
				return sqlsession.selectOne("product.skprodCnt");
		case 2: // 강원&충청
				return sqlsession.selectOne("product.gcprodCnt");
		case 3: // 전라
				return sqlsession.selectOne("product.jprodCnt");
		case 4: // 경상&제주
				return sqlsession.selectOne("product.kjprodCnt");
		default : //디폴트 (전체)
				return sqlsession.selectOne("product.allprodCnt");		
		}
	}
	
	
	// 모든상품 리스트 (지역페이지)
	public List<ProductVo> allprod(int cateNo, int startRnum, int endRnum) {
		
		Map<String, Integer> map= new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		switch(cateNo) {
			case 0: // 전체
					return sqlsession.selectList("product.allprod", map);
			case 1: // 서울&경기
					return sqlsession.selectList("product.skprod", map);
			case 2: // 강원&충청
					return sqlsession.selectList("product.gcprod", map);
			case 3: // 전라
					return sqlsession.selectList("product.jprod", map);
			case 4: // 경상&제주
					return sqlsession.selectList("product.kjprod", map);
			default : //디폴트 (전체)
					return sqlsession.selectList("product.allprod", map);		
		}
	}
	
	// prodType별 top5 (랭킹페이지)
	public List<ProductVo> rank(int prodType) {
		return sqlsession.selectList("product.topListbyType", prodType);
	}
}
