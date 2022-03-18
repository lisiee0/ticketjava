package com.ticketjava.util;

import java.util.List;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class JavaMail {

	public static void sendMail(String email, String title, String contents) {

		String mailProtocol = "smtp";
		String mailHost = "smtp.gmail.com";
		String mailPort = "587";

		String mailId = "ticketjava3@gmail.com"; // 구글계정
		String mailPassword = "wdrmelfxfpsibuno"; // 구글계정 비밀번호
		
		String fromName = "티켓자바";
		String fromEmail = "ticketjava3@gmail.com"; // 보내는 사람 메일
		
		String toName = "";
		String toEmail = email;

		String mailTitle = title;
		String mailContents = contents;

		String debugMode = "false";
		String authMode = "true";

		try {

			boolean debug = Boolean.valueOf(debugMode).booleanValue();
			Properties mailProps = new Properties();

			mailProps.put("mail.smtp.starttls.enable", "true");
			mailProps.setProperty("mail.transport.protocol", mailProtocol);
			mailProps.put("mail.debug", debugMode);
			mailProps.put("mail.smtp.host", mailHost);
			mailProps.put("mail.smtp.port", mailPort);
			mailProps.put("mail.smtp.connectiontimeout", "5000");
			mailProps.put("mail.smtp.timeout", "5000");
			mailProps.put("mail.smtp.auth", authMode);
			mailProps.put("mail.smtp.ssl.protocols", "TLSv1.2");
			Session msgSession = null;

			if (authMode.equals("true")) {
				Authenticator auth = new MyAuthentication(mailId, mailPassword);
				msgSession = Session.getInstance(mailProps, auth);
			} else {
				msgSession = Session.getInstance(mailProps, null);
			}

			msgSession.setDebug(debug);
			MimeMessage msg = new MimeMessage(msgSession);

			msg.setFrom(new InternetAddress(fromEmail, fromName));
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail, toName));
			msg.setSubject(mailTitle);
			msg.setContent(mailContents, "text/html; charset=utf-8");


			Transport t = msgSession.getTransport(mailProtocol);

			try {
				t.connect();
				t.sendMessage(msg, msg.getAllRecipients());
			} finally {
				t.close();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public static void sendMail(List<String> emailList, String title  ,String contents) {

		String mailProtocol = "smtp";
		String mailHost = "smtp.gmail.com";
		String mailPort = "587";

		String mailId = "ticketjava3@gmail.com"; // 구글계정
		String mailPassword = "wdrmelfxfpsibuno"; // 구글계정 비밀번호
		
		String fromName = "티켓자바";
		String fromEmail = "ticketjava3@gmail.com"; // 보내는 사람 메일
		
		String mailTitle = title;
		String mailContents = contents;

		String debugMode = "false";
		String authMode = "true";

		try {

			boolean debug = Boolean.valueOf(debugMode).booleanValue();
			Properties mailProps = new Properties();

			mailProps.put("mail.smtp.starttls.enable", "true");
			mailProps.setProperty("mail.transport.protocol", mailProtocol);
			mailProps.put("mail.debug", debugMode);
			mailProps.put("mail.smtp.host", mailHost);
			mailProps.put("mail.smtp.port", mailPort);
			mailProps.put("mail.smtp.connectiontimeout", "5000");
			mailProps.put("mail.smtp.timeout", "5000");
			mailProps.put("mail.smtp.auth", authMode);
			mailProps.put("mail.smtp.ssl.protocols", "TLSv1.2");
			Session msgSession = null;

			if (authMode.equals("true")) {
				Authenticator auth = new MyAuthentication(mailId, mailPassword);
				msgSession = Session.getInstance(mailProps, auth);
			} else {
				msgSession = Session.getInstance(mailProps, null);
			}

			msgSession.setDebug(debug);
			MimeMessage msg = new MimeMessage(msgSession);
			msg.setFrom(new InternetAddress(fromEmail, fromName));
			
			int emailSize = emailList.size();
			InternetAddress[] addArray = new InternetAddress[emailSize];
			
			for(int i=0; i<addArray.length; i++) {
				addArray[i] = new InternetAddress(emailList.get(i));
			}
			
			msg.setRecipients(Message.RecipientType.TO, addArray);
			msg.setSubject(mailTitle);
			msg.setContent(mailContents, "text/html; charset=utf-8");
			// 스태틱함수로 직접 보내지 않고 객체를 이용해서 보내고 객체를 닫아준다.

			Transport t = msgSession.getTransport(mailProtocol);

			try {
				t.connect();
				t.sendMessage(msg, msg.getAllRecipients());
			} finally {
				t.close();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

class MyAuthentication extends Authenticator {

    PasswordAuthentication pa;
    public MyAuthentication(String mailId, String mailPass) {
        pa = new PasswordAuthentication(mailId, mailPass);  
    }

    public PasswordAuthentication getPasswordAuthentication() {
        return pa;
    }
	
}
