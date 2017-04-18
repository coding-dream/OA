<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>导航菜单</title>
	<%@ include file="/WEB-INF/jsp/common/adminLTE.jspf"%>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/blue/menu.css" />

	<script type="text/javascript">

        function menuClick( menu ){
            $(menu).next().toggle();
        }

	</script>
</head>

<body style="margin: 0">
<div id="Menu">

	<ul id="MenuUl">

		<%-- 显示一级菜单 --%>
		<c:forEach var="topPri" items="${privileges}">
			<c:if test="${topPri.show}">
				<li class="level1">
					<div onClick="menuClick(this);" class="level1Style" style="color: #004A7D">
						<img src="${pageContext.request.contextPath}/style/images/MenuIcon/${topPri.id}.png" />
							${topPri.name}
					</div>

					<ul style="" class="MenuLevel2" id="aa">
							<%-- 显示二级菜单 --%>
						<c:forEach var="children" items="${topPri.children}">
							<c:if test="${children.show}">
								<li class="level2">
									<div class="level2Style">
										<img src="${pageContext.request.contextPath}/static/images/ic_link.png" />
										<a target="right" href="${pageContext.request.contextPath}${children.url}.action" style="color: #004A7D"> ${children.name}</a>
									</div>
								</li>
							</c:if>
						</c:forEach>
					</ul>
				</li>
			</c:if>
		</c:forEach>

	</ul>

</div>
</body>
</html>