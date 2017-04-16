<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/15
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传</title>
</head>
<body>

    <div>
        ${error}
    </div>

    <form action="upload.action" method="post" enctype="multipart/form-data">
        <input name="file" placeholder="文件上传" type="file"/><br/>
        <input type="submit" value="上传"/>
    </form>

</body>
</html>
