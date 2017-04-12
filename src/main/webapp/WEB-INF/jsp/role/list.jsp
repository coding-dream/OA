<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>岗位列表</title>
    <%@ include file="/WEB-INF/jsp/common/commons.jspf" %>
</head>
<body>
 
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/> 岗位管理
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<div id="MainArea">
    <table cellspacing="0" cellpadding="0" class="TableStyle">
       
        <!-- 表头-->
        <thead>
            <tr align="CENTER" valign="MIDDLE" id="TableTitle">
            	<td width="200px">岗位名称</td>
                <td width="300px">岗位说明</td>
                <td>相关操作</td>
            </tr>
        </thead>

		<!--显示数据列表-->
        <tbody id="TableData" class="dataContainer" datakey="roleList">

        <c:forEach var="role" items="${roleList}">
			<tr class="TableDetail1 template">
				<td>${role.name}&nbsp;</td>
				<td>${role.description}&nbsp;</td>
				<td>
                    <a href="role_delete.action?id=${role.id}" onclick="return confirm('确定要删除吗？')">删除</a>
                    <a href="role_editUI.action?id=${role.id}">修改</a>
                    <a href="role_setPrivilegeUI.action?id=${role.id}">设置权限</a>
				</td>
			</tr>  
        </c:forEach>

        </tbody>
    </table>
    
    <!-- 其他功能超链接 -->
    <div id="TableTail">
		<div id="TableTail_inside">
            <a href="role_addUI.action"><img src="${pageContext.request.contextPath}/style/images/createNew.png" /></a>
        </div>

    </div>
</div>
</body>
</html>
