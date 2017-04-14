package com.wenjun.oa.action;

import com.wenjun.oa.bean.ApplyType;
import com.wenjun.oa.service.WorkflowService;
import com.wenjun.oa.service.impl.WorkflowServiceImpl;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.ArrayList;
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

        return "applyTypeListUI";
    }


    






    // ===================================审批人===================================













}
