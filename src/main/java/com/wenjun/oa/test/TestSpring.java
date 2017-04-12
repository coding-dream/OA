package com.wenjun.oa.test;

import com.wenjun.oa.bean.User;
import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by wangli0 on 2017/4/12.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
public class TestSpring {
    private static ApplicationContext ac = new ClassPathXmlApplicationContext("beans.xml");
    public static void main(String args[]) {
        SessionFactory sessionFactory = (SessionFactory) ac.getBean("sessionFactory");
        Session session = sessionFactory.openSession();

        String password = DigestUtils.md5Hex("admin");

        User user = new User();
        user.setName("管理员");
        user.setLoginName("admin");
        user.setPassword(password);
        session.save(user);
        session.close();

    }
}
