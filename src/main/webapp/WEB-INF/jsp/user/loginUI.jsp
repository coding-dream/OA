<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <title>文珺OA系统</title>
    <%@ include file="/WEB-INF/jsp/common/adminLTE.jspf" %>
    <!-- 默认点击left区域按钮，target显示为right，但是当异常处理器 和 登录页面session过期时 action处理后返回的[xx.jsp]显示在right 但是我们希望xx.jsp单独显示一页，方法如下 -->
    <script type="text/javascript">
        $(function(){
            document.forms[0].loginName.focus();
        });

        // 在被嵌套时就刷新上级窗口
        if(window.parent != window){
            window.parent.location.reload(true);
        }
    </script>
</head>

<body class="hold-transition login-page">

<div class="login-box">
    <div class="login-logo">
        <a href="javascript:void(0);">文珺OA系统</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">Sign in to start your session</p>

        <form action="user_login.action" method="post">
            <div class="form-group has-feedback">
                <input type="text" name="loginName" class="form-control" placeholder="User">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" name="password" class="form-control" placeholder="Password">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-8"></div>
                <!-- /.col -->
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">登录</button>
                </div>
                <!-- /.col -->
            </div>
        </form>
    </div>
</div>

</body>

</html>

