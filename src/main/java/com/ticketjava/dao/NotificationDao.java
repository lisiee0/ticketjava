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

	public void insertList(List<NotificationVo> notificationList) {
		sqlSession.insert("notification.insertList", notificationList);
		
	}

	public List<NotificationVo> selectByUser(int userNo) {
		return sqlSession.selectList("notification.selectByUser", userNo);
	}
	
	
	
}
