<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>文珺OA系统</title>

    <style>
        /* 全局样式 */
        body, p, div, ul, ol, li, dl, dd, dt, h1, h2, h3, h4, h5, h6, form, input, select, label, table, tr, td, th, thead, tbody, tfoot
        {
            margin: 0px auto; /*上下边距 0px,左右自动 */
            padding: 0px;
            border: 0;
        }
        body.error_power_page
        {
            background-color: #00629f;
            background-image: url(${pageContext.request.contextPath}/static/images/error_power.png);
            background-position: center 40%;
            background-repeat: no-repeat;
        }
        #error
        {
            width: 960px;
            text-align: center;
            margin-top: 400px;
        }

        .error_color{
            color:#dddd21;
        }
    </style>



    <script language="javascript" type="text/javascript">
        var timer;
        //启动跳转的定时器
        function startTimes() {
            timer = window.setInterval(showSecondes,1000);
        }

        var i = 5;
        function showSecondes() {
            if (i > 0) {
                i--;
                document.getElementById("secondes").innerHTML = i;
            }
            else {
                window.clearInterval(timer);
                location.href = "${pageContext.request.contextPath}/home_index.action";
            }
        }

        //取消跳转
        function resetTimer() {
            if (timer != null && timer != undefined) {
                window.clearInterval(timer);
                location.href = "${pageContext.request.contextPath}/home_index.action";
            }
        }
    </script>
</head>
<body class="error_power_page" onload="startTimes();">
<h1 id="error">
    您无权访问此页面，&nbsp;<span id="secondes" class="error_color">5</span>&nbsp;秒后将自动跳转，立即跳转请点击&nbsp;
    <a class ="error_color" href="javascript:resetTimer();" >返回</a>
</h1>
</body>
</html>
