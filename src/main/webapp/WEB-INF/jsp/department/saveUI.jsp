<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
	<title>部门设置</title>
	<%@ include file="/WEB-INF/jsp/common/commons.jspf" %>
</head>
<body>

<!-- 标题显示 --> 
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/> 部门信息
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<div id=MainArea>
    <!-- hidden字段仅供 department_edit.action 使用,department_add.action 无须使用，合并addUI和editUI页面 }-->
    <form action="department_${department.id == null ? 'add' : 'edit'}.action" method="post">
        <input type="hidden" name="id" value="${department.id}"/>

        <div class="ItemBlock_Title1"><!-- 信息说明<DIV CLASS="ItemBlock_Title1">
        	<IMG BORDER="0" WIDTH="4" HEIGHT="7" SRC="${pageContext.request.contextPath}/style/blue/images/item_point.gif" /> 部门信息 </DIV>  -->
        </div>


        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
                    <tr><td width="100">上级部门</td>
                        <td>
                            <!--当前部门 的上级部门的id值-->
                            <select name="parentId" class="SelectStyle">
                                <option value="">请选择上级部门</option>
                                <c:forEach var="depart" items="${departmentList}">
                                    <option value="${depart.id}">${depart.name}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr><td>部门名称</td>
                        <td><input type="text" name="name" class="InputStyle" value="${department.name}"/></td>
                    </tr>
                    <tr><td>职能说明</td>
                        <td><input type="textarea" name="description" class="TextareaStyle" value="${department.description}"/></td>
                    </tr>
                </table>
            </div>
        </div>

        <!-- 表单操作 -->
        <div id="InputDetailBar">
            <input type="image" src="${pageContext.request.contextPath}/style/images/save.png"/>
            <a href="javascript:history.go(-1);"><img src="${pageContext.request.contextPath}/style/images/goBack.png"/></a>
        </div>

    </form>

</div>

<div class="Description">
	说明：<br />
	1，上级部门的列表是有层次结构的（树形）。<br/>
	2，如果是修改：上级部门列表中不能显示当前修改的部门及其子孙部门。因为不能选择自已或自已的子部门作为上级部门。<br />
</div>

</body>
</html>
