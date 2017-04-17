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
public class LeaveApprover { //审批表

    public static final int STATUS_PROCESS = 0; //处理中
    public static final int STATUS_AGREE = 1; //同意
    public static final int STATUS_REFUSE = 2;//拒绝

    @Id
    @Column(name = "approver_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String summary;// 说明

    private int status; // 1.同意 2.拒绝

    private Date createTime;//创建时间

    private Date updateTime;//更新时间

    private Long leaveId;//请假表ID

    private Long userId; //审批人ID

    private String username; //审批人Name

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Long getLeaveId() {
        return leaveId;
    }

    public void setLeaveId(Long leaveId) {
        this.leaveId = leaveId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
