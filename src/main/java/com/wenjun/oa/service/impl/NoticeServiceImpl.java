package com.wenjun.oa.service.impl;

import com.wenjun.oa.base.BaseDaoImpl;
import com.wenjun.oa.bean.Notice;
import com.wenjun.oa.service.NoticeService;
import org.springframework.stereotype.Service;

/**
 * Created by wangli0 on 2017/4/18.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
@Service
public class NoticeServiceImpl extends BaseDaoImpl<Notice> implements NoticeService {

    @Override
    public Class getEntityClass() {
        return Notice.class;
    }
}
