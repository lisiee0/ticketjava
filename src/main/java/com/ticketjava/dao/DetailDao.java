package com.ticketjava.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.DetailVo;

@Repository
public class DetailDao {
	
	@Autowired
	private SqlSession sqlsession;
	
	//공연 상세정보 추가
	public void detailUpload(DetailVo dvo) {
		System.out.println("DetailDao/detailUpload");	
		System.out.println(dvo);
		
		sqlsession.insert("detail.detailUpload", dvo);
	}
	
	//공연 이미지파일 추가 <<<<< 공연 정보
	public void prodAdd(DetailVo detailVo) {
		System.out.println("DetailDao/prodAdd");
		
	}
	
	
	//공연 상세정보 이미지 <<<<< 캐스팅 정보
	public void castingAdd(DetailVo detailVo) {
		System.out.println("DetailDao/castingAdd");
		
	}
	
	//공연 상세정보 이미지 <<<<< 부가 정보
	public void addedAdd(DetailVo detailVo) {
		System.out.println("DetailDao/addedAdd");
		
	}
	
	//호준이형님이 작업하신거
	public DetailVo getDetail(int prodNo) {
		return sqlsession.selectOne("detail.getDetail", prodNo);
	}

}
