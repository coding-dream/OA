package com.wenjun.oa.bean;

import javax.persistence.*;
import java.util.List;

/**
 * Created by wangli0 on 2017/4/17.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
@Entity
public class LeaveProgress {

    @Id
    @Column(name = "progress_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private List<String> results;

    private boolean done; // 是否完成

    private Long leaveId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<String> getResults() {
        return results;
    }

    public void setResults(List<String> results) {
        this.results = results;
    }

    public Long getLeaveId() {
        return leaveId;
    }

    public void setLeaveId(Long leaveId) {
        this.leaveId = leaveId;
    }

    public boolean isDone() {
        return done;
    }

    public void setDone(boolean done) {
        this.done = done;
    }
}
