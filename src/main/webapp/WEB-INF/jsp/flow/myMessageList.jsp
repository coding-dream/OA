<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/14
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的消息列表</title>
    <%@ include file="/WEB-INF/jsp/common/adminLTE.jspf" %>

</head>
<body>


<div class="box box-default">
    <div class="box-header with-border">
        <h3 class="box-title">消息提醒</h3>
    </div>
    <c:if test="${fn:length(messageList) == 0 }">
        <div class="box-body">
            <a href="#"> 暂无消息 </a>
        </div>
    </c:if>

    <c:forEach var="message" items="${messageList}">
        <div class="box-body">
            <a href="flow_approveUI.action?messageId=${message.id}">${message.title}</a>
        </div>
    </c:forEach>

    <!-- /.box-body -->
</div>



</body>
</html>
