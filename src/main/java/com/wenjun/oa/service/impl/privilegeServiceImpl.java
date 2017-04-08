package com.wenjun.oa.service.impl;

import com.wenjun.oa.base.BaseDao;
import com.wenjun.oa.base.BaseDaoImpl;
import com.wenjun.oa.bean.Privilege;
import com.wenjun.oa.service.PrivilegeService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by wangli0 on 2017/4/8.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */

@Service
public class privilegeServiceImpl extends BaseDaoImpl<Privilege> implements PrivilegeService {

    @Override
    public Class getEntityClass() {
        return Privilege.class;
    }
    public List<Privilege> findTopList() {
        return getSession().createQuery(//
                "FROM Privilege p WHERE p.parent IS NULL")//
                .list();
    }

    public List<String> getAllPrivilegeUrls() {
        return getSession().createQuery(//
                "SELECT DISTINCT p.url FROM Privilege p WHERE p.url IS NOT NULL")//
                .list();
    }
}
