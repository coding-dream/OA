package com.wenjun.oa.service;

import com.wenjun.oa.base.BaseDao;
import com.wenjun.oa.bean.Department;

import java.util.List;

/**
 * Created by wangli0 on 2017/4/8.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
public interface DepartmentService extends BaseDao<Department>{

    List<Department> findTopList();

    List<Department> findChildren(Long parentId);

}
