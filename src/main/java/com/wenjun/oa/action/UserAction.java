package com.wenjun.oa.action;

import com.wenjun.oa.bean.Privilege;
import com.wenjun.oa.bean.User;
import com.wenjun.oa.service.UserService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;


/**
 * Created by wangli0 on 2017/3/31.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */

@Controller
@Scope("prototype")
public class UserAction {

    @Resource
    protected UserService userService;


    //登录页面
    @RequestMapping("/user_loginUI.action")
    public String loginUI(HttpServletResponse response){
        return "user/loginUI";
    }

    //登录
    @RequestMapping("/user_login.action")
    public String login(User user, HttpSession session ) {

        if (session.getAttribute("user")!=null) {
            //已经登陆过
            return "home/index";// 后台主界面
        }

        User u  = userService.findByNameAndPassword(user.getLoginName(),user.getPassword());
        if (u == null) {
            return "user/loginUI";
        } else {
            session.setAttribute("user", u);

            //准备权限数据
            List<Privilege> topPrivilegeList = (List<Privilege>) session.getServletContext().getAttribute("topPrivilegeList");

            List<Privilege> copyPrivileges = userService.preparePrivileges(user,topPrivilegeList);
            session.setAttribute("privileges", copyPrivileges );

            System.out.println("privileges:"+copyPrivileges );

            Integer online = (Integer) session.getServletContext().getAttribute("online");
            if (online == null) {
                session.getServletContext().setAttribute("online", 1);
            }else{
                online++;
                session.getServletContext().setAttribute("online",online);
            }

            return "home/index";// 后台主界面
        }
    }

    /**
     * 注销
     */
    @RequestMapping("/user_logout.action")
    public String logout(HttpSession session) {
        // http://stackoverflow.com/questions/18209233/spring-mvc-how-to-remove-session-attribute
        session.invalidate();

        Integer online = (Integer) session.getServletContext().getAttribute("online");
        if (null !=online) {
            online--;
            session.getServletContext().setAttribute("online",online);
        }

        return "user/logout";
    }

}
