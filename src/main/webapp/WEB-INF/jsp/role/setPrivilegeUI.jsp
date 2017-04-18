
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="v" uri="https://wangli0.github.io/jsp/custom/core" %>

<html>
<head>
	<title>配置权限</title>
	<!--注意这里jQuery1.10.2.js 对checked修改的一个bug，坑了大爷很长时间,本项目v1.3.2版本 支持良好 -->
	<%@ include file="/WEB-INF/jsp/common/commons.jspf" %>

	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/blue/file.css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/jquery_treeview/jquery.treeview.css" />
	<script language="javascript" src="${pageContext.request.contextPath}/static/jquery_treeview/jquery.treeview.js"></script>
	<script type="text/javascript">
        $(function(){

            // 给所有的权限复选框添加事件
            $("[name=privilegeIds]").click(function(){
                // 自己选中或取消时，把所有的下级权限也都同时选中或取消
                $(this).siblings("ul").find("input").attr("checked", this.checked);

                // 当选中一个权限时，也要同时选中所有的直系上级权限
                if(this.checked){
                    $(this).parents("li").children("input").attr("checked", true);
                }
                // 当取消一个权限时，同级没有选中的权限了，就也取消他的上级权限，再向上也这样做。
                else{

                    if( $(this).parent().siblings("li").children("input:checked").size() == 0 ){
                        $(this).parent().parent().siblings("input").attr("checked", false);

                        var start = $(this).parent().parent();
                        if( start.parent().siblings("li").children("input:checked").size() == 0 ){
                            start.parent().parent().siblings("input").attr("checked", false);
                        }
                    }
                }
            });

        });
	</script>
</head>
<body>

<!-- 标题显示 -->
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/> 配置权限
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<div id=MainArea>

    <form action="role_setPrivilege.action" method="post">
		<input type="hidden" name="id" value="${role.id}"/>

        <div class="ItemBlock_Title1"><!-- 信息说明 --><div class="ItemBlock_Title1">
        	<img border="0" width="4" height="7" src="${pageContext.request.contextPath}/style/blue/images/item_point.gif" /> 正在为【${role.name}】配置权限 </div>
        </div>
        
        <!-- 表单内容显示 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
					<!--表头-->
					<thead>
						<tr align="LEFT" valign="MIDDLE" id="TableTitle">
							<td width="300px" style="padding-left: 7px;">
								<input type="checkbox" id="cbSelectAll" onClick="$('[name=privilegeIds]').attr('checked', this.checked)"/>
								<label for="cbSelectAll">全选</label>
							</td>
						</tr>
					</thead>
                   
			   		<!--显示数据列表-->
					<tbody id="TableData">
						<tr class="TableDetail1">
							<!-- 显示权限树 -->
							<td>


<!-- 显示树状结构内容 -->
<ul id="tree">
<c:forEach var="privilege" items="${applicationScope.topPrivilegeList}">
	<li>
		<input type="checkbox" name="privilegeIds" value="${privilege.id}" id="cb_${privilege.id}" <v:check var="${privilege.id}" list="${privilegeIds}"/> />
		<label for="cb_${privilege.id}"><span class="folder">${privilege.name}</span></label>

		<ul>
		<c:forEach var="privilege" items="${privilege.children}">
			<li>
				<input type="checkbox" name="privilegeIds" value="${privilege.id}" id="cb_${privilege.id}" <v:check var="${privilege.id}" list="${privilegeIds}"/> />
				<label for="cb_${privilege.id}"><span class="folder">${privilege.name}</span></label>
				<ul>
				<c:forEach var="privilege" items="${privilege.children}">
					<li>
						<input type="checkbox" name="privilegeIds" value="${privilege.id}" id="cb_${privilege.id}" <v:check var="${privilege.id}" list="${privilegeIds}"/> />
						<label for="cb_${privilege.id}"><span class="folder">${privilege.name}</span></label>
					</li>
				</c:forEach>
				</ul>
			</li>
		</c:forEach>
		</ul>
	</li>
</c:forEach>
</ul>


							</td>
						</tr>
					</tbody>
                </table>
            </div>
        </div>
        
        <script language="javascript">
        	$("#tree").treeview();
        </script>
        
        <!-- 表单操作 -->
        <div id="InputDetailBar">
            <input type="image" src="${pageContext.request.contextPath}/style/images/save.png"/>
            <a href="javascript:history.go(-1);"><img src="${pageContext.request.contextPath}/style/images/goBack.png"/></a>
        </div>
    </form>
</div>

<div class="Description">
</div>

</body>
</html>
    