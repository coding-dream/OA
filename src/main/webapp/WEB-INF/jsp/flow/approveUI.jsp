<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/14
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>审批页面</title>
    <%@ include file="/WEB-INF/jsp/common/adminLTE.jspf" %>

</head>
<body>

    <div class="wrapper">
        <div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading"> 请假审批<span class="tools pull-right"><a href="javascript:;" class="fa fa-chevron-down"></a> </span> </header>
                    <div class="panel-body">
                        <table class="table table-hover general-table">
                            <thead>
                            <tr>
                                <th> 类型</th>
                                <th> 申请人</th>
                                <th class="hidden-phone hidden-xs">请假日期</th>
                                <th>天数</th>
                                <th>原因</th>
                                <th>结果</th>
                            </tr>
                            </thead>
                            <tbody>


                            <tr>
                                <td colspan="1">${message.type==1?"请假":"其他"}</td>
                                <td colspan="1">${approverUser.name}</td>
                                <td colspan="1">${leaveBean.createTime}</td>
                                <td colspan="1">${leaveBean.days}</td>
                                <td colspan="1">${leaveBean.reason}</td>
                                <td colspan="1">${leaveBean.result==2?"拒绝":(leaveBean.result==1?"同意":"处理中")}</td>
                            </tr>

                            </tbody>

                        </table>

                    </div>
                </section>
            </div>
        </div>
    </div>

  <div class="content">

    <div class="row">
        <!-- left column -->
        <div class="col-md-12">
                <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">审批意见</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" action="flow_approve.action" method="post">
                        <div class="box-body">

                            <div class="form-group">
                                <input type="hidden" name="messageId" value="${message.id}"/>
                                <input type="hidden" name="leaveId" value="${leaveBean.id}"/>
                            </div>

                            <div class="form-group">
                                <label for="summary">说明</label>
                                <textarea name="summary" id="summary"></textarea>
                                <p class="help-block">你将同意此申请，请确认信息后提交.</p>
                            </div>

                            <div class="form-group">
                                <input type="radio" name="status" value="1" checked/>同意 <br/>
                            </div>
                            <div class="form-group">
                                <input type="radio" name="status" value="2"/>拒绝<br/>
                            </div>
                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
                <!-- /.box -->

        </div>
    </div>
  </div>



</body>
</html>
