package com.ticketjava.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ticketjava.service.MailService;

@Controller
@RequestMapping("/mail")
public class MailController {

	@Autowired
	private MailService mailService;
	
	/* 회원가입 메일 인증 보내기 */
	@ResponseBody
	@PostMapping("/sendMailAuth")
	public String sendMailAuth(@RequestParam("email") String email,
						   	   HttpSession session) {
		mailService.sendMailAuth(email, session);
		return "";
	}
	
	/* 메일 인증번호 확인 */
	@ResponseBody
	@PostMapping("/checkMailAuth")
	public String checkMailAuth(@RequestBody Map<String, Object> map,
								HttpSession session) {
		System.out.println("인증키 확인");
		return mailService.checkMailAuth(map, session);
	}
	
}
