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

import com.ticketjava.vo.NotiDataVo;

public class NotiMail {

	public static void sendMail(List<String> emailList, NotiDataVo notiDataVo) {

		String mailProtocol = "smtp";
		String mailHost = "smtp.gmail.com";
		String mailPort = "587";

		String mailId = "ticketjava3@gmail.com"; // 구글계정
		String mailPassword = "wdrmelfxfpsibuno"; // 구글계정 비밀번호
		
		String fromName = "티켓자바";
		String fromEmail = "ticketjava3@gmail.com"; // 보내는 사람 메일
		
		String toName = "";
		String toEmail = ""; // 받는사람메일

		String mailTitle = "취소표 안내";
		String mailContents = "[취소표 안내] <br>"
				+ notiDataVo.getViewDate()+" "+notiDataVo.getShowTime()+" "+notiDataVo.getProdName()+" "+notiDataVo.getGrade().toUpperCase()+"석 "
				+ notiDataVo.getSection()+"구역 "+notiDataVo.getCol()+"열 "+notiDataVo.getNum()+"번 좌석 취소 안내 <br>"
				+ "<a href='http://localhost:8088/ticketjava/reservation/selectSeat?prodNo="+notiDataVo.getProdNo()+"&viewDate="+notiDataVo.getViewDate()+"'>예매 바로가기 링크</a>";

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
			msg.setContent(mailContents, "text/html; charset=euc-kr");
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

