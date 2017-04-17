<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>404</title>
    <%@ include file="/WEB-INF/jsp/common/adminLTE.jspf" %>

  </head>
  <body>
  <div style="text-align: center;">
    <img src="${pageContext.request.contextPath}/static/images/404.png"/>
  </div>

  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 1.0.0
    </div>
    <strong>Copyright &copy; 2016-2017 <a href="${pageContext.request.contextPath}/home_index.action">文珺OA系统</a>.</strong> All rights
    reserved.
  </footer>


  </body>
</html>
