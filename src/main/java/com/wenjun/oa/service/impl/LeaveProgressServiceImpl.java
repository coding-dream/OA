package com.wenjun.oa.service.impl;

import com.wenjun.oa.base.BaseDaoImpl;
import com.wenjun.oa.bean.LeaveProgress;
import com.wenjun.oa.service.LeaveProgressService;
import org.springframework.stereotype.Service;

/**
 * Created by wangli0 on 2017/4/17.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
@Service
public class LeaveProgressServiceImpl extends BaseDaoImpl<LeaveProgress> implements LeaveProgressService {

    @Override
    public Class getEntityClass() {
        return LeaveProgress.class;
    }
}
