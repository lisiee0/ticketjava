package com.ticketjava.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao {

	@Autowired
	private SqlSession sqlsession;
	

	/*
	 * // 공연 추가 public void bmAdd(ProductVo vo) {
	 * 
	 * sqlsession.insert("product.bmAdd", vo); }
	 * 
	 * // 공연 리스트 public List<ProductVo> getBmList() {
	 * 
	 * return sqlsession.selectList("product.getList"); }
	 * 
	 * // 공연 선택 public ProductVo getBm(int prodNo) {
	 * 
	 * return sqlsession.selectOne("product.getBm", prodNo); }
	 * 
	 * // 공연 수정 public void bmModify(ProductVo vo) {
	 * 
	 * sqlsession.update("product.moodify", vo); }
	 * 
	 * //공연 삭제 public void bmDelete(ProductVo vo) {
	 * 
	 * sqlsession.delete("bm.delete", vo); }
	 */

}
