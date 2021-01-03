<%--
  Created by IntelliJ IDEA.
  User: bill
  Date: 2021/1/3
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: bill
  Date: 2020/12/29
  Time: 13:02
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
    <style>
        .label-required-next:after {
            top: 6px;
            right: 5px;
            color: red;
            content: '*';
            position: absolute;
            margin-left: 4px;
            font-weight: 700;
            line-height: 1.8em;
        }
    </style>
</head>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">
        <blockquote class="layui-elem-quote layui-text">
            小提示： 请如实填写，若无法提交，<a href="/doc/modules/form.html#render" target="_blank">请联系管理员。</a>
        </blockquote>
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>编辑导师信息</legend>
        </fieldset>
        <form class="layui-form" action="" lay-filter="formRender">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label label-required-next">姓名：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="name" autocomplete="off" class="layui-input" lay-verify="requireName"
                               value="${editinfo.name}"
                               placeholder="请输入姓名">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">年纪：</label>
                    <div class="layui-input-block">
                        <input type="number" name="age" autocomplete="off" class="layui-input" value="${editinfo.age}">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">性别：</label>
                    <div class="layui-input-block">
                        <input type="radio" id="gender1" name="gender" value="1" title="男" checked>
                        <input type="radio" id="gender0" name="gender" value="0" title="女">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">导师编号：</label>
                    <div class="layui-input-block">
                        <input type="text" name="teacherid" autocomplete="off" class="layui-input"
                               value="${editinfo.teacherid}">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">联系方式：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="connect" autocomplete="off" value="${editinfo.connect}"
                               class="layui-input" placeholder="请输入导师联系方式">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">学院：</label>
                <div class="layui-input-inline">
                    <select name="academy" id="academyselecter" lay-filter="academyRender">
                        <option value="">请选择学院</option>
                    </select>
                </div>
                <label class="layui-form-label">系别：</label>
                <div class="layui-input-inline">
                    <select name="dept" id="deptselecter" lay-filter="deptRender">
                        <option value="">请选择系别</option>
                        <option value="杭州">杭州</option>
                        <option value="宁波">宁波</option>
                        <option value="温州">温州</option>
                        <option value="温州">台州</option>
                        <option value="温州">绍兴</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">研究方向：</label>
                <div class="layui-input-inline">
                    <textarea style="height: 100px" type="text" name="research" autocomplete="off"
                              class="layui-input"></textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    <button class="layui-btn" lay-submit="" lay-filter="submitRender">立即提交</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script src="../../lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
<script src="../../js/lay-config.js?v=1.0.4" charset="utf-8"></script>
<script>
    layui.use(['form', 'miniTab', 'layedit', 'laydate'], function () {
        var form = layui.form
            , layer = layui.layer
            , laydate = layui.laydate
            , miniTab = layui.miniTab;

        //设置gender初始选中值
        var gender =${editinfo.gender};

        if (gender == 'true') {
            $("#gender0").removeAttr("checked");
            $("#gender1").prop("checked", "checked");
        } else {
            console.log(gender);
            $('#gender1').removeAttr("checked");
            $('#gender0').prop("checked", "checked");
        }

        //学院 系别 班级 三级联动
        $.ajax({
            url: "/dictionary/getData?parentid=1",
            type: 'GET',
            data: {},
            dataType: 'json',
            success: function (data) {
                $("#academyselecter option:not(:first)").remove();
                $("#deptselecter option:not(:first)").remove();
                if (data.data.length > 0) {
                    $.each(data.data, function (index, item) {
                        $('#academyselecter').append(new Option(item.name, item.id));
                    });
                }
                form.render('select', 'formRender');
            }
        });

        form.on('select(academyRender)', function (data) {
            console.log(data.value.length)
            if (data.value.length == 0) {
                $("#deptselecter option:not(:first)").remove();
                form.render('select', 'formRender');
            } else {
                $.ajax({
                    url: "/dictionary/getData?parentid=" + data.value,
                    type: 'GET',
                    data: {},
                    dataType: 'json',
                    success: function (data) {
                        if (data.data.length > 0) {
                            $.each(data.data, function (index, item) {
                                $('#deptselecter').append(new Option(item.name, item.id));
                            });
                            form.render('select', 'formRender');
                        }
                    }
                });
            }
        });

        //自定义验证规则
        form.verify({
            requireName: function (value) {
                if (value.length == 0) {
                    return '姓名未填写！';
                }
            }
        });

        //监听提交
        form.on('submit(submitRender)', function (data) {
            console.log(data.field);
            //向后台发送数据提交添加
            $.ajax({
                url: "/teacher/edit",
                type: "POST",
                async: true,
                contentType: "application/json",
                data: JSON.stringify(data.field),
                dataType: 'json',
                success: function (result) {
                    console.log(result);
                    if (result.code == 0) {//如果成功
                        layer.msg('添加成功', {
                            icon: 6,
                            time: 500
                        }, function () {
                            parent.window.location.reload();
                            var iframeIndex = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(iframeIndex);
                        })
                    } else {
                        layer.msg("添加失败!");
                    }
                }
            });
            return false;
        });

    });
</script>
</body>
</html>
