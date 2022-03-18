package com.ticketjava.util;

public class MailAuth {

	public static void sendMail(String email, String authKey) {
		String contents = "인증번호는 "+authKey+"입니다.";
		JavaMail.sendMail(email, "이메일 인증", contents);
	}
}
