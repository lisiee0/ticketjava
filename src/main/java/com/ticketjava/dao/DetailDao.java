package com.ticketjava.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.DetailVo;

@Repository
public class DetailDao {
	
	@Autowired
	private SqlSession sqlsession;
	
	//공연 상세정보 추가(파일만)
	public void detailUpload(DetailVo dvo) {
		System.out.println(sqlsession.insert("product.detailUpload", dvo));
		
		sqlsession.insert("product.detailUpload", dvo);
	}

}
