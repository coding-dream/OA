package com.wenjun.oa.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wangli0 on 2017/4/4.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
@Controller
@Scope("prototype")
public class HomeAction  {

    @RequestMapping("/index")
    public String index() throws Exception {
        return "home/index";
    }
    @RequestMapping("/top")
    public String top() throws Exception {
        return "home/top";
    }
    @RequestMapping("/bottom")
    public String bottom() throws Exception {
        return "home/bottom";
    }
    @RequestMapping("/left")
    public String left() throws Exception {
        return "home/left";
    }
    @RequestMapping("/right")
    public String right() throws Exception {
        return "home/right";
    }

}
