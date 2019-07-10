<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/9
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setAttribute("base", request.getContextPath());
%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>login</title>
    <link href="${base}/static/bootstrap/css/bootstrap.css" rel="stylesheet">
    <style>
        .prompt {
            color: red;
            background-color: #5dffdf;
        }
    </style>
    <script>
        function hidden() {
            setTimeout(function () {
                document.getElementById("hidden").hidden = true;
            }, 3000)
        }
    </script>
</head>

<body onload="hidden();">

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <h3 class="text-left">
                欢迎使用OA系统，请登录
            </h3>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-4 column">
            <p>
                <em>Office Automation</em>
                办公自动化（简称OA），是将计算机、通信等现代化技术运用到传统办公方式，进而形成的一种新型办公方式。办公自动化利用现代化设备和信息化技术，代替办公人员传统的部分手动或重复性业务活动，优质而高效地处理办公事务和业务信息，实现对信息资源的高效利用，进而达到提高生产率、辅助决策的目的，最大限度地提高工作效率和质量、改善工作环境。
            </p>
        </div>
        <div class="col-md-8 column">
            <form class="form-horizontal" role="form" action="${base}/login" method="post">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputEmail3" name="loginName"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">登录密码</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword3" name="loginPwd"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Sign in</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div id="hidden" class="prompt">
                ${loginMsg}
            </div>

        </div>
    </div>
</div>
<script src="${base}/static/jquery/jquery.min.js"></script>
<script src="${base}/static/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
