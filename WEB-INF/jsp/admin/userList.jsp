<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="${ctx}/layui/css/layui.css">
    <link rel="stylesheet" href="${ctx }/css/list.css" media="all" />
    <link rel="stylesheet" href="${ctx }/css/font_eolqem241z66flxr.css"
          media="all" />
    <link rel="stylesheet" href="${ctx }/css/main.css" media="all" />
    <script>
        var ctx = "${ctx}";
    </script>

    <style>
        .layui-table-cell {
            height: 100%;
            max-width: 100%;
        }
    </style>


</head>
<body class="childrenBody"> <!--这个保证内容不会铺满父窗口但是必须要加入main.css-->

<blockquote class="layui-elem-quote news_search">
    <form class="layui-form">
        <div class="layui-inline">
            <div class="layui-input-inline">
                <input type="text" id="username" value="" placeholder="User name"
                       class="layui-input search_input " style="margin-left: 10px">
            </div>
            <div class="layui-input-inline">
                <input type="text" id="realname" value="" placeholder="Name"
                       class="layui-input search_input " style="margin-left: 10px">
            </div>
            <div class="layui-input-inline" style="margin-left: 10px">
                <select name="gender" class="" id="gender">
                    <option value="-1">Gender</option>
                    <option value="1">Male</option>
                    <option value="0">Female</option>
                    <option value="2">Secret</option>
                </select>
            </div>
            <!--
            <div class="layui-input-inline" style="margin-left: 10px">
                <select name="status" class="" id="status">
                    <option value="-1">请选择用户状态</option>
                    <option value="0">禁用</option>
                    <option value="1">正常</option>
                </select>
            </div>
            -->
            <div class="layui-input-inline" style="margin-left: 10px">
                <select name="levelId" class="" id="levelId">
                    <option value="-1">Covid-19</option>
                    <option value="1">Yes</option>
                    <option value="2">No</option>
                </select>
            </div>

        <div style="margin-left: 10px">
            <div class="layui-inline">
                <input type="text" id="create_time_s" class="layui-input"
                       name="create_time_s" placeholder="Regtime(b)" value="">
            </div>
            -
            <div class="layui-inline">
                <input type="text" id="create_time_e" class="layui-input"
                       name="create_time_e" placeholder="Regtime(f)" value="">
            </div>
            <a style="margin-left: 10px" class="layui-btn search_btn" lay-submit="" data-type="search"
               lay-filter="search">Search</a>
        </div>
        </div>
    </form>
</blockquote>


<div class="layui-form">
    <table class="layui-table layui-table-cell"  id="userList" lay-filter="userList"></table>
</div>
<script type="text/html" id="sexTpl">
    {{#  if(d.gender==1){                                 }}
    <span style="color: #0000FF">Male</span>
    {{#   }  else if(d.gender==0){                        }}
    <span style="color: #FF5722">Female</span>
    {{#   }else {                                      }}
    <span style="color: #1AA094">Secret</span>
    {{#      }                                          }}
</script>


<script type="text/html" id="levelIdTpl">
    {{#  if(d.levelId==1){                                 }}
    <span style="color: #0000FF">Yes</span>
    {{#   }  else if(d.levelId==2){                        }}
    <span style="color: #FF5722">No</span>
    {{#   }else {                                      }}
    <span style="color: #1AA094">Secret</span>
    {{#      }                                          }}
</script>

<script type="text/html" id="statusTpl">
    <input type="checkbox" name="status" value="{{d.user_id}}"
           lay-skin="switch" lay-text="正常|禁用"
           lay-filter="statusSwitch" {{ d.status == 1 ? 'checked' : '' }}>
</script>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-sm" lay-event="edit">
        <i class="layui-icon">&#xe642;</i>
    </a>
    <a class="layui-btn layui-btn-sm layui-btn-danger" lay-event="delete">
        <i class="layui-icon">&#xe640;</i>
    </a>
</script>

<script type="text/html" id="imgtmp">
   <img src="../../hospital/img/{{d.photo_path}}" />
</script>

<script type="text/javascript" src="${ctx }/layui/layui.js"></script>
<script type="text/javascript" src="${ctx }/js/admin/userList.js"></script>
<script type="text/javascript" src="${ctx }/js/pubilc.js"></script>

</body>




</html>