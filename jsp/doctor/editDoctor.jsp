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
    <input type="hidden" id="photo_path"  name="photo_path" value=""/>

    <div class="layui-form-item">
        <label class="layui-form-label">User name</label>
        <div class="layui-input-block">
            <input type="text" id="username" class="layui-input"
                   name="username" value="${hotel_user.username}">
        </div>
    </div>

    <div class="layui-upload">
        <label for="username" class="layui-form-label">
            <span class="x-red">*</span>Portrait</label>
        <div class="layui-input-inline">
            <button type="button" class="layui-btn" id="test1">Upload portrait</button>
            <div class="layui-upload-list">
                <img class="layui-upload-img" id="demo1" width="100px" height="100px">
                <p id="demoText"></p>
            </div>
        </div>
    </div>



    <div class="layui-form-item">
        <label class="layui-form-label">Name</label>
        <div class="layui-input-block">
            <input type="text" id="realname" class="layui-input userName"
                   lay-verify="required" placeholder="Please enter Name" name="realname"
                   value="${hotel_user.realname}">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">Email</label>
        <div class="layui-input-block">
            <input type="text" name="email" id="email" id="email" class="layui-input"
                   lay-verify="email" placeholder="Please enter email" value="${hotel_user.email}">
        </div>
    </div>




    <div class="layui-form-item">
        <label class="layui-form-label">Gender</label>
        <div class="layui-input-block">
            <c:if test="${hotel_user.gender==0}">
                <input type="radio" name="gender" value="1" title="Male">
                <input type="radio" name="gender" value="0" title="Female" checked>
                <input type="radio" name="gender" value="2" title="Secret">
            </c:if>
            <c:if test="${hotel_user.gender==1}">
                <input type="radio" name="gender" value="1" title="Male" checked>
                <input type="radio" name="gender" value="0" title="Female" >
                <input type="radio" name="gender" value="2" title="Secret">
            </c:if>
            <c:if test="${hotel_user.gender==2}">
                <input type="radio" name="gender" value="1" title="Male" >
                <input type="radio" name="gender" value="0" title="Female" >
                <input type="radio" name="gender" value="2" title="Secret" checked>
            </c:if>
        </div>
    </div>


    <div class="layui-form-item">
        <label class="layui-form-label">Phone</label>
        <div class="layui-input-block">
            <input type="text" name="phone" class="layui-input"
                   lay-verify="phone" placeholder="Phone number" value="${hotel_user.phone}">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="updateDoctor">Submit</button>
        </div>
    </div>
</form>
<script type="text/javascript" src="${ctx }/layui/layui.js"></script>
<script type="text/javascript" src="${ctx }/js/doctor/editDoctor.js"></script>
<script type="text/javascript" src="${ctx }/js/pubilc.js"></script>
</body>
</html>















