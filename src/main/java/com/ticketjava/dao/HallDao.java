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
		return sqlSession.selectList("hall.getHallList");
	}
	
	
	public HallVo getHall(int hallNo) {
		return sqlSession.selectOne("hall.getHall", hallNo);
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
	
	
	// 페이징 리스트
	public List<HallVo> paginList(int startRnum, int endRnum) {
		
		Map<String, Integer> map= new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		return sqlSession.selectList("hall.pagingList", map);
	}
}
