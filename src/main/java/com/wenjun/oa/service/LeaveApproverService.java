package com.wenjun.oa.service;

import com.wenjun.oa.base.BaseDao;
import com.wenjun.oa.bean.LeaveApprover;

import java.util.List;

/**
 * Created by wangli0 on 2017/4/17.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
public interface LeaveApproverService extends BaseDao<LeaveApprover>{


    List<LeaveApprover> getByLeaveId(Long id);
}
