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
import com.ticketjava.dao.HallDao;
import com.ticketjava.dao.ProductDao;
import com.ticketjava.dao.SeatpriceDao;
import com.ticketjava.dao.TheaterDao;
import com.ticketjava.vo.DetailVo;
import com.ticketjava.vo.DiscountVo;
import com.ticketjava.vo.HallVo;
import com.ticketjava.vo.ProductVo;
import com.ticketjava.vo.SeatpriceVo;
import com.ticketjava.vo.TheaterVo;

@Service
public class BusinessService {

	@Autowired
	private ProductDao pd;
	@Autowired
	private DetailDao td;
	@Autowired
	private DiscountDao dd;
	@Autowired
	private HallDao hd;
	@Autowired
	private SeatpriceDao sd;
	@Autowired
	private TheaterDao thd;

	// 공연 목록 불러오기
	public List<ProductVo> getProductList() {
		System.out.println("BusinessServiece > bmInquiry");

		return pd.getProductList();
	}

	// 공연 목록 불러오기
	public List<HallVo> bmHallList() {
		System.out.println("BusinessServiece > bmAddSearch");

		return hd.bmHallList();
	}

	// 공연 업로드 (파일 제외)
	public void productUpload(ProductVo productVo, DetailVo detailVo, TheaterVo theaterVo) {
		System.out.println("BusinessServiece > productUpload");

		// productDao로 값을 넘김
		pd.productUpload(productVo);
		System.out.println("BusinessServiece > productUpload");

		// detailVo 테이블의 prodNo를 productVo 테이블의 prodNo로 설정.
		int prodNo = productVo.getProdNo();
		detailVo.setProdNo(prodNo);
		System.out.println("BusinessServiece > setProdNo");

		// detailDao로 값을 넘김
		td.detailNoAdd(detailVo);
		System.out.println("BusinessServiece > detailNoAdd");

		// seatPriceDao로 값을 넘김
		List<SeatpriceVo> seatpriceList = productVo.getSeatpriceList();

		for (SeatpriceVo seatpriceVo : seatpriceList) {
			seatpriceVo.setProdNo(prodNo);
			sd.seatpriceAdd(seatpriceVo);
		}
		;
		System.out.println("BusinessServiece > seatpriceList");

		// discountDao로 값을 넘김
		List<DiscountVo> discountList = productVo.getProductDisList();

		for (DiscountVo discountVo : discountList) {
			discountVo.setProdNo(prodNo);
			dd.alwaysdisAdd(discountVo);
		}
		;
		System.out.println("BusinessServiece > discountList");
	}

	// 공연 파일 업로드
	public void productFileUpload(MultipartFile file, ProductVo productVo, DetailVo detailVo, int order) {
		System.out.println("BusinessServiece > productFileUpload()");

		// 파일업로드
		String saveDir = "C:\\javaStudy\\upload";

		// 원본파일이름
		String orgName = file.getOriginalFilename();

		// 확장자
		String exName = orgName.substring(orgName.lastIndexOf("."));

		// 저장파일이름
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

		// 파일패스 생성
		String filePath = saveDir + "\\" + saveName;

		// 포스터 이미지 설정
		productVo.setPosterPath(filePath);
		detailVo.setProdPath(filePath);
		detailVo.setCastingPath(filePath);
		detailVo.setAddedPath(filePath);

		// 파일 저장
		try {
			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);
			bout.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

		System.out.println("order name : " + order + ", 파일 이름: " + file.getOriginalFilename());

		// db 저장
		if (order == 1) { // order : 1
			pd.posterAdd(productVo);
			System.out.println(order + "번 파일을 Dao로 넘겼습니다.");
		} else if (order == 2) {
			td.prodAdd(detailVo);
			System.out.println(order + "번 파일을 Dao로 넘겼습니다.");
		} else if (order == 3) {
			td.castingAdd(detailVo);
			System.out.println(order + "번 파일을 Dao로 넘겼습니다.");
		} else if (order == 4) {
			td.addedAdd(detailVo);
			System.out.println(order + "번 파일을 Dao로 넘겼습니다.");
		} else {
			System.out.println("오류 발생");
		}
	}

	// 공연수정 불러오기
	public Map<String, Object> bmgetProduct(int prodNo) {
		System.out.println("BusinessServiece > bmgetProduct()");

		Map<String, Object> bmProductMap = new HashMap<String, Object>();

		// 공연정보
		ProductVo bmGetProduct = pd.bmGetProduct(prodNo);
		bmProductMap.put("bmGetProduct", bmGetProduct);

		// 시설정보 가져오기
		List<HallVo> bmGetHallList = hd.bmHallList();
		bmProductMap.put("bmGetHallList", bmGetHallList);

		// 상세정보 리스트 가져오기
		DetailVo bmGetDetail = td.bmgetDetail(prodNo);
		bmProductMap.put("bmGetDetail", bmGetDetail);

		// 상시할인 리스트 가져오기
		List<SeatpriceVo> seatpriceList = sd.bmgetSeatPrice(prodNo);
		bmProductMap.put("seatpriceList", seatpriceList);

		// 좌석 등급별 리스트 가져오기
		List<DiscountVo> productDisList = dd.bmgetDis(prodNo);
		bmProductMap.put("productDisList", productDisList);

		System.out.println("=============================");
		System.out.println(bmGetProduct);
		System.out.println(bmGetHallList);
		System.out.println(bmGetDetail);
		System.out.println(seatpriceList);
		System.out.println(productDisList);

		return bmProductMap;
	}

	// 공연정보 수정 등록
	public int bmModify(ProductVo productVo) {
		System.out.println("BusinessServiece > bmModify()");

		// ProductDao로 값을 넘기
		return pd.bmproModify(productVo);

	}
	// 공연수정 파일정보 불러오기
//	public ProductVo bmgetDetail(int prodNo) {
//		System.out.println("BusinessServiece > bmgetDetail()");
//
//		return td.bmgetDetail(prodNo);
//	}

	// 공연 목록 삭제
//	public void productDelete(ProductVo productVo) {
//		System.out.println("BusinessService > productDelete");
//
//		pd.productDelete(productVo);
//	}

	public Map<String, Object> selectProdDiscount(int prodNo) {

		Map<String, Object> prodDis = new HashMap<String, Object>();
		prodDis.put("dList", dd.selectProdDiscount(prodNo));
		prodDis.put("prodHallName", dd.selectProdHall(prodNo));

		return prodDis;
	}

}
