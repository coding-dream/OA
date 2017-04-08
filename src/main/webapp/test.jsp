<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/31
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>This is test Jsp Pages</title>
    <%@ include file="/WEB-INF/jsp/common/kindEditor.jspf"%>
</head>
<body>

<form name = "ck_form" action="hello" enctype="multipart/form-data" method="post">
    <textarea name="content" cols="100" rows="8" style="width:700px;height:200px;"><%=htmlspecialchars(htmlData)%></textarea>

</form>

</body>
</html>

