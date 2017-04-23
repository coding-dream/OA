package com.wenjun.oa.bean;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by wangli0 on 2017/4/14.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
@Entity
@Table(name = "wenjun_message")
public class Message  { // 通知消息表
    public static final int MESSAGE_NO_WATCHED = 1;
    public static final int MESSAGE_WATCHED = 2;

    public static final int MESSAGE_TYPE_TASK = 1; // 任务(审批任务)
    public static final int MESSAGE_TYPE_COMMENT = 2; //评论
    public static final int MESSAGE_TYPE_REMIND= 3;// 提醒(已被审批)

    @Id
    @Column(name = "message_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private int ringsId;//铃声Id,资源文件

    private int type;//消息类型:1.待审批，2.评论，3.已被xx审批 等等，发邮件的形式,如简书

    private String title;//消息标题

    private int watch;//1 未看，2 已看

    private Date createTime ;// 创建时间

    private Long userId; // 该消息的归属者，即通知谁处理此消息

    private Long leaveId;

    private boolean disable;// 已被处理，不可再次被处理

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
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

    public int getWatch() {
        return watch;
    }

    public Long getLeaveId() {
        return leaveId;
    }

    public void setLeaveId(Long leaveId) {
        this.leaveId = leaveId;
    }

    public void setWatch(int watch) {
        this.watch = watch;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Long getUserId() {
        return userId;
    }

    public boolean getDisable() {
        return disable;
    }

    public void setDisable(boolean disable) {
        this.disable = disable;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }
}
