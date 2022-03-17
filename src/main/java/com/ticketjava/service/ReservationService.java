package com.ticketjava.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.ReservationDao;
import com.ticketjava.dao.SelseatDao;
import com.ticketjava.vo.ReservationVo;
import com.ticketjava.vo.ReserveDetailVo;
import com.ticketjava.vo.RezProdInfoVo;
import com.ticketjava.vo.SelseatVo;
import com.ticketjava.vo.UserVo;

@Service
public class ReservationService {

	@Autowired
	private ReservationDao reservationDao;
	
	@Autowired
	private SelseatDao selseatDao;

	@Autowired
	private NotireqService notireqService;
	
	public int preoccupy(ReservationVo reservationVo, HttpSession session) {
		UserVo authUser = (UserVo)session.getAttribute("AuthUser");
		
		int userNo;
		if(authUser == null)
			userNo = 1;
		else 
			userNo = authUser.getUserNo();
		
		reservationVo.setUserNo(userNo);
		reservationDao.insertPre(reservationVo);
		int rezNo = reservationVo.getRezNo();
		
		List<SelseatVo> selseatList = reservationVo.getSelseatList();
		for(SelseatVo selseatVo : selseatList) {
			selseatVo.setRezNo(rezNo);
			selseatDao.insertPre(selseatVo);
		}
		
		return rezNo;
		
	}

	public void preDelNow(int rezNo) {
		reservationDao.deletePreByNo(rezNo);
		
	}

	public Map<String, Object> selectQuantity(int rezNo) {
		Map<String, Object> map = new HashMap<>();
		ReservationVo reservationVo = reservationDao.selectByRezNo2(rezNo);
		map.put("rezVo", reservationVo);
		List<SelseatVo> selList = selseatDao.selectSelList(rezNo);
		map.put("selList", selList);
		return map;
	} 
	

	public String modifyPayment(ReservationVo reservationVo) {
		
		int count = reservationDao.selectPre(reservationVo.getRezNo());
		if(count <= 0) {
			return "fail";
		}
		
		reservationDao.updatePayment(reservationVo);
		return "success";
	}

	public Map<String, Object> confirmReservation(int rezNo) {
		Map<String, Object> map = new HashMap<>();
		ReservationVo reservationVo = reservationDao.selectByRezNo(rezNo);
		map.put("rezVo", reservationVo);
		List<SelseatVo> selList = selseatDao.selectSelList(rezNo);
		map.put("selList", selList);
		return map;
	}
	
	

	public String finalPayment(ReservationVo reservationVo) {
		int count = reservationDao.selectPre(reservationVo.getRezNo());
		if(count <= 0) {
			return "fail";
		}
		
		reservationDao.updateInfo(reservationVo);
		selseatDao.updateStatus(reservationVo.getRezNo());
		return "success";
	}

	public RezProdInfoVo rezProdInfo(int prodNo) {
		return reservationDao.selectRezProdInfo(prodNo);
	}

	
	//	마이페이지 예매 리스트
	public List<ReserveDetailVo> getReserveList (int userNo) {
		System.out.println("ReservationService getReserveList");
		return reservationDao.getReserveList(userNo);
	}
	
	
//	마이페이지 예매 상세
	public Map<String, Object> getReserveDetail (int rezNo) {
		System.out.println("ReservationService getReserveDetail");
		
		ReserveDetailVo reserveDetail = reservationDao.getReserveDetail(rezNo);
		List<ReserveDetailVo> reserveSeatList = reservationDao.getReserveSeatList(rezNo);
		
		Map<String, Object> rMap = new HashMap<String, Object>();
		rMap.put("reserveDetail", reserveDetail);
		rMap.put("reserveSeatList", reserveSeatList);
		
		return rMap;
	}
	
//	예매 좌석 부분 취소 기능
	public void deleteReserveSeat (int selseatNo) {
		System.out.println("ReservationService deleteReserveSeat 실행");
		reservationDao.deleteReserveSeat(selseatNo);
		notireqService.notiSend(selseatNo);
		
		System.out.println("리저브 서비스 selseatNo "+selseatNo);
	}

	

	
	
	
	
} // The end of ReservationService
