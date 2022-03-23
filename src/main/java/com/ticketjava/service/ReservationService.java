package com.ticketjava.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.ReservationDao;
import com.ticketjava.dao.SelseatDao;
import com.ticketjava.vo.ReservationVo;
import com.ticketjava.vo.ReserveDetailVo;
import com.ticketjava.vo.RezProdInfoVo;
import com.ticketjava.vo.SelseatVo;

@Service
public class ReservationService {

	@Autowired
	private ReservationDao reservationDao;
	
	@Autowired
	private SelseatDao selseatDao;

	@Autowired
	private NotificationService notificationService;
	
	public int preoccupy(ReservationVo reservationVo, int userNo) {
		List<SelseatVo> selseatList = reservationVo.getSelseatList();
		for(SelseatVo selseatVo : selseatList) {
			Map <String, Object> map = new HashMap<>();
			map.put("selseatVo", selseatVo);
			map.put("reservationVo", reservationVo);
			int count = selseatDao.selectOccupyForPre(map);
			if(count > 0)
				return -1;
		}
		
		reservationVo.setUserNo(userNo);
		reservationDao.insertPre(reservationVo);
		int rezNo = reservationVo.getRezNo();
		
		
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
	public void deleteReserveSeat (List<Integer> selseatNo) {
		System.out.println("ReservationService deleteReserveSeat 실행");
		
		for (int i= 0; i<selseatNo.size(); i++) {
			reservationDao.deleteReserveSeat(selseatNo.get(i));
			notificationService.notiSend(selseatNo.get(i));
		}
	}
	

	public ReservationVo checkRezHistory(ReservationVo reservationVo, int userNo) {
		reservationVo.setUserNo(userNo);
		return reservationDao.selectHistory(reservationVo);
	}

	

	
	
	
	
} // The end of ReservationService
