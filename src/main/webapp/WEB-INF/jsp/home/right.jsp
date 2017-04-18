<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>文珺OA系统</title>
    <%@ include file="/WEB-INF/jsp/common/adminLTE.jspf" %>
    <%@ include file="/WEB-INF/jsp/common/kindEditor.jspf" %>

</head>
<body>

<div class="callout callout-info">
    <h4>提示!</h4>
        只有管理员可以编辑公告，请大家及时关注最新的公告信息！处理各项任务
    <p></p>
</div>


<!-- Default box -->
<div class="box">
    <div class="box-header with-border">
        <h3 class="box-title">公告板</h3>

        <div class="box-tools pull-left">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                <i class="fa fa-times"></i></button>
        </div>
    </div>
    <div class="box-body">

        <c:if test="${user.loginName == 'admin'}">
            <%--显示 编辑页面 --%>
            <form name = "ck_form" action="notice_update.action" enctype="multipart/form-data" method="post">
                <textarea name="content" cols="100" rows="8" style="width:700px;height:200px;"><%=htmlspecialchars(htmlData)%></textarea>
                <input type = "submit" value = "提交" />
            </form>
        </c:if>

        <c:if test="${user.loginName !='admin'}">
            ${content}
        </c:if>

    </div>
    <!-- /.box-body -->
    <div class="box-footer">
        The End
    </div>
    <!-- /.box-footer-->
</div>
<!-- /.box -->


</body>
</html>
