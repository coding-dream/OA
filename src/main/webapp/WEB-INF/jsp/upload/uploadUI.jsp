<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传</title>
    <%@ include file="/WEB-INF/jsp/common/adminLTE.jspf" %>

</head>
<body>

    <div class="wrapper">
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading"> 上传相片 <div class="pull-right"><a href="upload_list.action" class="btn btn-success">欣赏相片</a></div></header>
                <div class="panel-body">
                    <form method="post" action="upload.action" enctype="multipart/form-data" id="uploadMulti-form">
                        <div class="wrapper text-center">
                            <h2>请选择图片</h2>
                            <input id="albumUpload" name="file" type="file" multiple class="file-loading" accept="image/*" data-allowed-file-extensions='["jpg", "jpeg", "png", "gif"]'>
                        </div>
                    </form>
                </div>
            </section>
        </div>
    </div>
    </div>

    <script src="${pageContext.request.contextPath}/static/bootstrap-fileinput-master/canvas-to-blob.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap-fileinput-master/sortable.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap-fileinput-master/purify.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap-fileinput-master/fileinput.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap-fileinput-master/fa.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap-fileinput-master/zh.js"></script>
    <script>
        $(function(){
            $("#albumUpload").fileinput({ language: 'zh', showCaption: false});
        });
    </script>

</body>
</html>
