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
            <a class="layui-btn layui-btn-normal layui-btn-xs data-edit-btn" lay-event="view">详情</a>
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
            url: '/dictionary/loginfo',
            toolbar: '#toolbarDemo',
            defaultToolbar: ['filter', 'exports', 'print'],
            cols: [[
                {type: "numbers", title: "序号", width: 100},
                {
                    field: 'loglevel', title: '类型', width: 100,
                    templet: function (res) {//类型
                        if (res.loglevel == 'INFO')
                            return '<span class="layui-btn layui-btn-normal layui-btn-xs">操作记录</span>';
                        if (res.loglevel == 'WARN')
                            return '<span class="layui-btn layui-btn-warm layui-btn-xs">警告信息</span>';
                        if (res.loglevel == 'ERROR')
                            return '<span class="layui-btn layui-btn-danger layui-btn-xs">错误信息</span>';
                        else
                            return '<span class="layui-btn layui-btn-danger layui-btn-xs">未知信息</span>';
                    }
                },
                {field: 'classs', title: '全类名', minWidth: 400, sort: true},
                {field: 'message', title: '信息', minWidth: 500, sort: true},
                {field: 'method', title: '方法体', sort: true},
                {field: 'createtime', title: '发生时间', sort: true},
                {title: '操作', toolbar: '#currentTableBar', align: "center"}
            ]],
            limits: [10, 15, 20, 25, 50, 100],
            limit: 10,
            page: true,
            skin: 'line'
        });

        table.on('tool(currentTableFilter)', function (obj) {
            var data = obj.data;
            if (obj.event === 'view') {
                layer.alert(data.message, {title: "详情"});
                $(window).on("resize", function () {
                    layer.full(index);
                });
                return false;
            } else if (obj.event === 'delete') {
                //表格中删除一行
                layer.confirm('确认删除？', function (index) {
                    //调用删除功能
                    layer.close(index);
                });
            }
        });


        //删除一行 或 多行
        // function deleteInfoByIds(ids, index) {
        //     $.ajax({
        //         url: "/teacher/deleteByIds",
        //         type: "GET",
        //         async: true,
        //         dataType: 'json',
        //         contentType: "application/json",
        //         data: {ids: ids},
        //         success: function (result) {
        //             console.log(result);
        //             if (result.code == 0) {
        //                 layer.msg('删除成功', {
        //                     icon: 6,
        //                     time: 500
        //                 }, function () {
        //                     window.location.reload();
        //                     var iframeIndex = layer.getFrameIndex(window.name);
        //                     layer.close(iframeIndex);
        //                 });
        //             } else {
        //                 layer.msg("删除失败");
        //             }
        //         }
        //     })
        // };
        //
        // //
        // function getCheackId(data) {
        //     var arr = new Array();
        //     for (var i = 0; i < data.length; i++) {
        //         arr.push(data[i].id);
        //     }
        //     //拼接id
        //     return arr.join(",");
        // };

    });
</script>

</body>
</html>