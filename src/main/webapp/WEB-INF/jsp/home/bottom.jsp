<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <title></title>
	<LINK href="${pageContext.request.contextPath}/style/blue/statusbar.css" type=text/css rel=stylesheet>
</head>

<body leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>

<div id="StatusBar">
    <div id="Online">
    	在线人员：共 <span class="OnlineUser" id="onlineUserNum"></span> 人<span class="OnlineView">
        <a href="javascript:void(0)">[查看在线名单]</a>
</span></div>

    <div id="Info">
    	<a href="http://www.itcast.cn" title = "传智播客首页" target=_blank >传智播客首页</a> |
        <a href="http://bbs.itcast.cn" title = "传智播客BBS" target=_blank >传智播客BBS</a>
    </div>

    <DIV id=DesktopText>
        <a href="javascript:void(0)"><img border="0" src="${pageContext.request.contextPath}/style/images/top/text.gif"/> 便笺</a>

        <span id=TryoutInfo>

        </span>
        <span id="Version">
            <a href="javascript:void(0)">
            	<img border="0" width="11" height="11" src="${pageContext.request.contextPath}/style/images/top/help.gif" />
            	<img border="0" width="40" height="11" src="${pageContext.request.contextPath}/style/blue/images/top/version.gif" />
            </a>
        </span>
    </DIV>
</div>

</body>
</html>
