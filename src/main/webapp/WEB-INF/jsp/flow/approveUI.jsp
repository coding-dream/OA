<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/14
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>审批页面</title>
</head>
<body>

    <div>

        <%--类型	申请人	请假日期	天数	结果	进度	操作--%>

        <span>${message.title}</span>
        <span>${message.type}</span>
        <span>${message.watch}</span>
        <span>${message.createTime}</span>
        <span>${message.userId}</span>

        <span>${leaveUser.name}</span>
        <span>${leaveBean.reason}</span>


         <form action="flow_approve.action" method="post">

            <input type="hidden" name="messageId" value="${message.id}"/>修改Message表为disable <br/>

             <input type="hidden" name="leaveId" value="${leaveBean.id}"/>请假表ID <br/>
             <input type="hidden" name="userId" value="${message.userId}"/>审批人ID <br/>
             <input type="radio" name="status" value="1" checked/>同意 <br/>
             <input type="radio" name="status" value="2"/>拒绝<br/>
             <input type="text" name="summary" /><br/>
             <input type="submit" value="提交"/>

         </form>

    </div>




</body>
</html>
