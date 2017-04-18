package com.wenjun.oa.action;

import com.wenjun.oa.bean.Notice;
import com.wenjun.oa.service.NoticeService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by wangli0 on 2017/4/18.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
@Controller
@Scope("prototype")
public class NoticeAction {
    @Resource
    private NoticeService noticeService;

    @RequestMapping("notice_update.action")
    public String addOrUpdate(String content,Map map) throws Exception {
        //update
        List<Notice> noticeList = noticeService.findAll();
        if (noticeList.size() > 0) {
            Notice notice = noticeList.get(0);
            notice.setContent(content);
            noticeService.update(notice);

            map.put("content", notice.getContent());
        }else{
            Notice notice = new Notice();
            notice.setContent(content);
            notice.setCreateTime(new Date());
            noticeService.save(notice);

            map.put("content", notice.getContent());
        }

        return "home/right";
    }


}
