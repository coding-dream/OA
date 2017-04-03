package com.wenjun.oa.test;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by wangli0 on 2017/4/2.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
public class TestLog {
    private ApplicationContext ac = new ClassPathXmlApplicationContext("beans.xml");

    private static Log log = LogFactory.getLog(TestLog.class);

    public static void main(String args[]) throws Exception {
        log.debug("这是debug信息");
        log.info("这是info信息");
        log.warn("这是warn信息");
        log.error("这是error信息");
        log.fatal("这是fatal信息");
    }
}
