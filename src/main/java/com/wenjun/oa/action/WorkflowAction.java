package com.wenjun.oa.action;

import com.wenjun.oa.bean.ApplyType;
import com.wenjun.oa.bean.LeaveBean;
import com.wenjun.oa.bean.Message;
import com.wenjun.oa.bean.User;
import com.wenjun.oa.service.WorkflowService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

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
    public String submitUI(Map map) throws Exception {
        Date currentDate = new Date();
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
        String date = sf.format(currentDate);
        map.put("currentDate", date);

        return "flow/submitUI";
    }

    /** 提交申请 */
    @RequestMapping("/flow_submit.action")
    public String submit(LeaveBean leave,HttpSession session) throws Exception {
        // 封装申请信息
        System.out.println(leave);
        leave.setUserId(getCurrentUser(session).getId());

        // 调用业务方法（保存申请信息，并启动流程开始流转）
        workflowService.save(leave);
        workflowService.submit(leave);
        return "redirect:/flow_leaveList.action";// 成功后转到"我的申请查询"
    }

    /** 我的申请查询 */
    @RequestMapping("/flow_leaveList.action")
    public String myApplicationList() throws Exception {
        return "flow/leaveList";
    }

    // ===================================审批人===================================

    /** 待我审批（我的 [消息/任务] 列表） */
    @RequestMapping("/flow_myMessageList.action")
    public String myMessageList(Map map,HttpSession session) throws Exception {

        List<Message> messagesList = workflowService.getMessageList(getCurrentUser(session));
        map.put("messageList", messagesList);
        return "flow/myMessageList";
    }

    /** 审批处理页面 */
    @RequestMapping("/flow_approveUI.action")
    public String approveUI() throws Exception {
        return "flow/approveUI";
    }

    /** 审批处理 */
    @RequestMapping("/flow_approve.action")
    public String approve() throws Exception {

        //....

        return "redirect:/flow_myMessageList.action";// // 成功后转到待我审批页面

    }

    /** 查看流转记录(查看自己审批过的记录) */
    @RequestMapping("/flow_approveHistory.action")
    public String approveHistory() throws Exception {
        //准备数据


        return "flow/approveHistory";
    }




    private User getCurrentUser(HttpSession session){
        User user = (User) session.getAttribute("user");
        return user;
    }



}
