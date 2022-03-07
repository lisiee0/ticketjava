package com.ticketjava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.NoticeVo;

@Repository
public class NoticeDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	public void noticeAdd(NoticeVo vo) {
		sqlSession.insert("notice.noticeAdd", vo);
	}
	
	
	public List<NoticeVo> getNoticeList() {
		return sqlSession.selectList("notice.getNoticeList");
	}
	
	
	public NoticeVo getNotice(int noticeNo) {
		return sqlSession.selectOne("notice.getNotice", noticeNo);
	}
	
	public void noticeModify(NoticeVo vo) {
		sqlSession.update("notice.noticeModify", vo);
	}
	
	public void noticeDelete(int noticeNo) {
		sqlSession.delete("notice.noticeDelete", noticeNo);
	}

}
