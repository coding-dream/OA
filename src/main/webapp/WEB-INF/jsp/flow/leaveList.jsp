<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/14
  Time: 21:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的申请查询</title>
</head>
<body>


    <table>
        <c:forEach var="leave" items="${leaveList}">
            <td>
                <tr>${leave.id}</tr>
                <tr>${leave.type}</tr>
                <tr>${leave.startTime}</tr>
                <tr>${leave.reason}</tr>
            </td>
        </c:forEach>
    </table>



</body>
</html>
