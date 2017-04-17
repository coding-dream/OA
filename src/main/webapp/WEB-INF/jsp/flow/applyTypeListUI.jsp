<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/14
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>申请类型</title>
</head>
<body>


    <c:forEach var="type" items="${applyTypeList}">
        <a href="${type.url}" >${type.name}</a>
    </c:forEach>

</body>
</html>
