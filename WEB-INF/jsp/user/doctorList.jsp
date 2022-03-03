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
                <input type="text" id="realname" value="" placeholder="Doctor's Name"
                       class="layui-input search_input " style="margin-left: 10px">
            </div>
            <div class="layui-input-inline" style="margin-left: 10px">
                <select name="gender" class="" id="gender">
                    <option value="-1">Gender</option>
                    <option value="1">Male</option>
                    <option value="0">Female</option>
                    <option value="2">Gender</option>
                </select>
            </div>

            <div class="layui-input-inline">
                <select name="depart_id" id="depart_id">
                    <option value="-1">Department</option>
                    <c:forEach items="${departs}" var="c">
                        <option value="${c.depart_id}">${c.depart_name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="layui-input-inline" style="margin-left: 10px">
                <select name="rank" class="" id="rank">
                    <option value="-1">Doctor's title</option>
                    <option value="0">Executive director</option>
                    <option value="1">Chief</option>
                    <option value="2">Associate chief</option>
                    <option value="3">Attending</option>
                    <option value="4">Associate attending</option>
                    <option value="5">Internship</option>
                </select>
            </div>


            <div style="margin-left: 10px">

                <a style="margin-left: 10px" class="layui-btn search_btn" lay-submit="" data-type="search"
                   lay-filter="search">Search</a>
            </div>


        </div>
    </form>
</blockquote>


<div class="layui-form">
    <table class="layui-table layui-table-cell"  id="doctorList" lay-filter="doctorList"></table>
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


<script type="text/html" id="rankTpl">
    {{#  if(d.rank==0){                                 }}
    <span style="color: #0000FF">Executive director</span>
    {{#   }  else if(d.rank==1){                        }}
    <span style="color: #FF5722">Chief</span>
    {{#   }  else if(d.rank==2){                        }}
    <span style="color: #FF5722">Associate chief</span>
    {{#   }  else if(d.rank==3){                        }}
    <span style="color: #FF5722">Attending</span>
    {{#   }  else if(d.rank==4){                        }}
    <span style="color: #FF5722">Associate attending</span>
    {{#   }else {                                      }}
    <span style="color: #1AA094">Internship</span>
    {{#      }                                          }}
</script>



<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-sm" lay-event="res">
        <i class="layui-icon">&#xe642;</i>
    </a>
    <!--
    <a class="layui-btn layui-btn-sm layui-btn-danger" lay-event="resCancel">
        <i class="layui-icon">&#xe640;</i>
    </a>
    -->
</script>

<script type="text/html" id="imgtmp">
    <img src="../../hospital/img/{{d.photo_path}}" />
</script>

<script type="text/javascript" src="${ctx }/layui/layui.js"></script>
<script type="text/javascript" src="${ctx }/js/user/doctorList.js"></script>
<script type="text/javascript" src="${ctx }/js/pubilc.js"></script>

</body>




</html>