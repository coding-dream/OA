package com.wenjun.oa.base;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.List;

/**
 * Created by wangli0 on 2017/4/3.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */

// @Transactional注解可以被继承，即对子类也有效
@Transactional
public abstract class BaseDaoImpl<T> implements BaseDao<T> {

    @Resource
    private SessionFactory sessionFactory;


    @Override
    public void save(T entity) {
        getSession().save(entity);
    }

    @Override
    public void delete(Long id) {
        Object obj = getSession().get(getEntityClass(), id);
        getSession().delete(obj);
    }

    @Override
    public void update(T entity) {
        getSession().update(entity);
    }

    @Override
    public T getById(Long id) {
        if (id == null) {
            return null;
        }
        return (T) getSession().get(getEntityClass(), id);
    }

    @Override
    public List<T> getByIds(Long ...ids) {
        if (ids == null || ids.length == 0) {
            return Collections.EMPTY_LIST;
        }

        return getSession().createQuery("FROM " + getEntityClass().getSimpleName() + " WHERE id IN (:ids)")
                .setParameterList("ids",ids)
                .list();
    }

    @Override
    public List<T> findAll() {
        return getSession().createQuery(//
                "FROM " + getEntityClass().getSimpleName())//
                .list();
    }

    @Override
    public abstract Class getEntityClass();

    /**
     * 获取当前可用的Session
     * @return
     */
    protected Session getSession() {
        return sessionFactory.getCurrentSession();
    }
}
