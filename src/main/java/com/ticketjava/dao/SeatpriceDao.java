package com.ticketjava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.ProductVo;
import com.ticketjava.vo.SeatpriceVo;

@Repository
public class SeatpriceDao {

	@Autowired
	public SqlSession sqlSession;

	public List<SeatpriceVo> selectList(int prodNo) {
		return sqlSession.selectList("seatprice.selectList", prodNo);
	}
	
	//좌석 등급별 가격 업로드
	public void seatpriceAdd(ProductVo productVo) {
		System.out.println("SeatpriceDao > seatpriceAdd");
		System.out.println(productVo.getSeatpriceList());

		
		
		sqlSession.insert("seatprice.seatpAdd", productVo);
		System.out.println("공연 업로드 완료");
	}
	
	
}
