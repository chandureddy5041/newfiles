package com.icz.services;

import java.util.Map;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ForgotPassMail extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = -6621394663610184516L;
	Map<String, Object> session;

	public Map<String, Object> getSession() {
		return session;
	}

	public String sendMsg(String to) {

		final String from = "kclinkmail@gmail.com";
		final String pass = "kclink@123";
		String body = "<img src='http://www.indiancareerzone.com/image/logonew1(edited).png'>" + "<p> Hello, </p>"
				+ "<p> To Reset your password please click the following link. </p>"
				+ "<p> <a href='http://localhost:8080/ICZone/resetpassword.jsp" + "'>Reset Password</a></p>";

		session = ActionContext.getContext().getSession();
		session.put("to", to);

		// Get the session object
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

		Session session1 = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from, pass);
			}
		});

		try {
			MimeMessage message = new MimeMessage(session1);

			message.setFrom(new InternetAddress(from));// change accordingly
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject("Indian Career Zone Reset Password");
			message.setContent(body, "text/html; charset=utf-8");

			// send message
			Transport.send(message);

			System.out.println("message sent successfully");
			return "success";
		} catch (MessagingException e) {
			return "error";
		}

	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;

	}
}