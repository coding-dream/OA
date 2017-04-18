package com.wenjun.oa.action;

import com.wenjun.oa.bean.Notice;
import com.wenjun.oa.service.NoticeService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by wangli0 on 2017/4/4.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
@Controller
@Scope("prototype")
public class HomeAction  {
    @Resource
    private NoticeService noticeService ;

    @RequestMapping("/home_index.action")
    public String index() throws Exception {
        return "home/index";
    }
    @RequestMapping("/home_top.action")
    public String top() throws Exception {
        return "home/top";
    }
    @RequestMapping("/home_bottom.action")
    public String bottom() throws Exception {
        return "home/bottom";
    }
    @RequestMapping("/home_left.action")
    public String left() throws Exception {
        return "home/left";
    }
    @RequestMapping("/home_right.action")
    public String right(Map map) throws Exception {
        //准备公告信息
        List<Notice> noticeList = noticeService.findAll();
        if (noticeList.size() > 0) {
            Notice notice = noticeList.get(0);
            map.put("content", notice.getContent());
        }

        return "home/right";
    }

}
