package com.ticketjava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.NotiDataVo;
import com.ticketjava.vo.NotireqVo;

@Repository
public class NotireqDao {

	@Autowired
	private SqlSession sqlSession;

	public void insertNotireq(NotireqVo notireqVo) {
		sqlSession.insert("notireq.insertNotireq", notireqVo);
		
	}

	public NotireqVo selectReq(NotireqVo notireqVo) {
		return sqlSession.selectOne("notireq.selectReq", notireqVo);
	}

	public int deleteReq(NotireqVo notireqVo) {
		return sqlSession.delete("notireq.deleteReq", notireqVo);
	}

	public List<NotireqVo> selectReqList(int userNo) {
		return sqlSession.selectList("notireq.selectReqList", userNo);
	}

	public int updateStatus(NotireqVo notireqVo) {
		return sqlSession.update("notireq.updateStatus", notireqVo);
	}

	public List<NotireqVo> selectTargetUser(NotiDataVo notiDataVo) {
		return sqlSession.selectList("notireq.selectTargetUser", notiDataVo);
	}

	public void updateNotiTimes(List<NotireqVo> notireqList) {
		sqlSession.update("notireq.updateNotiTimes", notireqList);
		
	}

	public void deleteDoneReq(List<NotireqVo> notireqList) {
		sqlSession.delete("notireq.deleteDoneReq", notireqList);
	}
}
