

//<script type="text/javascript" src="/layui/lay/modules/jquery.js"></script>
// 解决Ajax异步请求 springMvc 不跳转页面的问题
layui.use(['jquery' ],function (exports)
{
    $ = layui.jquery;
    $.ajaxSetup({
        //设置ajax请求结束后的执行动作
        complete:
            function (XMLHttpRequest, textStatus) {
                // 通过XMLHttpRequest取得响应头，sessionstatus
                var sessionstatus = XMLHttpRequest.getResponseHeader("sessionstatus");
                if (sessionstatus == "TIMEOUT") {
                    var win = window;
                    while (win != win.top) {
                        win = win.top;
                    }
                    win.location.href = XMLHttpRequest.getResponseHeader("CONTEXTPATH");
                    //win.parent.location.href=XMLHttpRequest.getResponseHeader("CONTEXTPATH");
                }
            }
    });

});
