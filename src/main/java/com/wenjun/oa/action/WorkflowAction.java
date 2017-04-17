package com.wenjun.oa.action;

import com.wenjun.oa.bean.*;
import com.wenjun.oa.service.LeaveApproverService;
import com.wenjun.oa.service.MessageService;
import com.wenjun.oa.service.UserService;
import com.wenjun.oa.service.WorkflowService;
import com.wenjun.oa.service.impl.LeaveApproverServiceImpl;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by wangli0 on 2017/4/14.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */

@Controller
@Scope("prototype")
public class WorkflowAction {

    @Resource
    private WorkflowService workflowService ;

    @Resource
    private MessageService messageService ;

    @Resource
    private UserService userService;

    @Resource
    private LeaveApproverService leaveApproverService;

    // ===================================申请人===================================

    /** 申请类型选择（列表:请假 加班 报销 出差 外出 物品） */
    @RequestMapping("/flow_applyTypeListUI")
    public String applyTypeListUI(Map map) throws Exception {
//        轻轻松松走完流程审核
        List<ApplyType> list = new ArrayList<ApplyType>();
        list.add(new ApplyType("请假", ""));
        list.add(new ApplyType("加班", ""));
        list.add(new ApplyType("报销", ""));
        list.add(new ApplyType("出差", ""));
        list.add(new ApplyType("外出", ""));
        list.add(new ApplyType("物品", ""));

        map.put("applyTypeList", list);

        return "flow/applyTypeListUI";
    }

    /** 提交申请页面 */
    @RequestMapping("/flow_submitUI.action")
    public String submitUI(Map map,HttpSession session) throws Exception {
        Date currentDate = new Date();
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
        String date = sf.format(currentDate);
        map.put("currentDate", date);

        User user = getCurrentUser(session);
        List<User> approvers = workflowService.getApproversByDepart(user,user.getDepartment());
        for (User approver : approvers) {

            Set<Role> roles  = approver.getRoles();
            StringBuffer stringBuffer = new StringBuffer();
            for (Role r : roles) {
                stringBuffer.append(r.getName()+",");
            }
            String rolesName  =  stringBuffer.toString();
            approver.setRolesName(rolesName.substring(0,rolesName.length()-1));

        }


        map.put("approvers", approvers);
        return "flow/submitUI";
    }

    /** 提交申请 */
    @RequestMapping("/flow_submit.action")
    public String submit(LeaveBean leave,HttpSession session) throws Exception {
        // 封装申请信息
        User user = getCurrentUser(session);

        leave.setCreateTime(new Date());
        leave.setUserId(user.getId());

        // 调用业务方法（保存申请信息，并启动流程开始流转）
        workflowService.save(leave);
        workflowService.submit(leave,user.getDepartment());

        //发送通知
        String approverStr= leave.getApproverid();
        String approvers [] = approverStr.split(",");

        messageService.sendMessage(leave.getId(),user.getName()+"发来一条消息需要您的处理",approvers);

        return "redirect:/flow_leaveList.action";// 成功后转到"我的申请查询"
    }

    /** 我的申请查询 */
    @RequestMapping("/flow_leaveList.action")
    public String flow_leaveList(HttpSession session,Map map) throws Exception {
        User user = getCurrentUser(session);
        System.out.println("user" + user);
        List<LeaveBean> list = workflowService.getLeaveListByUser(user.getId());
        map.put("leaveList", list);

        return "flow/leaveList";
    }

    // ===================================审批人===================================

    /** 待我审批（我的 [消息/任务] 列表） */
    @RequestMapping("/flow_myMessageList.action")
    public String myMessageList(Map map,boolean disable,HttpSession session) throws Exception {

        List<Message> messagesList = messageService.getMessageList(getCurrentUser(session),disable);
        map.put("messageList", messagesList);
        return "flow/myMessageList";
    }

    /** 审批处理页面 */
    @RequestMapping("/flow_approveUI.action")
    public String approveUI(Long messageId,Map map) throws Exception {
        Message message = messageService.getById(messageId);

        Long leaveId = message.getLeaveId();
        LeaveBean leaveBean = workflowService.getById(leaveId);

        Long userId = message.getUserId();
        User leaveUser = userService.getById(userId);


        map.put("message", message);
        map.put("leaveBean", leaveBean);
        map.put("leaveUser", leaveUser);
        return "flow/approveUI";
    }

    /** 审批处理 */
    @RequestMapping("/flow_approve.action")
    public String approve(Long messageId,LeaveApprover model) throws Exception {
        Message message = messageService.getById(messageId);
        message.setDisable(true);
        messageService.update(message);

        leaveApproverService.save(model);

        return "redirect:/flow_myMessageList.action";// // 成功后转到待我审批页面

    }


    private User getCurrentUser(HttpSession session){
        User user = (User) session.getAttribute("user");
        return user;
    }



}
