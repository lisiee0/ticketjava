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
	public void productUpload(MultipartFile[] file, ProductVo productVo, DetailVo detailVo) {
		System.out.println("BusinessServiece/FileService()");

		String saveDir = "C:\\javaStudy\\upload";
		
		//MultipartFile[] file
		for (int i = 0; i < file.length; i++) {
			System.out.println(i);
			
			// 파일관련 정보 추출

			// 원본파일이름
			String orgName = file[i].getOriginalFilename();
			
			// 확장자
			String exName = orgName.substring(orgName.lastIndexOf("."));

			// 저장파일이름
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

			// 파일패스 생성
			String filePath = saveDir + "\\" + saveName;

			// 파일 사이즈
			long fileSize = file[i].getSize();

			//파일 변수 가져오기
			ProductVo pvo = new ProductVo(productVo.getPosterPath());
			DetailVo dvo = new DetailVo(detailVo.getProdPath(), detailVo.getCastingPath(), detailVo.getAddedPath());
				

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

			// db 저장

			pd.productUpload(pvo);
			td.detailUpload(dvo);
			
			
			System.out.println(file[i].getOriginalFilename());

		}

	}
	// 공연 목록 수정 public void bmModify(ProductVo vo) { pd.bmModify(vo); }

	// 공연 목록 삭제 public void bmDelete (ProductVo vo) { pd.bmDelete(vo); }

	public Map<String, Object> selectProdDiscount(int prodNo) {

		Map<String, Object> prodDis = new HashMap<String, Object>();
		prodDis.put("dList", dd.selectProdDiscount(prodNo));
		prodDis.put("prodHallName", dd.selectProdHall(prodNo));

		return prodDis;
	}

}
