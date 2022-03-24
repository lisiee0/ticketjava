package com.ticketjava.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import com.ticketjava.util.MailAuth;
import com.ticketjava.util.PasswordHash;

@Service
public class MailService {

	/* 비동기 이메일 */
	@Async
	public void sendMailAuth(String email, HttpSession session) {
		String authKey = PasswordHash.getSalt(); // 16자리 랜덤 문자열
		session.setAttribute(email, authKey);
		MailAuth.sendMail(email, authKey);
	}

	
	public String checkMailAuth(Map<String, Object> map, HttpSession session) {
		String email = (String)map.get("email");		// 입력한 이메일
		String inputKey = (String)map.get("authKey");	// 입력한 인증번호
		String authKey = (String)session.getAttribute(email);	// 세션에 저장된 인증번호
		
		if(email == null || inputKey == null || authKey == null || !authKey.equals(inputKey) ) // null이 있거나 인증번호가 일치하지 않으면
			return "fail";
		
		else {
			session.removeAttribute(email);
			return "success"; 
		}
		
	}

	
	

}
