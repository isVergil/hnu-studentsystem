<%--
  Created by IntelliJ IDEA.
  User: bill
  Date: 2021/1/2
  Time: 9:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>menu</title>
    <link rel="stylesheet" href="../lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="../css/public.css" media="all">
    <style>
        .layui-btn:not(.layui-btn-lg ):not(.layui-btn-sm):not(.layui-btn-xs) {
            height: 34px;
            line-height: 34px;
            padding: 0 8px;
        }
    </style>
</head>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">
        <%--        <blockquote class="layui-elem-quote">--%>
        <%--            Layui的树形表格treeTable，支持异步加载(懒加载)、复选框联动、折叠状态记忆。<br>--%>
        <%--            <a href="https://gitee.com/whvse/treetable-lay" target="_blank" class="layui-btn layui-btn-danger">treetable-lay</a>--%>
        <%--        </blockquote>--%>
        <div>
            <div class="layui-btn-group">
                <button class="layui-btn" id="btn-expand">全部展开</button>
                <button class="layui-btn layui-btn-normal" id="btn-fold">全部折叠</button>
            </div>
            <table id="munu-table" class="layui-table" lay-filter="munu-table"></table>
        </div>
    </div>
</div>
<!-- 操作列 -->
<script type="text/html" id="auth-state">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="add">新增字典</a>
    <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="edit">修改</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<script src="../../lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script src="../../js/lay-config.js?v=1.0.4" charset="utf-8"></script>
<script>
    layui.use(['table', 'treetable'], function () {
        var $ = layui.jquery;
        var table = layui.table;
        var treetable = layui.treetable;

        // 渲染表格
        layer.load(2);
        treetable.render({
            treeColIndex: 1,
            treeSpid: -1,
            treeIdName: 'id',
            treePidName: 'parentid',
            elem: '#munu-table',
            url: '/dictionary/getData',
            page: false,
            cols: [[
                {type: 'numbers'},
                {field: 'name', minWidth: 200, title: '字典名'},
                {field: 'remarks', title: '备注'},
                {templet: '#auth-state', width: 300, align: 'center', title: '操作'}
            ]],
            done: function () {
                layer.closeAll('loading');
            }
        });

        $('#btn-expand').click(function () {
            treetable.expandAll('#munu-table');
        });

        $('#btn-fold').click(function () {
            treetable.foldAll('#munu-table');
        });

        //监听工具条
        table.on('tool(munu-table)', function (obj) {
            var data = obj.data;
            var layEvent = obj.event;
            if (layEvent === 'add') {
                var index = layer.open({
                    title: '新增字典',
                    type: 2,
                    shade: 0.2,
                    maxmin: true,
                    shadeClose: true,
                    area: ['40%', '45%'],
                    content: '/dictionary/addPage?parentid=' + data.id + '&parentname=' + data.name,
                });
                // $(window).on("resize", function () {
                //     layer.full(index);
                // });
                return false;
            }
            if (layEvent === 'edit') {
                console.log(obj);
                var index = layer.open({
                    title: '修改字典',
                    type: 2,
                    shade: 0.2,
                    maxmin: true,
                    shadeClose: true,
                    area: ['40%', '45%'],
                    content: '/dictionary/editPage?id=' + data.id + '&parentid=' + data.parentid + '&name=' + data.name + '&remarks=' + data.remarks,
                });
                return false;
            }
            if (layEvent === 'del') {
                //todo 逻辑判断若有子节点不能删除
                layer.msg('删除' + data.id);
            }
        });
    });
</script>
</body>
</html>
