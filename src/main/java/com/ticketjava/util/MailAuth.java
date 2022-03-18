package com.ticketjava.util;

public class MailAuth {

	public static void sendMail(String email, String authKey) {
		String contents = "인증번호는 <strong>"+authKey+"</strong> 입니다.";
		JavaMail.sendMail(email, "티켓자바 회원가입 이메일 인증번호입니다.", contents);
	}
}
