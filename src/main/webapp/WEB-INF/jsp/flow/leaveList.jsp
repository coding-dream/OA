<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的申请查询</title>
    <%@ include file="/WEB-INF/jsp/common/adminLTE.jspf" %>
</head>
<body>

<div class="wrapper">
    <div class="row">
        <div class="col-sm-12">
            <section class="panel">
                <header class="panel-heading"> 历史记录 <span class="tools pull-right"><a href="javascript:;" class="fa fa-chevron-down"></a> </span> </header>
                <div class="panel-body">
                    <table class="table table-hover general-table">
                        <thead>
                        <tr>
                            <th> 类型</th>
                            <th class="hidden-phone hidden-xs">请假日期</th>
                            <th>天数</th>
                            <th>状态</th>
                            <th>结果</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>

                        <c:if test="${fn:length(leaveList ) == 0 }">
                            <tr style="text-align: center">
                                <td colspan="6">暂无申请</td>
                            </tr>
                        </c:if>

                        <c:forEach var="leaveBean" items="${leaveList }">
                                <tr>
                                    <td> 事假 </td>
                                    <td class="hidden-phone hidden-xs">${leaveBean.createTime}</td>
                                    <td>${leaveBean.days }天 </td>
                                    <td>  <span class="label label-success label-mini">正常</span>  </td>
                                    <td> <span class="label label-warning label-mini">${leaveBean.result==2?"拒绝":(leaveBean.result==1?"同意":"处理中")}</span>  </td>
                                    <%--<td><div class="js-selectuserbox"> <a href='javascript:;' title='lock'><img class='gray' src='/static/img/avatar/1.jpg' alt='lock'>未处</a><span>..........</span><a href='javascript:;' title='张三'><img class='gray' src='/static/img/avatar/3.jpg' alt='张三'>未处</a><span>..........</span><a href='javascript:;' title='李浩'><img class='gray' src='/static/img/avatar/1.jpg' alt='李浩'>未处</a> </div></td>--%>
                                    <td>  <a href="flow_leaveDetail.action?leaveId=${leaveBean.id }"> 查看 </a>  </td>
                                </tr>
                            </c:forEach>

                        </tbody>

                    </table>

                </div>
            </section>
        </div>
    </div>
</div>

</body>
</html>