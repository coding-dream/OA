<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <title>文珺OA系统</title>
    <%@ include file="/WEB-INF/jsp/common/commons.jspf" %>
    <link href="${pageContext.request.contextPath}/style/blue/login.css" type=text/css rel=stylesheet>

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

<body leftmargin=0 topmargin=0 marginwidth=0 marginheight=0 class=PageBody>

<!-- 显示表单 -->
<form action="user_login.action" method="post"  enctype="application/x-www-form-urlencoded">
    <div id="CenterAreaBg">
        <div id="CenterArea">
            <div id="LogoImg"><span style="color: white;background-color: #003366;font-family: 仿宋;font-size: 25px" >文珺OA系统</span></div>
            <div id="LoginInfo">
                <table BORDER=0 CELLSPACING=0 CELLPADDING=0 width=100%>
                    <tr>
                        <td colspan="3"><!-- 显示错误 -->
                            <font color="red">${error}</font>
                        </td>
                    </tr>
                    <tr>
                        <td width=45 class="Subject"><img border="0" src="${pageContext.request.contextPath}/style/blue/images/login/userId.gif" /></td>
                        <td>
                            <input type="text" name="loginName" id="loginNameInput"/>
                        </td>
                        <td rowspan="2" style="padding-left:10px;">
                            <input type="image" tabindex="3" src="${pageContext.request.contextPath}/style/blue/images/login/userLogin_button.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td class="Subject"><img border="0" src="${pageContext.request.contextPath}/style/blue/images/login/password.gif" /></td>
                        <td>
                            <input type="password" name="password" id="aa" />
                        </td>
                    </tr>
                </table>
            </div>
            <div id="CopyRight"><a href="javascript:void(0)">&copy; 2017 版权所有 文珺</a></div>
        </div>
    </div>
</form>
</body>

</html>

