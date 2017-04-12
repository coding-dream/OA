package com.wenjun.oa.base;

import com.wenjun.oa.bean.PageBean;

import java.util.List;

/**
 * Created by wangli0 on 2017/4/3.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */


public interface BaseDao<T> {
    void save(T entity);

    void delete(Long id);

    void update(T entity);

    T getById(Long id);

    List<T> getByIds(Long[] ids);

    List<T> findAll();

    Class getEntityClass();

    // 公共的查询分页信息的方法
    PageBean getPageBean(int currentPage, int pageSize, String hql, List<Object> parameters);


}
