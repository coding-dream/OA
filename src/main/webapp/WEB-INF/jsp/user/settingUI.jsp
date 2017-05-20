<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/13
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>个人设置</title>
    <%@ include file="/WEB-INF/jsp/common/commons.jspf"%>
    <%@ include file="/WEB-INF/jsp/common/bootstrap.jspf"%>

    <style>
        body {
            padding: 16px;
            background-color: #F3F9FD;
            color: #004779;
            font-size: 12px;
            font-family: 宋体;
            scrollbar-base-color: #dbecf8;
            scrollbar-arrow-color: #2a8ed1;
            scrollbar-track-color: #bdddf2;
            scrollbar-3dlight-color: #2886c5;
            scrollbar-darkshadow-color: #2886c5;
            scrollbar-face-color: #dbecf8;
            scrollbar-shadow-color: #dbecf8;
            margin-left: 1px;
            margin-right: 1px;
            margin-top: 0;
        }

        .ItemBlockBorder {
            padding-top: 16px;
            width: 90%;
            text-align: left;
            border: 1px solid #91c0e3;
        }


    </style>
</head>


<body>


<div class="container-fluid ItemBlockBorder ">

    <div class="row-fluid">
        <div class="span12">
            <form class="form-horizontal" action="user_setting.action" method="post">

                <div class="control-group">
                    <div class="controls">
                        <h6>个人设置</h6>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="loginName">&nbsp;登录名&nbsp;</label>
                    <div class="controls">
                        <input id="loginName" type="text" disabled name="loginName" value="${user.loginName}"/>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="name">真实姓名</label>
                    <div class="controls">
                        <input id="name" type="text" name="name" value="${user.name}"/>
                    </div>
                </div>


                <div class="control-group">
                    <label class="control-label" for="gender">性&nbsp;&nbsp;&nbsp;&nbsp;别</label>
                    <div class="controls">
                        <input type="radio" id="gender" name="gender" value="${requestScope.user.gender}" checked>男
                        <input type="radio"  name="gender" value="${requestScope.user.gender}">女<br>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="phoneNumber">手机号码</label>
                    <div class="controls">
                        <input id="phoneNumber" type="text" name="phoneNumber" value="${user.phoneNumber}"/>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="email">电子邮件</label>
                    <div class="controls">
                        <input id="email" type="text" name="email" value="${user.email}"/>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="description">个人说明</label>
                    <div class="controls">
                        <textarea id="description" name="description">${user.description}</textarea>
                    </div>
                </div>

                <div class="control-group">
                    <div class="controls">
                        <button type="submit" class="btn">保存</button>
                    </div>
                    <div class="controls">
                        <button type="submit" class="btn">修改密码</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
