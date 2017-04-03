package com.wenjun.oa.test;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by wangli0 on 2017/4/3.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */

@ControllerAdvice
public class TestExceptionHandler {

    @ExceptionHandler({Exception.class})
    public ModelAndView handleXXException(Exception ex){
        System.out.println("=====handleXXException=====");
        ModelAndView mv = new ModelAndView("error");
        mv.addObject("ex",ex);
        return mv;
    }

}
