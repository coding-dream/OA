package com.wenjun.oa.service;

import com.wenjun.oa.base.BaseDao;
import com.wenjun.oa.bean.User;
import org.springframework.stereotype.Service;

/**
 * Created by wangli0 on 2017/4/3.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
@Service
public interface UserService extends BaseDao<User>{
    public void list();



}
