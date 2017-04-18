<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
	<title>TopMenu</title>
	<%@ include file="/WEB-INF/jsp/common/adminLTE.jspf"%>
</head>
<!--
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue-light layout-top-nav">

<header class="main-header">
    <nav class="navbar navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <a href="javascript:void(0);" class="navbar-brand"><b>文珺</b>OA</a>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                    <i class="fa fa-bars"></i>
                </button>
            </div>

            <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="upload_list.action" target="right">员工相册 <span class="sr-only">(current)</span></a></li>
                    <li><a href="javascript: window.parent.right.location.reload(true);">刷新</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">

                    <li>
                        <a href="#" >欢迎你 &nbsp;&nbsp;${user.loginName}</a>
                    </li>
                    <!-- Messages: style can be found in dropdown.less-->
                    <li class="messages-menu">
                        <!-- Menu toggle button -->
                        <a href="${pageContext.request.contextPath}/flow_myMessageList.action?disable=false" target="right">
                            <i class="fa fa-envelope-o"></i>
                        </a>
                    </li>

                    <li>
                        <a href="user_settingUI.action" target="right" >个人资料</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/user_logout.action" target="_parent">注销</a>
                    </li>

                </ul>
            </div>
            <!-- /.navbar-custom-menu -->
        </div>
        <!-- /.container-fluid -->
    </nav>
</header>

</body>

</html>
