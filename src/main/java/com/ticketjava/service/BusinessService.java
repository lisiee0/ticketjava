package com.ticketjava.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ticketjava.dao.BusinessDao;
import com.ticketjava.vo.BusinessVo;

@Service
public class BusinessService {

	@Autowired
	private BusinessDao BusinessDao;

	// 공연 추가
	public void bmAdd(BusinessVo vo, MultipartFile file) {
		System.out.println("bmAdd.FileService()");

		String saveDir = "C:\\javaStudy\\upload";

		// 정보 추출
		// 파일관련 정보 추출

		// 원본파일이름
		String orgName = file.getOriginalFilename();

		// 확장자
		String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));

		// 저장파일이름
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

		// 파일패스 생성
		String filePath = saveDir + "\\" + saveName;
		
		//파일 저장
		try {
			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);
			bout.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	// 공연 목록 불러오기
	public List<BusinessVo> getList(){
		return BusinessDao.getBmList();
	}
	

}
