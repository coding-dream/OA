package com.wenjun.oa.service.impl;

import com.wenjun.oa.base.BaseDao;
import com.wenjun.oa.base.BaseDaoImpl;
import com.wenjun.oa.bean.User;
import com.wenjun.oa.service.UserMgService;
import org.springframework.stereotype.Service;

/**
 * Created by wangli0 on 2017/4/8.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
@Service
public class UserMgServiceImpl extends BaseDaoImpl<User> implements UserMgService {

    @Override
    public Class getEntityClass() {
        return User.class;
    }
}
