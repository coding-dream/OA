package com.wenjun.oa.service.impl;

import com.wenjun.oa.base.BaseDaoImpl;
import com.wenjun.oa.bean.Department;
import com.wenjun.oa.service.DepartmentService;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by wangli0 on 2017/4/8.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */

@Service
public class DepartmentServiceImpl extends BaseDaoImpl<Department> implements DepartmentService {

    @Resource
    private SessionFactory sessionFactory;

    @Override
    public Class getEntityClass() {
        return Department.class;
    }

    @Override
    public List<Department> findTopList() {
        return sessionFactory.getCurrentSession().createQuery(//
                "FROM Department d WHERE d.parent IS NULL")//
                .list();
    }

    public List<Department> findChildren(Long parentId) {
        return sessionFactory.getCurrentSession().createQuery(//
                "FROM Department d WHERE d.parent.id=?")//
                .setParameter(0, parentId)//
                .list();
    }


}
