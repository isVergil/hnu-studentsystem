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
        <div style="margin: 10px 10px 10px 10px">
            <div class="layui-collapse" lay-filter="test">
                <div class="layui-colla-item">
                    <h2 class="layui-colla-title">条件查询</h2>
                    <div class="layui-colla-content layui-show">
                        <form class="layui-form layui-form-pane" action="">
                            <div class="layui-form-item">
                                <label class="layui-form-label">院系班级</label>
                                <div class="layui-input-block">
                                    <input type="text" name="academy" autocomplete="off" class="layui-input"
                                           placeholder="请输入院系、班级、专业或研究方向模糊查询">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label">联系方式</label>
                                <div class="layui-input-block">
                                    <input type="text" name="contact" autocomplete="off" class="layui-input"
                                           placeholder="请输入手机号、qq、微信、邮箱模糊查询">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <div class="layui-inline">
                                    <label class="layui-form-label">姓名</label>
                                    <div class="layui-input-inline">
                                        <input type="text" name="name" autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-inline">
                                    <label class="layui-form-label">学号</label>
                                    <div class="layui-input-inline">
                                        <input type="text" name="studentid" autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-inline">
                                    <label class="layui-form-label">身份证号</label>
                                    <div class="layui-input-inline">
                                        <input type="text" name="idcard" autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-inline">
                                    <label class="layui-form-label">性别</label>
                                    <div class="layui-input-inline">
                                        <select name="gender">
                                            <option value="">请选择</option>
                                            <option value="1">男</option>
                                            <option value="0">女</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="layui-inline">
                                    <button type="submit" class="layui-btn layui-btn-primary" lay-submit=""  lay-filter="data-search-btn">
                                        <i class="layui-icon"> </i> 搜 索
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/html" id="toolbarDemo">
            <div class="layui-btn-container">
                <button class="layui-btn layui-btn-normal layui-btn-sm data-add-btn" lay-event="add"> 新增</button>
                <button class="layui-btn layui-btn-sm layui-btn-danger data-delete-btn" lay-event="delete"> 删除</button>
            </div>
        </script>

        <table class="layui-hide" id="currentTableId" lay-filter="currentTableFilter"></table>

        <script type="text/html" id="currentTableBar">
            <a class="layui-btn layui-btn-normal layui-btn-xs data-edit-btn" lay-event="edit">修改</a>
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

        //监听折叠
        // element.on('collapse(test)', function(data){
        //
        // });

        table.render({
            elem: '#currentTableId',
            url: '/student/info',
            toolbar: '#toolbarDemo',
            defaultToolbar: ['filter', 'exports', 'print'],
            cols: [[
                {type: "checkbox", width: 50},
                {field: 'name', width: 120, title: '学生姓名', sort: true},
                {field: 'idcard', width: 200, title: '身份证号', sort: true},
                {field: 'genderCN', width: 80, title: '性别', sort: true},
                {field: 'nation', width: 80, title: '民族', sort: true},
                {field: 'studentid', width: 120, title: '学号', sort: true},
                {field: 'academyCN', title: '学院', minWidth: 170, sort: true},
                {field: 'deptCN', title: '系别', minWidth: 80, sort: true},
                {field: 'classsCN', title: '班级', minWidth: 60, sort: true},
                {field: 'research', width: 130, title: '研究方向', sort: true},
                {field: 'email', width: 170, title: '邮箱', sort: true},
                {field: 'telephone', width: 150, title: '手机', sort: true},
                {title: '操作', minWidth: 150, toolbar: '#currentTableBar', align: "center"}
            ]],
            limits: [10, 15, 20, 25, 50, 100],
            limit: 10,
            page: true,
            skin: 'line'
        });

        // 监听搜索操作
        form.on('submit(data-search-btn)', function (data) {
            console.log(data.field);
            // layer.alert(result, {
            //     title: '最终的搜索信息'
            // });

            //执行搜索重载
            table.reload('currentTableId', {
                url: 'student/info?academy=' + data.field.academy + '&contact=' + data.field.contact + '&name=' + data.field.name + '&studentid=' + data.field.studentid + '&idcard=' + data.field.idcard + '&gender=' + data.field.gender,
                page: {
                    curr: 1
                }
            }, 'data');
            return false;
        });

        //toolbar监听事件
        table.on('toolbar(currentTableFilter)', function (obj) {
            var checkStatus = table.checkStatus('currentTableId');
            var selectedData = checkStatus.data;
            console.log(selectedData);
            // 监听新增操作
            if (obj.event === 'add') {
                var index = layer.open({
                    title: '新增',
                    type: 2,
                    shade: 0.2,
                    maxmin: true,
                    shadeClose: true,
                    area: ['100%', '100%'],
                    content: '/student/addPage',
                });
                $(window).on("resize", function () {
                    layer.full(index);
                });
            }
            // 监听多选删除操作
            if (obj.event === 'delete') {
                //获取选中的ids
                var checkStatus = table.checkStatus(obj.config.id);
                var data = checkStatus.data;
                if (data.length == 0) {
                    layer.msg("请选择要删除的学生信息！");
                } else {
                    var ids = getCheackId(data);
                    console.log(ids);
                    layer.confirm('确认删除？', function (index) {
                        //调用删除功能
                        deleteInfoByIds(ids, index);
                        layer.close(index);
                    });
                }
            }
        });

        //监听表格复选框选择
        table.on('checkbox(currentTableFilter)', function (obj) {
            console.log(obj)
        });


        table.on('tool(currentTableFilter)', function (obj) {
            var data = obj.data;
            if (obj.event === 'edit') {
                var index = layer.open({
                    title: '修改',
                    type: 2,
                    shade: 0.2,
                    maxmin: true,
                    shadeClose: true,
                    area: ['100%', '100%'],
                    content: '/student/editPage?id=' + data.id,
                });
                $(window).on("resize", function () {
                    layer.full(index);
                });
                return false;
            } else if (obj.event === 'delete') {
                //表格中删除一行
                layer.confirm('确认删除？', function (index) {
                    //调用删除功能
                    deleteInfoByIds(data.id, index);
                    layer.close(index);
                });
            }
        });


        //删除一行 或 多行
        function deleteInfoByIds(ids, index) {
            $.ajax({
                url: "/student/deleteByIds",
                type: "POST",
                async: true,
                data: {ids: ids},
                dataType: 'json',
                success: function (result) {
                    console.log(result);
                    if (result.code == 0) {
                        layer.msg('删除成功', {
                            icon: 6,
                            time: 500
                        }, function () {
                            window.location.reload();
                            var iframeIndex = layer.getFrameIndex(window.name);
                            layer.close(iframeIndex);
                        });
                    } else {
                        layer.msg("删除失败");
                    }
                }
            })
        };

        //
        function getCheackId(data) {
            var arr = new Array();
            for (var i = 0; i < data.length; i++) {
                arr.push(data[i].id);
            }
            //拼接id
            return arr.join(",");
        };

    });
</script>

</body>
</html>