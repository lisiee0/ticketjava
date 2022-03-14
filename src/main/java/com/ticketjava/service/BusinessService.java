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

import com.ticketjava.dao.DetailDao;
import com.ticketjava.dao.DiscountDao;
import com.ticketjava.dao.ProductDao;
import com.ticketjava.vo.DetailVo;
import com.ticketjava.vo.DiscountVo;
import com.ticketjava.vo.ProductVo;

@Service
public class BusinessService {

	@Autowired
	private ProductDao pd;
	@Autowired
	private DetailDao td;
	@Autowired
	private DiscountDao dd;

	// 공연 목록 불러오기
	public List<ProductVo> getProductList() {
		System.out.println("BusinessServiece/bmInquiry");

		return pd.getProductList();
	}

	// 공연 추가
	public void productUpload(MultipartFile[] file, ProductVo productVo, DetailVo detailVo, DiscountVo discountVo) {
		System.out.println("BusinessServiece/productUpload()");

		// 파일업로드
		String saveDir = "C:\\javaStudy\\upload";

		// MultipartFile[] file
		for (int i = 0; i < file.length; i++) {
			System.out.println(i + "번째 파일");

			// 파일관련 정보 추출

			// 원본파일이름
			String orgName = file[i].getOriginalFilename();

			// 확장자
			String exName = orgName.substring(orgName.lastIndexOf("."));

			// 저장파일이름
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

			// 파일패스 생성
			String filePath = saveDir + "\\" + saveName;

			// 파일 변수 가져오기
			// ProductVo
			productVo.setPosterPath(filePath);

			// DetailVo
			detailVo.setAddedPath(filePath);
			detailVo.setCastingPath(filePath);
			detailVo.setProdPath(filePath);

			// 파일 저장
			try {
				byte[] fileData = file[i].getBytes();
				OutputStream out = new FileOutputStream(filePath);
				BufferedOutputStream bout = new BufferedOutputStream(out);

				bout.write(fileData);
				bout.close();
			} catch (IOException e) {
				e.printStackTrace();
			}

			System.out.println("파일 이름: " + file[i].getOriginalFilename());

			// db 저장
			pd.productUpload(productVo);
			td.detailUpload(detailVo);
			dd.addAlwaysDis(discountVo);
		}

	}
	
	//공연 노출 여부
	public void bmStatus( ProductVo productVo) {
		System.out.println("BusinessService/bmStatus");
		
		
	}
	
	
	// 공연 목록 삭제
	public void productDelete(ProductVo productVo) {
		System.out.println("BusinessService/productDelete");

		pd.productDelete(productVo);
	}

	public Map<String, Object> selectProdDiscount(int prodNo) {

		Map<String, Object> prodDis = new HashMap<String, Object>();
		prodDis.put("dList", dd.selectProdDiscount(prodNo));
		prodDis.put("prodHallName", dd.selectProdHall(prodNo));

		return prodDis;
	}

}
