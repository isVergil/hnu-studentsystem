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
    <link rel="stylesheet" href="/lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="/css/public.css" media="all">
</head>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">
        <table class="layui-hide" id="currentTableId" lay-filter="currentTableFilter"></table>
        <script type="text/html" id="currentTableBar">
            <a class="layui-btn layui-btn-normal layui-btn-xs data-edit-btn" lay-event="edit">修改权限</a>
            <a class="layui-btn layui-btn-xs layui-btn-danger data-delete-btn" lay-event="delete">删除</a>
        </script>
    </div>
</div>
<script src="/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script>
    layui.use(['form', 'table', 'element'], function () {
        var $ = layui.jquery,
            form = layui.form,
            element = layui.element,
            table = layui.table;

        table.render({
            elem: '#currentTableId',
            url: '/user/roleInfo',
            toolbar: '#toolbarDemo',
            defaultToolbar: ['filter', 'exports', 'print'],
            cols: [[
                {type: "numbers", title: "序号", width: 100},
                {field: 'username', title: '用户名', minWidth: 100, sort: true},
                {field: 'chinesename', title: '中文名', minWidth: 100, sort: true},
                // {field: 'type', width: 200, title: '类型'},
                {
                    field: 'type', width: 200, title: '类型',
                    templet: function (res) {//类型
                        if (res.type == '0') {
                            return '<span class="layui-btn layui-btn-primary layui-btn-xs">普通管理员</span>'
                        } else {
                            return '<span class="layui-btn layui-btn-warm layui-btn-xs">超级管理员</span>'
                        }
                    }
                },
                // {field: 'status', width: 200, title: '状态'},
                {
                    field: 'status', width: 200, title: '状态',
                    templet: function (res) {//类型
                        if (res.status == '0') {
                            return '<span class="layui-btn layui-btn-danger layui-btn-xs">锁定</span>'
                        } else {
                            return '<span class="layui-btn layui-btn layui-btn-xs">正常</span>'
                        }
                    }
                },
                {field: 'name', title: '权限', minWidth: 400, sort: true},
                {title: '操作', toolbar: '#currentTableBar', align: "center"}
            ]],
            limits: [10, 15, 20, 25, 50, 100],
            limit: 10,
            page: true,
            skin: 'line'
        });

        table.on('tool(currentTableFilter)', function (obj) {
            var data = obj.data;
            console.log(data);
            if (obj.event === 'edit') {
                var index = layer.open({
                    title: '编辑权限',
                    type: 2,
                    shade: 0.2,
                    maxmin: true,
                    shadeClose: true,
                    area: ['40%', '50%'],
                    content: '/user/editRole?role=' + data.role + "&id=" + data.id,
                });
                $(window).on("resize", function () {
                    layer.full(index);
                });
            } else if (obj.event === 'delete') {
                //表格中删除一行
                layer.confirm('确认删除？', function (index) {
                    //调用删除功能
                    layer.close(index);
                });
            }
        });
    });
</script>

</body>
</html>