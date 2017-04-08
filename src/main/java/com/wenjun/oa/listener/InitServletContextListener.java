package com.wenjun.oa.listener;

import com.wenjun.oa.bean.Privilege;
import com.wenjun.oa.service.PrivilegeService;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.List;

/**
 * Created by wangli0 on 2017/4/8.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
public class InitServletContextListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext application = sce.getServletContext();

        // 得到Service的实例对象
        ApplicationContext ac = WebApplicationContextUtils.getWebApplicationContext(application);
        PrivilegeService privilegeService = (PrivilegeService) ac.getBean("privilegeServiceImpl");

        // 准备所有顶级权限的集合（顶级菜单）
        List<Privilege> topPrivilegeList = privilegeService.findTopList();
        application.setAttribute("topPrivilegeList", topPrivilegeList);
        System.out.println("-- 已准备好顶级权限的数据 --");

        // 准备所有权限URL的集合
        List<String> allPrivilegeUrls = privilegeService.getAllPrivilegeUrls();
        application.setAttribute("allPrivilegeUrls", allPrivilegeUrls);
        System.out.println("-- 已准备好所有权限的URL数据 --");

    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}
