package com.wenjun.oa.service;

import com.wenjun.oa.base.BaseDao;
import com.wenjun.oa.bean.Privilege;

import java.util.List;

/**
 * Created by wangli0 on 2017/4/8.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
public interface PrivilegeService extends BaseDao<Privilege>{
    /**
     * 查询所有顶级权限的集合
     *
     * @return
     */
    List<Privilege> findTopList();

    /**
     * 查询所有权限URL的集合（不能有null，不能重复）
     *
     * @return
     */
    List<String> getAllPrivilegeUrls();

}
