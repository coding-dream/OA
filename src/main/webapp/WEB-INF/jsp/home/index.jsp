<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
	<title>文珺OA系统</title>
	<%@ include file="/WEB-INF/jsp/common/commons.jspf"%>

	<!-- 默认点击left区域按钮，target显示为right，但是当异常处理器 和 登录页面session过期时 action处理后返回的[xx.jsp]显示在right 但是我们希望xx.jsp单独显示一页，方法如下 -->
	<script type="text/javascript">
        // 在被嵌套时就刷新上级窗口
        if(window.parent != window){
            window.parent.location.reload(true);
        }
	</script>

</head>

	<frameset rows="70,*,35" framespacing=0 border=0 frameborder="0">
		<frame noresize name="TopMenu" scrolling="no" src="${pageContext.request.contextPath}/home_top.action">
		<frameset cols="180,*" id="resize">
			<frame noresize name="menu" scrolling="yes" src="${pageContext.request.contextPath}/home_left.action">
			<frame noresize name="right" scrolling="yes" src="${pageContext.request.contextPath}/home_right.action">
		</frameset>
		<frame noresize name="status_bar" scrolling="no" src="${pageContext.request.contextPath}/home_bottom.action">
	</frameset>

	<noframes><body>
</body>
</noframes></html>

