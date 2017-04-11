package com.wenjun.oa.service;

import com.wenjun.oa.base.BaseDao;
import com.wenjun.oa.bean.Privilege;
import com.wenjun.oa.bean.User;

import java.util.List;

/**
 * Created by wangli0 on 2017/4/3.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
public interface UserService extends BaseDao<User>{

    User findByNameAndPassword(String loginName,String password);

    List<Privilege> preparePrivileges(User user, List<Privilege> topList);

    boolean hasPrivilegeByName(String name, User user);
}
