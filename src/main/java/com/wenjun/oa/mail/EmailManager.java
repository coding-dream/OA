package com.wenjun.oa.mail;

import javax.activation.CommandMap;
import javax.activation.MailcapCommandMap;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.util.Date;
import java.util.Properties;

/**
 * 邮件发送的核心类
 * @author Limitless
 * @version 1.0
 */
public class EmailManager {

	//回调接口
	interface Callback{
		void success();
		void error(Exception e);
	}

	class Auth extends Authenticator{
		private String username;
		private String password;
		Auth(String username,String password){
			this.username = username;
			this.password = password;
		}
		@Override
		protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(username,password);
		}
	}


	/**
	 * 邮件发送的核心方法
	 * @param sender 邮件信息类
	 * @return Boolean
	 */
	public void send(Sender sender,Callback callback){

		//身份验证
		Authenticator authenticator = new Auth(sender.getUserName(),sender.getPassword());

		// 获得邮件会话属性
		Properties properties = new Properties();
		properties.put("mail.smtp.host",sender.getMailServerHost());  // 主机地址
		properties.put("mail.smtp.port",sender.getMailServerPort()); //端口号
		properties.put("mail.smtp.auth","true"); // 设置发送授权认证
		// 根据邮件会话属性和密码验证器构造一个发送邮件的session
		Session sendMailSession = Session.getDefaultInstance(properties, authenticator);

		// 定义发送邮件的主体

		try {
			// 根据session创建一个邮件消息
			Message mailMessage = new MimeMessage(sendMailSession);

			// 创建发送者地址
			Address from = new InternetAddress(sender.getFromAddress());
			// 设置邮件消息的发送者
			mailMessage.setFrom(from);

			//创建接收者地址
			int len = sender.getToAddress().length;
			Address[] to = new InternetAddress[len];
			for(int i=0;i<len;i++){
				to[i] = new InternetAddress(sender.getToAddress()[i]);
			}
			// Address to = new InternetAddress(mailInfo.getToAddress());

			// 设置邮件消息的接收者
//			mailMessage.setRecipient(Message.RecipientType.TO, to);
			mailMessage.setRecipients(Message.RecipientType.TO, to);

			// 邮件主题
			mailMessage.setSubject(sender.getSubject());
			// 设置邮件发送的时间
			mailMessage.setSentDate(new Date());

			// 设置邮件消息的主要内容
			//String mailContent = mailInfo.getContent();

			// 创建一个容器
			Multipart mainPart = new MimeMultipart();

			// 创建一个包含html内容的MimeBodyPart
			BodyPart html = new MimeBodyPart();
			// 设置html邮件内容
			html.setContent(sender.getContent(),"text/html;charset=utf-8");
			mainPart.addBodyPart(html);  // 将html内容放置到 容器里

			/**
			 * 创建附件
			 BodyPart attach = new MimeBodyPart();
			 DataSource source = new FileDataSource("D:\\icon.jpg"); //加载要作为附件的文件
			 attach.setDataHandler(new DataHandler(source));
			 attach.setFileName("Tony.jpg");
			 mainPart.addBodyPart(attach); // 将附件放置到容器里
			 */

			 mailMessage.setContent(mainPart); // 设置内容

			// 设置发送html格式的邮件头信息
			MailcapCommandMap mc = (MailcapCommandMap)CommandMap.getDefaultCommandMap();
			mc.addMailcap("text/html;; x-java-content-handler=com.sun.mail.handlers.text_html");
			mc.addMailcap("text/xml;; x-java-content-handler=com.sun.mail.handlers.text_xml");
			mc.addMailcap("text/plain;; x-java-content-handler=com.sun.mail.handlers.text_plain");
			mc.addMailcap("multipart/*;; x-java-content-handler=com.sun.mail.handlers.multipart_mixed");
			mc.addMailcap("message/rfc822;; x-java-content-handler=com.sun.mail.handlers.message_rfc822");
			CommandMap.setDefaultCommandMap(mc);

			// 发送邮件
			Transport.send(mailMessage);
			//建立发送邮件的对象
			callback.success();
		} catch (Exception e) {
			callback.error(e);
		}

	}
}
