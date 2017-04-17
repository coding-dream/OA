package com.wenjun.oa.service;

import com.wenjun.oa.base.BaseDao;
import com.wenjun.oa.bean.Message;
import com.wenjun.oa.bean.User;

import java.util.List;

/**
 * Created by wangli0 on 2017/4/17.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
public interface MessageService extends BaseDao<Message>{

    /**
     * 查询我的消息列表
     *
     * @param currentUser
     * @return
     */
    List<Message> getMessageList(User currentUser,boolean disable);

    void sendMessage(Long leaveId,String title,String ...ids);

}
