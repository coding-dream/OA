<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>精彩相片</title>
    <%@ include file="/WEB-INF/jsp/common/adminLTE.jspf" %>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style-responsive.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/table-responsive.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/lightbox/lightbox.min.css">


</head>
<body>



<div class="wrapper">
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading"> 精彩相片
                    <div class="pull-right"><a href="upload_list_own.action" class="btn btn-warning">我的相片</a>&nbsp;<a href="upload_list.action" class="btn btn-success">全部相片</a>&nbsp;<a href="uploadUI.action" class="btn btn-success">+上传相片</a></div>
                </header>
                <div class="panel-body">
                    <div id="gallery" class="media-gal">
                        <c:forEach var="photo" items="${photoList }">
                            <div class="images item" >
                                <a href="${photo.url}" data-lightbox="example-set" data-title="我想知道相片背后的故事">
                                    <img src="${photo.url }" alt="ic_action_share" />
                                </a>
                                <p>我想知道相片背后的故事</p>
                                <p>${photo.username } 上传</p>
                                <c:if test="${user.id == photo.userId}">
                                    <p>
                                        <a href="photo_delete.action?id=${photo.id}" class="js-album-delete" ><i class="fa fa-trash-o"></i>删除</a>
                                    </p>
                                </c:if>

                            </div>

                        </c:forEach>

                    </div>

                    <div class="clearfix"></div>

                </div>
            </section>
        </div>
    </div>
</div>


<script src="${pageContext.request.contextPath}/static/lightbox/lightbox.min.js"></script>
</body>
</html>
