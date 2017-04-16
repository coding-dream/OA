package com.wenjun.oa.service.impl;

import com.wenjun.oa.base.BaseDaoImpl;
import com.wenjun.oa.bean.LeaveBean;
import com.wenjun.oa.bean.Message;
import com.wenjun.oa.bean.User;
import com.wenjun.oa.service.WorkflowService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by wangli0 on 2017/4/14.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
@Service
public class WorkflowServiceImpl extends BaseDaoImpl<LeaveBean> implements WorkflowService {

    @Override
    public Class getEntityClass() {
        return LeaveBean.class;
    }


    @Override
    public void submit(LeaveBean leave) {


    }

    @Override
    public List<Message> getMessageList(User currentUser) {
        return null;
    }
}
