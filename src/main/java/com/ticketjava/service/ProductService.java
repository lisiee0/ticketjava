package com.ticketjava.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticketjava.dao.DetailDao;
import com.ticketjava.dao.NoticeDao;
import com.ticketjava.dao.ProductDao;
import com.ticketjava.dao.SeatpriceDao;
import com.ticketjava.dao.TheaterDao;
import com.ticketjava.vo.ProductVo;
import com.ticketjava.vo.TheaterVo;

@Service
public class ProductService {
	
	@Autowired
	private TheaterDao td;
	@Autowired
	private NoticeDao nd;
	@Autowired
	private ProductDao pd;
	@Autowired
	private SeatpriceDao sd;
	@Autowired
	private DetailDao dd;
	
	
	// prodType별 TOP4 리스트 & 모든상품 리스트
	public Map<String, Object> typeList(int prodType) {
		
		Map<String, Object> typeList= new HashMap<String, Object>();
		typeList.put("topList", pd.topList(prodType));
		typeList.put("allList", pd.allList(prodType));

		return typeList;
	}
	
	public Map<String, Object> sportsList(int prodType) {
		
		Map<String, Object> sportsList= new HashMap<String, Object>();
		sportsList.put("topList", pd.topList(prodType));
		sportsList.put("allList", pd.allList(prodType));
		
		return sportsList;
	}

	
	// '공연장'페이지 공연장리스트 & 공지사항리스트
	public Map<String, Object> getList() {
		
		Map<String, Object> listMap= new HashMap<String, Object>();
		listMap.put("tList", td.getTheaterList());
		listMap.put("nList", nd.getNoticeList());
		
		return listMap;
	}
	
	
	// 특정 상품 상세정보 불러오기
	public Map<String, Object> getProduct(int prodNo) {
		
		Map<String, Object> pMap= new HashMap<String, Object>();
		pMap.put("vo", pd.getProduct(prodNo));
		pMap.put("seatPrice", sd.selectList(prodNo));
		pMap.put("detail", dd.getDetail(prodNo));
		
		return pMap;
	}
	
	// 공연장 정보 불러오기
	public Map<String, Object> getTheater(TheaterVo vo) {
		
		Map<String, Object> tMap= new HashMap<String, Object>();
		tMap.put("vo", td.selectTheater(vo));
		tMap.put("top", pd.topListbyTheater(vo));
		tMap.put("avail", pd.availListbyTheater(vo));
		
		return tMap;
	}
	
	// 검색결과
	public Map<String, Object> searchResult(String key) {
		
		Map<String, Object> rMap=new HashMap<String, Object>();
		rMap.put("vo", pd.searchResult(key));
		rMap.put("count", pd.countResult(key));
		rMap.put("key", key);

		return rMap;
	}
	
	// 모든상품 리스트 (지역페이지)
	public List<ProductVo> allprod() {
		return pd.allprod();
	}

}
