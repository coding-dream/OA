package com.wenjun.oa.mail;

/**
 * 邮件信息类
 * @author Limitless
 * @version 1.0
 */
public class Sender {

    private String mailServerHost; // 服务器的IP地址

    private String mailServerPort;  // 端口号

    private String fromAddress;    // 邮件的发送者地址

    private String userName;    // 发送者 用户名

    private String password;    // 发送者密码

    private String[] toAddress;    //邮件的接收者

    private String subject;    // 邮件主题

    private String content;    // 邮件内容


    public String getMailServerHost() {
        return mailServerHost;
    }

    public void setMailServerHost(String mailServerHost) {
        this.mailServerHost = mailServerHost;
    }

    public String getMailServerPort() {
        return mailServerPort;
    }

    public void setMailServerPort(String mailServerPort) {
        this.mailServerPort = mailServerPort;
    }

    public String getFromAddress() {
        return fromAddress;
    }

    public void setFromAddress(String fromAddress) {
        this.fromAddress = fromAddress;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String[] getToAddress() {
        return toAddress;
    }

    public void setToAddress(String[] toAddress) {
        this.toAddress = toAddress;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }


}
