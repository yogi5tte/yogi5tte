package com.itbank.service;

import java.io.File;
import java.io.IOException;

import java.util.Properties;
import java.util.Random;
import java.util.Scanner;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;

@Service
public class MailService {

	// servletContext().getRealPath("경로") 형식을 대신하여 파일 자원을 불러올 수 있다
	@Value("classpath:account.txt")
	private Resource account;

	public String sendConfirm(String answer) throws MessagingException, IOException {
		
		//메일 서버에 접속할 계정 정보를 파일에서 불러오기
		File f = account.getFile();
		Scanner sc = new Scanner(f);
		String data = null;
		
		while(sc.hasNextLine()) {
			data = sc.nextLine();
		}
		sc.close();
		String host = "smtp.naver.com";	//Simple Mail Transfer Protocol
		int port = 465;
		 String serverId = data.split("/")[0];
		 String serverPw = data.split("/")[1];
		//메일 서버에 내용을 보내는 코드
		Properties props = System.getProperties();
		//Properties : map 타입
		props.put("mail.smtp.host",host);
		props.put("mail.smtp.port",port);
		props.put("mail.smtp.auth","true");
		props.put("mail.smtp.ssl.enable","true");
		props.put("mail.smtp.ssl.trust",host);
		
		Session mailSession = Session.getDefaultInstance(props,new Authenticator() {
			String un = serverId;
			String pw = serverPw;
			
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(un, pw);
			}
		});
		
		mailSession.setDebug(true);  	//메일 세션이 진행되는 내용을 디버그 형태로 콘솔에 출력하게끔 설정
		
		//난수 생성//
		Random ran = new Random();
		int createNum = 0;
		String ranNum = "";
		int letter = 4;
		String resultNum ="";
		for(int i=0; i<letter; i++) {
			createNum = ran.nextInt(9);
			ranNum = Integer.toString(createNum);
			resultNum += ranNum;
		}
		
		//System.out.println("난수 : "+ resultNum);
		//Message 구성
		Message mimeMessage = new MimeMessage(mailSession);

		mimeMessage.setFrom(new InternetAddress("vlvkdksgo@naver.com")); //wmc1205@naver.com
		mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(answer));
		mimeMessage.setSubject("스프링 메일 전송 테스트");
		mimeMessage.setText(resultNum);
//		mimeMessage.setContent(obj,type);
		
		Transport.send(mimeMessage);
		
		
		return resultNum;//성공 시		
	}
	
}