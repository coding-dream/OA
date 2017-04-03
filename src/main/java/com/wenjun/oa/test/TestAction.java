package com.wenjun.oa.test;

import com.wenjun.oa.service.UserService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * Created by wangli0 on 2017/4/2.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
@Controller
@Scope("prototype")
public class TestAction {

    @Resource
    private TestService testService;
    @Resource
    private UserService userService;

    @RequestMapping("/test")
    public String test(){
        System.out.println("====save user====");
        testService.saveUsers();
        userService.list();
        return "myView";
    }

}