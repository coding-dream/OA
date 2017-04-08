package com.wenjun.oa.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;

/**
 * Created by wangli0 on 2017/3/31.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */

@Controller
public class UserAction {

    @RequestMapping("/hello")
    public String hello(HttpServletResponse response){

        return "user/loginUI";
    }


}
