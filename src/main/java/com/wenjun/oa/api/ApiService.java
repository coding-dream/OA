package com.wenjun.oa.api;

import com.wenjun.oa.api.bean.PageBean;
import com.wenjun.oa.api.bean.ResultBean;
import com.wenjun.oa.bean.User;

import java.util.List;

/**
 * Created by wangli0 on 2017/4/15.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
public interface ApiService {

    ResultBean<PageBean<User>> getResultsByPage(Integer page);

    ResultBean<List<User>> getResultById(Integer id);
}
