package com.wenjun.oa.test;

import com.wenjun.oa.bean.User;
import com.wenjun.oa.service.UserService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by wangli0 on 20
 * 17/4/2.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
@Controller
@Scope("prototype")  //当前Action的实例保证是多例模式，否则并发时容易产生问题，每一次请求均产生一个新的Action实例，如果使用单例模式，则容易产生某个用户的数据返回给另一个用户造成严重的bug
public class TestAction {

    @Resource
    private UserService userService;

    @RequestMapping("/testUI.action")
    public String test(Map map){
        return "test";
    }

    @RequestMapping("/test.action")
    public String testUI(Long age,User user){

        System.out.println("age:"+age);
        System.out.println("user:"+user);
        return "test";
    }


}