package com.wenjun.oa.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by wangli0 on 2017/4/14.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
@Entity
public class Message { // 通知消息表
    @Id
    @Column(name = "message_id")
    private int id;

    private int ringsId;//铃声Id,资源文件

    private int type;//消息类型:1.评论，2.赞，3.审批 等等，发邮件的形式,如简书

    private String title;//消息标题

    private String url;// 消息的url

    private int watch;//1 未看，2 已看

    private int createTime ;// 创建时间

    private int userId; // 该消息的归属者，即通知谁处理此消息

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRingsId() {
        return ringsId;
    }

    public void setRingsId(int ringsId) {
        this.ringsId = ringsId;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getWatch() {
        return watch;
    }

    public void setWatch(int watch) {
        this.watch = watch;
    }

    public int getCreateTime() {
        return createTime;
    }

    public void setCreateTime(int createTime) {
        this.createTime = createTime;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}
