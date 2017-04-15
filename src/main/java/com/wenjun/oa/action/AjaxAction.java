package com.wenjun.oa.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.PrintWriter;

/**
 * Created by wangli0 on 2017/4/15.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
@Controller
@Scope("prototype")
public class AjaxAction {

    @RequestMapping("/ajax1.action")
    public void ajax(PrintWriter writer){
        String json = "{'name':'deeper','age':'20'}";
        writer.write(json);
        writer.flush();
        writer.close();
    }

    @ResponseBody
    @RequestMapping("/ajax2.action")
    public String ajax(){
        String jsonStr = "{\"name\": \"deeper\",\"email\": \"xx@qq.com\"}";
        return jsonStr;
    }



}
