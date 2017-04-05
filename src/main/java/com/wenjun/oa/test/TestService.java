package com.wenjun.oa.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by wangli0 on 2017/4/2.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */

@Service
public class TestService {

    @Resource
    private SessionFactory sessionFactory;

    @Transactional
    public void saveUsers() {
        Session session = sessionFactory.getCurrentSession();


    }



}
