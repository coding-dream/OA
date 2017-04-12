<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/31
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="v" uri="https://wangli0.github.io/jsp/custom/core" %>
<html>
<head>
    <title>This is test Jsp Pages</title>
</head>
<body>

<%
    Long id = 2L;
    request.setAttribute("id",id);
    Long[] ids = new Long[]{0L, 1L, 2L, 3L};
    request.setAttribute("ids", ids);


%>

<form action="bbb" enctype="multipart/form-data" method="post">

    <input type="text" name="departId"/>
    <input type="text" name="name"/>
    <input type="text" name="loginName"/>
    <input type="text" name="password"/>

    <input type="submit" value="提交"/>

    <input type="checkbox" name="privilegeIds" value="${privilege.id}" id="cb_${privilege.id}" <v:check var="${id}" list="${ids}"/> />
</form>

</body>
</html>

