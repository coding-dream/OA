<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
    <title>用户列表</title>
    <%@ include file="/WEB-INF/jsp/common/commons.jspf" %>
</head>
<body>

<div id="Title_bar">
    <div id="Title_bar_Head"> 
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/> 用户管理
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<div id="MainArea">
    <table cellspacing="0" cellpadding="0" class="TableStyle">
       
        <!-- 表头-->
        <thead>
            <tr align=center valign=middle id=TableTitle>
                <td width="100">登录名</td>
                <td width="100">姓名</td>
                <td width="100">所属部门</td>
                <td width="200">岗位</td>
                <td>备注</td>
                <td>相关操作</td>
            </tr>
        </thead>
        
        <!--显示数据列表-->
        <tbody id="TableData" class="dataContainer" datakey="userList">

        <c:forEach var="user" items="${pageBean.recordList}">
            <tr class="TableDetail1 template" style="text-align: center;">
                <td>${user.loginName}&nbsp;</td>
                <td>${user.name}&nbsp;</td>
                <td>${user.department.name}&nbsp;</td>
                <td>
                    <c:forEach var="role" items="${user.roles}">
                        ${role.name}
                    </c:forEach>
                </td>
                <td>${user.description}&nbsp;</td>
                <td>
                    <a href="user_delete.action?userId=${user.id}" onclick="return delConfirm()">删除</a>
                    <a href="user_editUI.action?userId=${user.id}">修改</a>
                    <a href="user_initPassword.action?userId=${user.id}" onclick="return window.confirm('您确定要初始化密码为1234吗？')">初始化密码</a>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
    
    <!-- 其他功能超链接 -->
    <div id="TableTail">
        <div id="TableTail_inside">
            <a href="user_addUI.action">
                <img src="${pageContext.request.contextPath}/style/images/createNew.png" />
            </a>
        </div>
    </div>
</div>

<!-- 分页信息 -->
<%@ include  file="/WEB-INF/jsp/common/pageView.jspf"%>
<form action="user_list.action" method="post"/>
<!-- 分页信息 -->

</body>
</html>
