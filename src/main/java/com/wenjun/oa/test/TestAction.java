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
@Scope("prototype")
public class TestAction {

    @Resource
    private UserService userService;

    @RequestMapping("/test")
    public String test(Map map){
        System.out.println("====save user====");
        User user = new User();
        user.setName("xiaoming");

        List<User> list = userService.getByIds(new Long[]{1L, 2L,3L});
        map.put("list", list);
        return "test";
    }


}