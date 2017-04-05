package com.wenjun.oa.service.impl;

import com.wenjun.oa.base.BaseDaoImpl;
import com.wenjun.oa.bean.User;
import com.wenjun.oa.service.UserService;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends BaseDaoImpl<User> implements UserService {

	@Override
	public Class getEntityClass() {
		return User.class;
	}

	@Override
	public void list() {
		System.out.println("==========list===========");
	}
}
