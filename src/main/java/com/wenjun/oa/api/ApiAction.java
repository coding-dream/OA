package com.wenjun.oa.api;

import com.google.gson.Gson;
import com.wenjun.oa.api.bean.PageBean;
import com.wenjun.oa.api.bean.ResultBean;
import com.wenjun.oa.bean.User;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by wangli0 on 2017/4/15.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
@Controller
@Scope("prototype")
public class ApiAction {
    //提供给前端的接口 RESTFUL风格,前后端分离。因为毕设时间关系，此模块待定

    @Resource
    private ApiService apiService;

    @RequestMapping(value="/api/user/{id}", method= RequestMethod.GET)
    public String add(@PathVariable("id") Integer id){
        ResultBean<List<User>> resultBean = apiService.getResultById(id);
        String responseJson = new Gson().toJson(resultBean);
        return responseJson ;
    }
    @RequestMapping(value="/api/user/{page}", method= RequestMethod.GET)
    public String list(@PathVariable("page") Integer page){
        // Android客户端的获取 ResultBean<PageBean<T>> resultBean = new Gson().fromJson(responseJson , getType());
        ResultBean<PageBean<User>> resultBean = apiService.getResultsByPage(page);
        String responseJson  = new Gson().toJson(resultBean);
        return responseJson ;
    }



}
