package com.ticketjava.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import com.ticketjava.util.MailAuth;
import com.ticketjava.util.PasswordHash;

@Service
public class MailService {

	@Async
	public void sendMailAuth(String email, HttpSession session) {
		String authKey = PasswordHash.getSalt();
		session.setAttribute(email, authKey);
		MailAuth.sendMail(email, authKey);
	}

	public String checkMailAuth(Map<String, Object> map, HttpSession session) {
		String email = (String)map.get("email");
		String inputKey = (String)map.get("authKey");
		String authKey = (String)session.getAttribute(email);
		
		if(email == null || inputKey == null || authKey == null)
			return "fail";
		
		
		if(authKey.equals(inputKey)) {
			session.removeAttribute(email);
			return "success"; 
		}
		else {
			return "fail";
		}
	}

	
	

}
