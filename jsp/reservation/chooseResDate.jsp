<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Create Account</title>
    <link rel="stylesheet" href="${ctx }/layui/css/layui.css" media="all" />
    <script>
        <%-- js全局变量  js文件中都可以直接应用这个变量--%>
        var ctx="${ctx}";
    </script>
    <script type="text/css">
        .layui-form-item .layui-inline {
            width: 33.333%;
            float: left;
            margin-right: 0;
        }

        @media ( max-width :1240px) {
            .layui-form-item .layui-inline {
                width: 100%;
                float: none;
            }
        }
    </script>
</head>
<body class="childrenBody">
<form class="layui-form" style="width: 80%;" id="aaf">

    <div class="layui-form-item">
        <label class="layui-form-label">Res date</label>
        <div class="layui-input-inline">
            <input type="text" id="order_time" name="order_time" class="layui-input"
                   lay-verify="required" placeholder="Please enter res date">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="addDate">Submit</button>
        </div>
    </div>
</form>

<script type="text/javascript" src="${ctx }/layui/layui.js"></script>
<script type="text/javascript" src="${ctx }/js/reservation/chooseResDate.js"></script>
<script type="text/javascript" src="${ctx }/js/pubilc.js"></script>
</body>
</html>