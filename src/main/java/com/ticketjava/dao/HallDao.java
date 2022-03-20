package com.ticketjava.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.HallVo;
import com.ticketjava.vo.TheaterVo;

@Repository
public class HallDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public void hallAdd(TheaterVo vo) {
		sqlSession.insert("hall.hallAdd", vo);
	}
	
	
	public List<HallVo> getHallList() {
		System.out.println();
		
		return sqlSession.selectList("hall.getHallList");
	}
	
	//공연장 리스트
	public List<HallVo> bmHallList() {
		System.out.println("HallDao > bmHallList");
		
		return sqlSession.selectList("hall.bmhallList");
	}
	
	
	public HallVo getHall(int hallNo) {
		return sqlSession.selectOne("hall.getHall", hallNo);
	}
	
	
	// 상품번호로 공연장정보 불러오기
	public HallVo getHallbyprodNo(int prodNo) {
		return sqlSession.selectOne("hall.getHallbyprodNo", prodNo);
	}
	
	public void modifyHall(HallVo vo) {
		sqlSession.update("hall.update", vo);
	}
	
	
	public void deleteHall(HallVo vo) {
		sqlSession.delete("hall.delete", vo);
	}
	
	public int totalCnt() {
		return sqlSession.selectOne("hall.totalCnt");
	}
	
	
	// 검색결과 카운트
	public int resultCnt(String key) {
		return sqlSession.selectOne("hall.resultCnt", key);
	}
	
	
	// 홀리스트 페이징
	public List<HallVo> pagingList(int startRnum, int endRnum) {
		
		Map<String, Integer> map= new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		return sqlSession.selectList("hall.pagingList", map);
	}
	
	// 검색결과 페이징
	public List<HallVo> pagingResultList(String key, int startRnum, int endRnum) {
		
		Map<String, Object> map= new HashMap<String, Object>();
		map.put("key", key);
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		return sqlSession.selectList("hall.searchResult", map);
	}
	
	
}
