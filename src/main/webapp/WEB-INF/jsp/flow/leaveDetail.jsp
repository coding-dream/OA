<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>请假详情</title>
    <%@ include file="/WEB-INF/jsp/common/adminLTE.jspf" %>
    <script src="${pageContext.request.contextPath }/static/js/wj.js"></script>

</head>
<body>


<div class="wrapper">
    <div class="row">
        <div class="col-md-8">
            <div class="blog">
                <div class="single-blog">
                    <div class="panel">
                        <div class="panel-body">
                            <h1 class="text-center mtop35"><a href="#">请假单</a>
                                <button onClick="myPrint(document.getElementById('print'))" class="pull-right btn">打 印</button>
                            </h1>
                            <p class="text-center auth-row"> By <a href="#">${leaveUser.name}</a> | ${leaveBean.createTime }</p>
                            <div id="print">
                                <table class="table table-bordered" border="1">
                                    <tr class="hide">
                                        <th colspan="6" class="text-center">请假单</th>
                                    </tr>
                                    <tr>
                                        <td width="72">姓名</td>
                                        <td width="62">${leaveUser.name}</td>
                                        <td width="70">&nbsp;&nbsp;</td>
                                        <td width="77">&nbsp;&nbsp;</td>
                                        <td width="80">&nbsp;&nbsp;</td>
                                        <td width="93">&nbsp;&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>类型</td>
                                        <td colspan="5">${type}</td>
                                    </tr>
                                    <tr>
                                        <td>事由</td>
                                        <td colspan="5">${leaveBean.reason}</td>
                                    </tr>
                                    <tr>
                                        <td>日期</td>
                                        <td colspan="5">${leaveBean.startTime }&nbsp;&nbsp; 至&nbsp;&nbsp; ${leaveBean.endTime }</td>
                                    </tr>
                                    <tr>
                                        <td>天数</td>
                                        <td colspan="5">${leaveBean.days}天</td>
                                    </tr>
                                    <tr  class="hide">
                                        <td>审核人</td>
                                        <td colspan="5">&nbsp;</td>
                                    </tr>



                                </table>
                            </div>

                        </div>
                    </div>
                    <a class="btn btn-xs btn-warning" style="margin-bottom:6px;">审批人进度</a>

                    <div class="panel">
                        <div class="panel-body">
                            <h1 class="text-center cmnt-head">审批人</h1>
                            <c:forEach var="approver" items="${leaveApprovers}">
                                <p class="text-center fade-txt">
                                        ${approver.username} : <span class="btn btn-xs btn-info">${approver.status == 1?"同意":"拒绝"}</span><br/>
                                    <span>${approver.summary}</span><br/>
                                    <span>${approver.createTime}</span>
                                </p>
                            </c:forEach>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>





</body>
</html>
