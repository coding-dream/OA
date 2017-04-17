package com.wenjun.oa.service;

import com.wenjun.oa.base.BaseDao;
import com.wenjun.oa.bean.Department;
import com.wenjun.oa.bean.LeaveBean;
import com.wenjun.oa.bean.User;

import java.util.List;

/**
 * Created by wangli0 on 2017/4/14.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
public interface WorkflowService extends BaseDao<LeaveBean>{
    /**
     * 提交申请：
     *
     * 1，保存申请信息
     *
     * 2，启动流程开始流转
     *
     */
    void submit(LeaveBean leave,Department depart);

    List<LeaveBean> getLeaveListByUser(Long id);

    List<User> getApproversByDepart(User user, Department department);

}
