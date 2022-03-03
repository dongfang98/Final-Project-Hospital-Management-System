
layui.use([ 'form','layer','upload','jquery','table','laydate'], function() {
    var layer = layui.layer, $ = layui.jquery, form = layui.form, table = layui.table, laydate = layui.laydate;
    var upload=layui.upload;
    /*
    laydate.render({
        elem: '#birthday'
    });
*/
    laydate.render({
        elem:'#create_time',
        type:'datetime' //可选择：年、月、日、时、分、秒
    });





    form.on("submit(updateNote)",function (data) {
        var index=top.layer.msg("数据提交中，请稍候",{icon:16,time:false,shade:0.2});
        // var index1=parent.layer.getFrameIndex(window.name); //这是获得的 学生列表 这个窗口？
        var msg;
        // var flag=false;
        $.ajax({
            type:"post",
            async:false,
            url:ctx+"/note/updateNote",
            data:data.field,  //
            // Student.java 中 birthday属性前必须有
            // @DateTimeFormat(pattern = "yyyy-MM-dd") 很重要 必须加上 不然jsp中
            // 数据类型和这里绑定不了 ajax请求进入不了controller
            //createTime前也要有@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
            dataType:"json",
            success:function (d) {
                if(d.code==0)
                {
                    msg="病历更新成功";
                    // flag=true;
                }
                else
                {
                    msg=d.msg;
                }
            } ,
            error:function () {
                layer.msg("错误，请检查sql及输出",{icon:2});

            }
        });
        setTimeout(function () {
            top.layer.close(index);
            top.layer.msg(msg);
            layer.closeAll("iframe");
            setTimeout(function () {  //添加一个 延时 否则接着刷新 看不到提示的信息
                //刷新父页面
                parent.location.reload();
            },1000);
        },2000);
        return false;

    });


});







