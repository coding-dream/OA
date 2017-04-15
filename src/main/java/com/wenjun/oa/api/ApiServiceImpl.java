package com.wenjun.oa.api;

import com.wenjun.oa.api.bean.PageBean;
import com.wenjun.oa.api.bean.ResultBean;
import com.wenjun.oa.bean.User;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by wangli0 on 2017/4/15.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */

@Service
public class ApiServiceImpl implements ApiService{

    @Override
    public ResultBean<PageBean<User>> getResultsByPage(Integer page) {
        return null;
    }

    @Override
    public ResultBean<List<User>> getResultById(Integer id) {
        return null;
    }
}
