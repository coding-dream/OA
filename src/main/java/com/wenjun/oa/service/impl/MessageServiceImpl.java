package com.wenjun.oa.service.impl;

import com.wenjun.oa.base.BaseDaoImpl;
import com.wenjun.oa.bean.Message;
import com.wenjun.oa.bean.User;
import com.wenjun.oa.service.MessageService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * Created by wangli0 on 2017/4/17.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */

@Service
public class MessageServiceImpl extends BaseDaoImpl<Message> implements MessageService {

    @Resource
    private SessionFactory sessionFactory;

    @Override
    public Class getEntityClass() {
        return Message.class;
    }


    @Override
    public List<Message> getMessageList(User currentUser,boolean disable) {

        return getCurrentSession()
                .createQuery("FROM Message m WHERE m.userId = ? AND m.disable = ?")
                .setParameter(0, currentUser.getId())
                .setParameter(1,disable)  // 仅仅显示 未审批的消息
                .list();
    }

    //发送Message消息
    @Override
    public void sendMessage(Long leaveId,String title,String...userIds){
        //发送邮件
        Message message = null;
        // 添加Message 表记录
        for (String userid : userIds) {
            if (!"".equals(userid) && null != userid) {
                message = new Message();
                message.setTitle(title);
                message.setCreateTime(new Date());
                message.setWatch(Message.MESSAGE_NO_WATCHED);
                message.setType(Message.MESSAGE_TYPE_TASK);

                message.setLeaveId(leaveId);
                message.setUserId(Long.parseLong(userid));

                getCurrentSession().save(message);

            }
        }

    }


    public Session getCurrentSession(){
        return sessionFactory.getCurrentSession();
    }

}
