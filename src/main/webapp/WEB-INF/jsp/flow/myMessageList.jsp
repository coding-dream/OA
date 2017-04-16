<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</head>
<body>
    <c:forEach var="message" items="${messageList}">
        <a href="${message.url}">${message.title}</a>

    </c:forEach>


</body>
</html>
