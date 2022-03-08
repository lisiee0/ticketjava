package com.ticketjava.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.SelseatVo;

@Repository
public class SelseatDao {

	@Autowired
	private SqlSession sqlSession;

	public void insertPre(SelseatVo selseatVo) {
		sqlSession.insert("selseat.insertPre", selseatVo);
		
	}

	public List<SelseatVo> selectSelList(int[] selseatNo) {
		return sqlSession.selectList("selseat.selectSelList", selseatNo);
	}
	
	

	
	
	public List<Integer> selectTimeOver() {
		return sqlSession.selectList("selseat.selectTimeOver");
	}

	public List<SelseatVo> selectList() {
		return sqlSession.selectList("selseat.selectList");
	}

	public void updateDcPay(SelseatVo selseatVo) {
		sqlSession.update("selseat.updateDcPay", selseatVo);
		
	}
	
	
}
