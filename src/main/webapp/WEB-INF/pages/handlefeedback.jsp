<%--
  Created by IntelliJ IDEA.
  User: bill
  Date: 2020/12/29
  Time: 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../../lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="../../css/public.css" media="all">
</head>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">
        <table class="layui-hide" id="currentTableId" lay-filter="currentTableFilter"></table>
        <script type="text/html" id="currentTableBar">
            <a class="layui-btn layui-btn layui-btn-xs data-edit-btn" lay-event="view">查看详情</a>
            <a class="layui-btn layui-btn-normal layui-btn-xs data-edit-btn" lay-event="edit">处理反馈</a>
        </script>
    </div>
</div>
<script src="../../lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js"></script>
<script>
    layui.use(['form', 'table', 'element'], function () {
        var $ = layui.jquery,
            form = layui.form,
            element = layui.element,
            table = layui.table;

        table.render({
            elem: '#currentTableId',
            url: '/feedback/info',
            toolbar: '#toolbarDemo',
            defaultToolbar: ['filter', 'exports', 'print'],
            cols: [[
                {type: "numbers", width: 50, title: "序号"},
                {field: 'submiterCN', width: 200, title: '提交人', sort: true},
                {field: 'handlerCN', width: 200, title: '处理人', sort: true},
                {
                    field: 'status', width: 200, title: '是否处理', sort: true,
                    templet: function (res) {//类型
                        if (res.status == '0') {
                            return '<span class="layui-btn layui-btn-danger layui-btn-xs">未处理</span>'
                        } else {
                            return '<span class="layui-btn layui-btn layui-btn-xs">已处理</span>'
                        }
                    }
                },
                {field: 'submittime', width: 200, title: '提交时间'},
                {field: 'handletime', width: 200, title: '处理时间'},
                {title: '操作', minWidth: 150, toolbar: '#currentTableBar', align: "center"}
            ]],
            limits: [10, 15, 20, 25, 50, 100],
            limit: 10,
            page: true,
            skin: 'line'
        });

        table.on('tool(currentTableFilter)', function (obj) {
            var data = obj.data;
            console.log(data);
            if (obj.event === 'view') {
                // var index = layer.open({
                //     title: '查看详情',
                //     type: 2,
                //     shade: 0.2,
                //     maxmin: true,
                //     shadeClose: true,
                //     area: ['60%', '60%'],
                //     content: '<textarea>' + data.text + '<textarea/>',
                // });

                layer.alert(data.text, {title: "详情"});
                $(window).on("resize", function () {
                    layer.full(index);
                });
                return false;
            } else if (obj.event === 'edit') {
                layer.confirm('确认处理？', function (index) {
                    //调用处理功能
                    handeleById(data.id);
                    layer.close(index);
                });
            }
        });


        //删除一行 或 多行
        function handeleById(id) {
            $.ajax({
                url: "/feedback/handle?handlerid=" + ${sessionScope.user.id} +"&id=" + id,
                type: "GET",
                async: true,
                dataType: 'json',
                success: function (result) {
                    if (result.code == 0) {
                        layer.msg('处理成功！', {
                            icon: 6,
                            time: 500
                        }, function () {
                            window.location.reload();
                            var iframeIndex = layer.getFrameIndex(window.name);
                            layer.close(iframeIndex);
                        });
                    } else {
                        layer.msg("处理失败");
                    }
                }
            })
        };

    });
</script>

</body>
</html>
