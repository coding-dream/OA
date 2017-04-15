<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/14
  Time: 21:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>提交申请页面</title>
    <%@ include file="/WEB-INF/jsp/common/adminLTE.jspf" %>
    <link href="${pageContext.request.contextPath}/static/datepicker-custom/custom.css"
          rel="stylesheet"/>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/datepicker-custom/datepicker-custom.js"></script>


</head>
<body>

<div class="wrapper">
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading"></header>
                <div class="panel-body">
                    <div class="alert alert-block alert-danger fade in">
                        <button type="button" class="close close-sm" data-dismiss="alert"><i class="fa fa-times"></i>
                        </button>
                        <strong>注意!</strong> 请假单状态为正常后(可在列表操作中设置为“正常”)，就不能再编辑！后续流程等待审批人操作。.
                    </div>
                    <form class="form-horizontal adminex-form" id="leave-form">
                        <div class="form-group">
                            <label class="col-sm-2 col-sm-2 control-label"><span>*</span>类型</label>
                            <div class="col-sm-10">
                                <select name="type" class="form-control">
                                    <option value="">请选择类型</option>
                                    <option value="1">事假</option>
                                    <option value="2">病假</option>
                                    <option value="3">年假</option>
                                    <option value="4">调休</option>
                                    <option value="5">婚假</option>
                                    <option value="6">产假</option>
                                    <option value="7">陪产假</option>
                                    <option value="8">路途假</option>
                                    <option value="9">其他</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 col-sm-2 control-label"><span>*</span>请假日期</label>
                            <div class="col-sm-10">
                                <div class="input-group input-large custom-date-range" data-date="2016-07-07"
                                     data-date-format="yyyy-mm-dd">
                                    <input type="text" class="form-control dpd1" name="started" placeholder="开始日期"
                                           value="">
                                    <span class="input-group-addon">To</span>
                                    <input type="text" class="form-control dpd2" name="ended" placeholder="结束日期"
                                           value="">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 col-sm-2 control-label">请假天数</label>
                            <div class="col-sm-10">
                                <input type="number" name="days" value="0" class="form-control" placeholder="请输入数字">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 col-sm-2 control-label"><span>*</span>请假事由</label>
                            <div class="col-sm-10">
                                <textarea name="reason" placeholder="请假事由，如世界很大，我想出去走一走" style="height:200px;"
                                          class="form-control"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 col-sm-2 control-label"></label>
                            <div class="col-lg-10">
                                <input type="hidden" name="approverid" id="approverid" value="">
                                <input type="hidden" name="id" id="leaveid" value="0">
                                <button type="submit" class="btn btn-primary">提交保存</button>
                            </div>
                        </div>
                    </form>
                </div>
            </section>
        </div>
    </div>
</div>


<script>
    $(function () {
        var nowTemp = new Date();
        var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);

        var checkin = $('.dpd1').datepicker({
            format: 'yyyy-mm-dd',
            onRender: function (date) {
                return date.valueOf() < now.valueOf() ? 'disabled' : '';
            }
        }).on('changeDate', function (ev) {
            if (ev.date.valueOf() > checkout.date.valueOf()) {
                var newDate = new Date(ev.date)
                newDate.setDate(newDate.getDate() + 1);
                checkout.setValue(newDate);
            }
            checkin.hide();
            $('.dpd2')[0].focus();
        }).data('datepicker');
        var checkout = $('.dpd2').datepicker({
            format: 'yyyy-mm-dd',
            onRender: function (date) {
                return date.valueOf() <= checkin.date.valueOf() ? 'disabled' : '';
            }
        }).on('changeDate', function (ev) {
            checkout.hide();
        }).data('datepicker');
    })
</script>

</body>
</html>
