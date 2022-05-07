<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="${ctx}/layui/css/layui.css">
    <script>
        var ctx = "${ctx}";
    </script>
</head>
<body>
<form class="layui-form" style="width: 80%;">
    <!--管理员id 这个必须要有 因为底层sql是根据id来更新的
    但是password和 status其他字段可有可无 但是类型和名称必须一样 不然会绑定错误
    ajax无法进去controller
    -->
    <input type="hidden" name="doctor_id" value="${hotel_user.doctor_id}" id="doctor_id"/>


    <div class="layui-form-item">
        <label class="layui-form-label">用户名</label>
        <div class="layui-input-block">
            <input type="text" id="username" class="layui-input"
                   name="username" value="${hotel_user.username}">
        </div>
    </div>


    <div class="layui-form-item">
        <label class="layui-form-label">真实姓名</label>
        <div class="layui-input-block">
            <input type="text" id="realname" class="layui-input userName"
                   lay-verify="required" placeholder="请输入真实姓名" name="realname"
                   value="${hotel_user.realname}">
        </div>
    </div>




    <div class="layui-form-item">
    <div class="layui-input-inline">
        <select name="depart_id" id="depart_id">
            <option value="-1">请选择所属科室</option>
            <c:forEach items="${departs}" var="c">
                <option value="${c.depart_id}">${c.depart_name}</option>
            </c:forEach>
        </select>
    </div>
    </div>
    <div class="layui-form-item">
    <div class="layui-input-inline" >
        <select name="rank" class="" id="rank">
            <option value="-1">请选择医生级别</option>
            <option value="0">行政主任</option>
            <option value="1">主任医师</option>
            <option value="2">副主任医师</option>
            <option value="3">主治医师</option>
            <option value="4">副主治医师</option>
            <option value="5">实习</option>
        </select>
    </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="updateDoctor">立即保存</button>
        </div>
    </div>
</form>
<script type="text/javascript" src="${ctx }/layui/layui.js"></script>
<script type="text/javascript" src="${ctx }/js/admin/editDoctor.js"></script>
<script type="text/javascript" src="${ctx }/js/pubilc.js"></script>
</body>
</html>















