package com.ticketjava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ticketjava.vo.NotificationVo;

@Repository
public class NotificationDao {

	@Autowired
	private SqlSession sqlSession;

	public void insert(NotificationVo notificationVo) {
		sqlSession.insert("notification.insert", notificationVo);
		
	}

	public List<NotificationVo> selectByUser(int userNo) {
		return sqlSession.selectList("notification.selectByUser", userNo);
	}

	public int deleteNoti(int notiNo) {
		return sqlSession.delete("notification.deleteNoti", notiNo);
	}

	public void updateRead(int notiNo) {
		sqlSession.update("notification.updateRead", notiNo);
	}

	public int selectUnread(int userNo) {
		return sqlSession.selectOne("notification.selectUnread", userNo);
	}
	
	
	
}
