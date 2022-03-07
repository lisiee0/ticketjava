package com.ticketjava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.ReservationVo;

@Repository
public class ReservationDao {

	@Autowired
	private SqlSession sqlSession;

	public void insertPre(ReservationVo reservationVo) {
		sqlSession.insert("reservation.insertPre", reservationVo);
	}

	public void deletePre(List<Integer> rezNoList) {
		sqlSession.delete("reservation.deletePre", rezNoList);
	}
}
