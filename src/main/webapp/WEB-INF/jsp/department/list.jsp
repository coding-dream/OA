<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
    <title>部门列表</title>
	<%@ include file="/WEB-INF/jsp/common/commons.jspf" %>
</head>
<body>
 
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/> 部门管理
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<div id="MainArea">
    <table cellspacing="0" cellpadding="0" class="TableStyle">
       
        <!-- 表头-->
        <thead>
            <tr align=center valign=middle id=TableTitle>
            	<td width="150px">部门名称</td>
				<td width="150px">上级部门名称</td>
				<td width="200px">职能说明</td>
				<td>相关操作</td>
            </tr>
        </thead>

		<!--显示数据列表-->
        <tbody id="TableData" class="dataContainer" datakey="departmentList">
        <!-- 表单内容显示  table表格的样式要注意每个td 都有内容，否则样式不会显示-->
        <c:forEach var="department" items="${departmentList}">
            <tr class="TableDetail1 template" style="text-align: center;">
                <!--当前页面的id  当做下一个页面的parentId-->
                <td><a href="department_list.action?parentId=${department.id}">${department.name}</a>&nbsp;</td>
                <td>${department.parent.name}&nbsp;</td>
                <td>${department.description}&nbsp;</td>
                <td>
                    <!--此处的parentId参数为了删除后能够跳转到当前部门的上级部门列表-->
                    <a href="department_delete.action?id=${department.id}&parentId=${department.parent.id}" onclick="return window.confirm('这将删除所有的下级部门，您确定要删除吗？')">删除</a>
                    <a href="department_editUI.action?departId=${department.id}">修改</a>
                    &nbsp;
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
    
    <!-- 其他功能超链接 -->
    <div id="TableTail">
        <div id="TableTail_inside">
            <a href="department_addUI.action?parentId=${parentId}"><img src="${pageContext.request.contextPath}/style/images/createNew.png"/></a>
			<a href="department_list.action?parentId=${parent.parent.id}"><img src="${pageContext.request.contextPath}/style/blue/images/button/ReturnToPrevLevel.png" /></a>
        </div>
    </div>
</div>

<!--说明-->	
<div id="Description"> 
	说明：<br />
	1，列表页面只显示一层的（同级的）部门数据，默认显示最顶级的部门列表。<br />
	2，点击部门名称，可以查看此部门相应的下级部门列表。<br />
	3，删除部门时，同时删除此部门的所有下级部门。
</div>

</body>
</html>
