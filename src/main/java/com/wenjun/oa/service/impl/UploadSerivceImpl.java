package com.wenjun.oa.service.impl;

import com.wenjun.oa.base.BaseDaoImpl;
import com.wenjun.oa.bean.Photo;
import com.wenjun.oa.service.UploadService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by wangli0 on 2017/4/16.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */

@Transactional
@Service
public class UploadSerivceImpl extends BaseDaoImpl<Photo> implements UploadService {

    @Resource
    private SessionFactory sessionFactory;

    @Override
    public Class getEntityClass() {
        return Photo.class;
    }


    @Override
    public List<Photo> findOwnPhoto(Long id) {
        return getCurrentSession().createQuery("FROM Photo p WHERE p.id = ?")
                .setParameter(0, id)
                .list();
    }

    public Session getCurrentSession(){
        return  sessionFactory.getCurrentSession();
    }

}
