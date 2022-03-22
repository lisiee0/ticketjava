package com.ticketjava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.SeatpriceVo;

@Repository
public class SeatpriceDao {

	@Autowired
	public SqlSession sqlSession;

	public List<SeatpriceVo> selectList(int prodNo) {
		return sqlSession.selectList("seatprice.selectList", prodNo);
	}
	
	//좌석 등급별 가격 업로드
	public void seatpriceAdd(SeatpriceVo seatpriceVo) {
		System.out.println("SeatpriceDao > seatpriceAdd");
		System.out.println(seatpriceVo);

		sqlSession.insert("seatprice.seatpriceAdd", seatpriceVo);
	}
	
	//공연 수정 등급별 가격 가져오기
	public List<SeatpriceVo> bmgetSeatPrice(int prodNo) {
		System.out.println("SeatpriceDao > bmgetSeatPrice");
		
		return sqlSession.selectList("seatprice.bmgetSeatPrice", prodNo);
	} 
	
	//공연 등급별 가격 수정
	public int seatpriceModify(SeatpriceVo seatpriceVo){
		System.out.println("SeatpriceDao > seatpriceModify");
		System.out.println(seatpriceVo);
		
		return sqlSession.update("seatprice.seatpriceModify", seatpriceVo);	
	}
	
}
