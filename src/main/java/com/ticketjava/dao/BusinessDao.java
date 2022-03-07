package com.ticketjava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.BusinessVo;

@Repository
public class BusinessDao {

	@Autowired
	private SqlSession sqlsession;

	// 공연 추가
	public void bmAdd(BusinessVo vo) {
		sqlsession.insert("bm.bmAdd", vo);
	}

	// 공연 선택
	public BusinessVo selectBusiness(BusinessVo vo) {

		return sqlsession.selectOne("bm.selectBm", vo);
	}

	// 공연 리스트
	public List<BusinessVo> getbmList() {

		return sqlsession.selectList("bm.getList");
	}
	
	//공연 

}
