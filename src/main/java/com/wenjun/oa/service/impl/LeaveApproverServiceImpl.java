package com.wenjun.oa.service.impl;

import com.wenjun.oa.base.BaseDaoImpl;
import com.wenjun.oa.bean.LeaveApprover;
import com.wenjun.oa.service.LeaveApproverService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by wangli0 on 2017/4/17.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */

@Service
public class LeaveApproverServiceImpl extends BaseDaoImpl<LeaveApprover> implements LeaveApproverService {

    @Resource
    private SessionFactory sessionFactory;
    @Override
    public Class getEntityClass() {
        return LeaveApprover.class;
    }

    @Override
    public List<LeaveApprover> getByLeaveId(Long id) {
        String sql = "FROM LeaveApprover lea WHERE lea.leaveId = ?";
        return getCurrentSession().createQuery(sql)
                .setParameter(0,id)
                .list();
    }

    public Session getCurrentSession(){
        return sessionFactory.getCurrentSession();
    }


}
