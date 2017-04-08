<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>OA</title>
    <%@ include file="/WEB-INF/jsp/common/commons.jspf"%>
</head>


<div>

    Index.jsp

    <script>

        httpGet("/test?name=xiaoming",function (response) {
            console(response);
        });

    </script>

</div>