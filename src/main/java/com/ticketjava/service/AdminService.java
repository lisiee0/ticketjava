package com.ticketjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.HallDao;
import com.ticketjava.dao.NoticeDao;
import com.ticketjava.dao.TheaterDao;
import com.ticketjava.vo.HallVo;
import com.ticketjava.vo.NoticeVo;
import com.ticketjava.vo.TheaterVo;

@Service
public class AdminService {
	
	@Autowired
	private TheaterDao td;
	@Autowired
	private HallDao hd;
	@Autowired
	private NoticeDao nd;
	
	public void theaterAdd(TheaterVo vo) {
		// 임시데이터 넣기
		vo.setLatitude("0");
		vo.setLongitude("0");
		vo.setLogoPath("path");
		
		
		td.theaterAdd(vo);
		td.selectTheater(vo); // 추가한 theater.no 가져오기

		String[] hallArray= vo.getHallName().split(","); // 시설명 나누기
		
		if (hallArray.length>1) { // 시설명이 2개이상일때
			for (int i= 0; i<hallArray.length; i++) {
				vo.setHallName(hallArray[i]);
				hd.hallAdd(vo);
			}
		}
		else { // 시설명이 1개일때
			hd.hallAdd(vo);
		}	
	}
	
	public List<HallVo> getList() {
		return hd.getHallList();
	}
	
	
	public HallVo getHall(int hallNo) {
		return hd.getHall(hallNo);
	}
	
	
	public void modifyHall(HallVo vo) {
		hd.modifyHall(vo);
	}
	
	
	public void deleteHall(HallVo vo) {
		hd.deleteHall(vo);
	}
	
	
	public List<NoticeVo> getNoticeList() {
		return nd.getNoticeList();
	}
	
	
	public List<TheaterVo> selectList() {
		return td.selectList();
	}
	
	
	public void noticeAdd(NoticeVo vo) {
		nd.noticeAdd(vo);
	}
	
	
	public NoticeVo getNotice(int noticeNo) {
		return nd.getNotice(noticeNo);
	}
	
	public void noticeModify(NoticeVo vo) {
		nd.noticeModify(vo);
	}
	
	public void noticeDelete(int noticeNo) {
		nd.noticeDelete(noticeNo);
	}
	
}
