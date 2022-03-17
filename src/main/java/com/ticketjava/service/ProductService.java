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
import com.ticketjava.vo.Paging;
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
	public Map<String, Object> typeList(int prodType, int crtPage) {
		
		int listCnt= 8; // 한 페이지당 글 개수
		int startRnum= (crtPage-1)*listCnt +1; // 시작글 번호
		int endRnum= (startRnum+listCnt) -1; // 마지막글 번호
		
		Paging paging= new Paging();
		paging.setPageNo(crtPage);
		paging.setPageSize(listCnt);
		paging.setTotalCount(pd.prodTypeCnt(prodType));
		
		Map<String, Object> typeList= new HashMap<String, Object>();
		typeList.put("topList", pd.topList(prodType));
		typeList.put("allList", pd.pagingList(prodType, startRnum, endRnum));
		typeList.put("paging", paging);

		return typeList;
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
	
	// 검색결과 페이지
	public Map<String, Object> searchResult(String key, int crtPage) {
		
		int listCnt= 8; // 한 페이지당 글 개수
		int startRnum= (crtPage-1)*listCnt +1; // 시작글 번호
		int endRnum= (startRnum+listCnt) -1; // 마지막글 번호
		
		Paging paging= new Paging();
		paging.setPageNo(crtPage);
		paging.setPageSize(listCnt);
		paging.setTotalCount(pd.countResult(key));
		
		Map<String, Object> rMap=new HashMap<String, Object>();
		rMap.put("vo", pd.pagingResult(key, startRnum, endRnum));
		rMap.put("count", pd.countResult(key));
		rMap.put("key", key);
		rMap.put("paging", paging);

		return rMap;
	}
	
	// 모든상품 리스트 (지역페이지)
	public Map<String, Object> allprod(int no, int crtPage) {
		
		int listCnt= 12; // 한 페이지당 글 개수
		int startRnum= (crtPage-1)*listCnt +1; // 시작글 번호
		int endRnum= (startRnum+listCnt) -1; // 마지막글 번호
		
		Paging paging= new Paging();
		paging.setPageNo(crtPage);
		paging.setPageSize(listCnt);
		paging.setTotalCount(pd.allprodCnt(no));
		
		Map<String, Object> aMap= new HashMap<String, Object>();
		aMap.put("vo", pd.allprod(no, startRnum, endRnum));
		aMap.put("paging", paging);

		return aMap;
	}
	
	// prodType별 TOP5 (랭킹페이지)
	public Map<String, Object> ranking() {
		
		Map<String, Object> rankMap= new HashMap<String, Object>();
		rankMap.put("musical", pd.rank(1));
		rankMap.put("play", pd.rank(2));
		rankMap.put("concert", pd.rank(3));
		rankMap.put("sports", pd.rank(4));
		rankMap.put("exhibition", pd.rank(5));
		
		return rankMap;
	}

}
