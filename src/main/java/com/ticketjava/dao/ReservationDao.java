package com.ticketjava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.ReservationVo;
import com.ticketjava.vo.ReserveDetailVo;
import com.ticketjava.vo.RezProdInfoVo;

@Repository
public class ReservationDao {

	@Autowired
	private SqlSession sqlSession;

	public void insertPre(ReservationVo reservationVo) {
		sqlSession.insert("reservation.insertPre", reservationVo);
	}

	public void deletePreByNo(int rezNo) {
		sqlSession.delete("reservation.deletePreByNo", rezNo);
	}
	
	public void updatePayment(ReservationVo reservationVo) {
		sqlSession.update("reservation.updatePayment",reservationVo);	
	}

	public ReservationVo selectByRezNo2(int rezNo) {
		return sqlSession.selectOne("reservation.selectByRezNo2", rezNo);
	}
	
	public ReservationVo selectByRezNo(int rezNo) {
		return sqlSession.selectOne("reservation.selectByRezNo", rezNo);
	}

	public void updateInfo(ReservationVo reservationVo) {
		sqlSession.update("reservation.updateInfo",reservationVo);
		
	}

	public RezProdInfoVo selectRezProdInfo(int prodNo) {
		return sqlSession.selectOne("reservation.selectRezProdInfo", prodNo);
	}
	
	
//	마이페이지 예매내역 
	public List<ReserveDetailVo> getReserveList(int userNo) {
		System.out.println("MypageDao getReserveList");
		
		List<ReserveDetailVo> reserveList = sqlSession.selectList("reservation.reserveList", userNo);
		
		return reserveList;
	}

	
//	마이페이지 예매내역 상세보기 
	public ReserveDetailVo getReserveDetail(int rezNo) {
		System.out.println("ReservationDao getReserveDetail 예매 상세내역보기");
		
		return sqlSession.selectOne("reservation.reserveDetail", rezNo);
	}

	
//	마이페이지 예매내역 상세 좌석 리스트 
	public List<ReserveDetailVo> getReserveSeatList(int rezNo) {
		System.out.println("ReservationDao getReserveSeat 예매 상세내역보기");
		
		List<ReserveDetailVo> reserveSeatList = sqlSession.selectList("reservation.reserveSeatList", rezNo);
		
		return reserveSeatList;
	}
	
	
//	예매 좌석 부분 취소
	public void deleteReserveSeat (int selseatNo) {
		System.out.println("ReservationDao deleteReserveSeat 실행");
		sqlSession.update("reservation.reserveSeatCancel", selseatNo);
	}

	public int selectPre(int rezNo) {
		return sqlSession.selectOne("reservation.selectPre", rezNo);
	}

	public ReservationVo selectHistory(ReservationVo reservationVo) {
		ReservationVo rezVo = sqlSession.selectOne("reservation.selectHistory", reservationVo);
		if(rezVo == null)
			return new ReservationVo();
		else
			return rezVo;
			
	}

	

	

	
} // The end of ReservationDao
