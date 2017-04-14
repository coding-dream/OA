package com.wenjun.oa.mail;

public class TestMail {

	public static void main(String[] args) {

		Sender sender = new Sender();

		sender.setMailServerHost("smtp.163.com"); //smtp.163.com,smtp.qq.com 邮件服务器主机
		sender.setMailServerPort("25"); // 服务器端口  SMTP:单单的邮件传输协议  端口：25

		sender.setUserName("xing467540096"); // 发送者用户名
		sender.setPassword("sbo95380231"); //　发送者密码
		sender.setFromAddress("xing467540096@163.com"); //发送者地址

		//mailInfo.setToAddress("xx@qq.com"); // 接收者地址
		String[] toAddress = {"353253642@qq.com"};
		sender.setToAddress(toAddress);

		String subject = "Hello tony"; // 主题

		String  content = "<a  href='http://baidu.com' >";
		content  += "<div style='width:650px;background-color:#DBDBFF;";
		content  += "text-align:center;color:red;font-size:20px;border:0 solid red;'>";
		content  +="欢迎来到上海迪士尼乐园<br />";
		content  +="limitless</a>";

		sender.setSubject(subject);
		sender.setContent(content);

		EmailManager smsManager = new EmailManager();// 发送邮件
		smsManager.send(sender, new EmailManager.Callback() {
			@Override
			public void success() {
				System.out.println("send success");
			}

			@Override
			public void error(Exception e) {
				e.printStackTrace();
			}
		});


	}

}
