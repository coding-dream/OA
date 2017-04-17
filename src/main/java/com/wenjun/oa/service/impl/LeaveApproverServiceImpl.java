package com.wenjun.oa.service.impl;

import com.wenjun.oa.base.BaseDaoImpl;
import com.wenjun.oa.bean.LeaveApprover;
import com.wenjun.oa.service.LeaveApproverService;
import org.springframework.stereotype.Service;

/**
 * Created by wangli0 on 2017/4/17.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */

@Service
public class LeaveApproverServiceImpl extends BaseDaoImpl<LeaveApprover> implements LeaveApproverService {

    @Override
    public Class getEntityClass() {
        return LeaveApprover.class;
    }
}
