<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/adminLTE.jspf" %>
<html>
<head>
    <title>申请类型</title>
</head>
<body>

<div class="wrapper">
    <div class="row">
        <div class="jumbotron text-center" style="background-color:transparent;">
            <h2>轻轻松松走完流程审核</h2>
            <br/><br/>
            <span>
                    <c:forEach var="type" items="${applyTypeList}">
                        <a href="${type.url}" >${type.name}</a>
                    </c:forEach>
            </span>
        </div>
    </div>
</div>

</body>
</html>
