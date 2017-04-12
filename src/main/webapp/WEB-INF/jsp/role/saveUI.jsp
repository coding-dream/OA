<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
	<title>岗位设置</title>
    <%@ include file="/WEB-INF/jsp/common/commons.jspf" %>
</head>
<body> 

<!-- 标题显示 -->
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/> 岗位设置
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<div id="MainArea">

    <form action="role_${ role.id == null ? 'add' : 'edit' }.action" method="post">
        <input type="hidden" name="id" value="${role.id}"/>
    
        <div class="ItemBlock_Title1">
            <!-- 信息说明-->
            <DIV CLASS="ItemBlock_Title1">
        	<IMG BORDER="0" WIDTH="4" HEIGHT="7" SRC="${pageContext.request.contextPath}/style/blue/images/item_point.gif" /> 岗位信息 </DIV>
        </div>
        
        <!-- 表单内容显示 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
                    <tr>
                        <td width="100">岗位名称</td>
                        <td>
                            <input name="name" class="InputStyle" value="${role.name}"> *
                        </td>
                    </tr>
                    <tr>
                        <td>岗位说明</td>
                        <td>
                            <textarea name="description" class="TextareaStyle">${role.description}</textarea>
                        </td>
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

</body>
</html>

