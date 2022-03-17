package com.ticketjava.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ticketjava.dao.HallDao;
import com.ticketjava.dao.NoticeDao;
import com.ticketjava.dao.TheaterDao;
import com.ticketjava.vo.HallVo;
import com.ticketjava.vo.NoticeVo;
import com.ticketjava.vo.Paging;
import com.ticketjava.vo.TheaterVo;

@Service
public class AdminService {
	
	@Autowired
	private TheaterDao td;
	@Autowired
	private HallDao hd;
	@Autowired
	private NoticeDao nd;
	
	
	public void theaterAdd(TheaterVo vo, MultipartFile file) {
		// 임시데이터 넣기
		vo.setLatitude("0");
		vo.setLongitude("0");
		
		// 공연장 로고 저장
		String saveDir= "C:\\javaStudy\\upload";
		String orgName= file.getOriginalFilename(); // 원본파일명
		String exName= orgName.substring(orgName.lastIndexOf(".")); // 확장자
		String saveName= System.currentTimeMillis()+UUID.randomUUID().toString()+exName; // 저장파일명
		String filePath= saveDir+"\\"+saveName;
		
		// 업로드
		try {
			byte[] fileData= file.getBytes();
			OutputStream out= new FileOutputStream(filePath);
			BufferedOutputStream bout= new BufferedOutputStream(out);
			
			bout.write(fileData);
			bout.close();
		}
		catch (IOException e) {
			e.printStackTrace();
		}
		
		// 공연장로고 설정
		vo.setLogoPath(saveName);
		
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
	
	
	public Map<String, Object> getList(int crtPage) {
		
		int listCnt= 9; // 한 페이지당 글 개수
		int startRnum= (crtPage-1)*listCnt +1; // 시작글 번호
		int endRnum= (startRnum+listCnt) -1; // 마지막글 번호
		
		Paging paging= new Paging();
		paging.setPageNo(crtPage);
		paging.setPageSize(listCnt);
		paging.setTotalCount(hd.totalCnt());
		
		Map<String, Object> hMap= new HashMap<String, Object>();
		hMap.put("hList", hd.pagingList(startRnum, endRnum));
		hMap.put("paging", paging);

		return hMap;
	}
	
	
	public HallVo getHall(int hallNo) {
		return hd.getHall(hallNo);
	}
	
	
	public void modifyHall(HallVo vo, MultipartFile file) {
		
		if (file != null) { // 로고파일 수정
			
			String saveDir= "C:\\javaStudy\\upload";
			String orgName= file.getOriginalFilename(); // 원본파일명
			String exName= orgName.substring(orgName.lastIndexOf(".")); // 확장자
			String saveName= System.currentTimeMillis()+UUID.randomUUID().toString()+exName; // 저장파일명
			String filePath= saveDir+"\\"+saveName;
			
			// 업로드
			try {
				byte[] fileData= file.getBytes();
				OutputStream out= new FileOutputStream(filePath);
				BufferedOutputStream bout= new BufferedOutputStream(out);
				
				bout.write(fileData);
				bout.close();
			}
			catch (IOException e) {
				e.printStackTrace();
			}
			
			vo.setLogoPath(saveName);
		}
		else {

		}

		td.modifyTheater(vo);
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
