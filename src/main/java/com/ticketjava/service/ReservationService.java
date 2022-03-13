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

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Service
public class ReservationService {

	@Autowired
	private ReservationDao reservationDao;
	
	@Autowired
	private SelseatDao selseatDao;

	public Map<String, Object> preoccupy(String data, HttpSession session) {
		Map<String, Object> map= new HashMap<>(); 
		UserVo authUser = (UserVo)session.getAttribute("AuthUser");
		JSONArray array = JSONArray.fromObject(data);
		JSONObject rezObj = (JSONObject)array.get(0);
		
		int prodNo = Integer.parseInt(String.valueOf(rezObj.get("prodNo")));
		String viewDate = (String)rezObj.get("viewDate");
		
		int userNo;
		if(authUser == null)
			userNo = 1;
		else 
			userNo = authUser.getUserNo();
		
		ReservationVo reservationVo = new ReservationVo();
		reservationVo.setUserNo(userNo);
		reservationVo.setProdNo(prodNo);
		reservationVo.setViewDate(viewDate);
		
		reservationDao.insertPre(reservationVo);
		map.put("rezNo", reservationVo.getRezNo());
		
		List<Integer> selseatNoList = new ArrayList<>();
		
		
		
		
		
		for(int i=1; i<array.size(); i++) {
			JSONObject selObj = (JSONObject)array.get(i);
			
			String grade = (String) selObj.get("grade");
			String section = (String) selObj.get("section");
			int col = Integer.parseInt(String.valueOf(selObj.get("col")));
			int num = Integer.parseInt(String.valueOf(selObj.get("num")));
			
			SelseatVo selseatVo = new SelseatVo();
			selseatVo.setRezNo(reservationVo.getRezNo());
			selseatVo.setGrade(grade);
			selseatVo.setSection(section);
			selseatVo.setCol(col);
			selseatVo.setNum(num);
			
			selseatDao.insertPre(selseatVo);
			selseatNoList.add(selseatVo.getSelseatNo());
		}
		map.put("selseatNoList", selseatNoList);
		
		return map;
		
	}

	public void preDel() {
		List<Integer> rezNoList = selseatDao.selectTimeOver();
		
		if(rezNoList.size() >0) {
			reservationDao.deletePre(rezNoList);
		}
	}


	public void modifyPayment(ReservationVo reservationVo) {
		reservationDao.updatePayment(reservationVo);
	}

	public Map<String, Object> confirmReservation(int rezNo, int[] selseatNo) {
		Map<String, Object> map = new HashMap<>();
		ReservationVo reservationVo = reservationDao.selectByRezNo(rezNo);
		map.put("rezVo", reservationVo);
		List<SelseatVo> selList = selseatDao.selectSelList(selseatNo);
		map.put("selList", selList);
		return map;
	}

	public void finalPayment(ReservationVo reservationVo) {
		reservationDao.updateInfo(reservationVo);
		selseatDao.updateStatus(reservationVo.getRezNo());	
		
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
	} 
	
	
	
	
} // The end of ReservationService
