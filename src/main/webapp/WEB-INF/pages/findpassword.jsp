<%--
  Created by IntelliJ IDEA.
  User: bill
  Date: 2021/1/3
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>找回密码</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../../lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="../../css/public.css" media="all">
    <link rel="stylesheet" href="../../js/lay-module/step-lay/step.css" media="all">
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
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>找回密码</legend>
        </fieldset>
        <blockquote class="layui-elem-quote layui-text">
            提示：先输入账号相关信息以找回密码！
        </blockquote>
        <div class="layui-fluid">
            <div class="layui-card">
                <div class="layui-card-body" style="padding-top: 40px;">
                    <div class="layui-carousel" id="stepForm" lay-filter="stepForm" style="margin: 0 auto;">
                        <div carousel-item>
                            <div>
                                <form class="layui-form" style="margin: 0 auto;max-width: 460px;padding-top: 40px;"
                                      lay-filter="formRender">
                                    <div class="layui-form-item">
                                        <label class="layui-form-label label-required-next">用户名:</label>
                                        <div class="layui-input-block required">
                                            <input type="text" name="username" placeholder="请填写账号名称" class="layui-input"
                                                   lay-verify="required" lay-reqtext="不能为空"
                                                   required/>
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <label class="layui-form-label label-required-next">中文名:</label>
                                        <div class="layui-input-block required">
                                            <input type="text" name="chinesename" placeholder="请填写中文姓名"
                                                   lay-verify="required" lay-reqtext="不能为空"
                                                   class="layui-input" required/>
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <label class="layui-form-label label-required-next">联系方式:</label>
                                        <div class="layui-input-block required">
                                            <input type="text" name="connect" placeholder="请填写联系方式" class="layui-input"
                                                   lay-verify="required" lay-reqtext="不能为空"
                                                   required/>
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <label class="layui-form-label label-required-next">用户类型:</label>
                                        <div class="layui-input-block required">
                                            <select required name="type">
                                                <option value="0" selected>普通管理员</option>
                                                <option value="1">超级管理员</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <label class="layui-form-label label-required-next">管理权限:</label>
                                        <div class="layui-input-block required">
                                            <select required name="role" lay-verify="required" id="roleselecter">
                                                <option value="" selected>请选择管理权限</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <div class="layui-input-block">
                                            <button class="layui-btn" lay-submit lay-filter="formStep">
                                                &emsp;下一步&emsp;
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div>
                                <form class="layui-form" style="margin: 0 auto;max-width: 460px;padding-top: 40px;">
                                    <div class="layui-form-item">
                                        <label class="layui-form-label label-required-next">填写密码:</label>
                                        <div class="layui-input-block required">
                                            <input type="password" id="password" name="password" placeholder="输入新密码:"
                                                   class="layui-input"
                                                   required/>
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <label class="layui-form-label label-required-next">再次填写:</label>
                                        <div class="layui-input-block required">
                                            <input type="password" name="newpassword" id="newpassword"
                                                   placeholder="输入新密码"
                                                   class="layui-input"
                                                   required/>
                                        </div>
                                    </div>
                                    <input hidden id="id" name="id">
                                    <div class="layui-form-item">
                                        <div class="layui-input-block">
                                            <button type="button" class="layui-btn layui-btn-primary pre">上一步</button>
                                            <button class="layui-btn" lay-submit lay-filter="formStep2">
                                                &emsp;确认修改&emsp;
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div>
                                <div style="text-align: center;margin-top: 90px;">
                                    <i class="layui-icon layui-circle"
                                       style="color: white;font-size:30px;font-weight:bold;background: #52C41A;padding: 20px;line-height: 80px;">&#xe605;</i>
                                    <div style="font-size: 24px;color: #333;font-weight: 500;margin-top: 30px;">
                                        找回成功！
                                    </div>
                                </div>
                                <div style="text-align: center;margin-top: 50px;">
                                    <a class="layui-btn" href="/login">去登录</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="../../lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script src="../../js/lay-config.js?v=1.0.4" charset="utf-8"></script>
<script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js"></script>
<script>
    layui.use(['form', 'step'], function () {
        var $ = layui.$,
            form = layui.form,
            step = layui.step;

        step.render({
            elem: '#stepForm',
            filter: 'stepForm',
            width: '100%', //设置容器宽度
            stepWidth: '750px',
            height: '500px',
            stepItems: [{
                title: '填写账号相关信息'
            }, {
                title: '填写新密码'
            }, {
                title: '完成'
            }]
        });

        //权限下拉框
        $.ajax({
            url: "/dictionary/getData?parentid=2",
            type: 'GET',
            data: {},
            dataType: 'json',
            success: function (data) {
                if (data.data.length > 0) {
                    $.each(data.data, function (index, item) {
                        $('#roleselecter').append(new Option(item.name, item.id));
                    });
                }
                form.render('select', 'formRender');
            }
        });
        form.on('submit(formStep)', function (data) {
            var datas = data.field;
            //账号数据库验证
            $.ajax({
                url: "/verifyAccount",
                type: "POST",
                async: true,
                contentType: "application/json",
                data: JSON.stringify(datas),
                dataType: 'json',
                success: function (result) {
                    if (result.code == 0) {//如果成功
                        layer.msg('账号验证成功，请输入新密码', {
                            icon: 6,
                            time: 500
                        }, function () {
                            $('#id').val(result.msg);
                            step.next('#stepForm');
                        })
                    } else {
                        layer.msg("未找到该用户，请输入正确的账号信息!");
                    }
                }
            });
            return false;
        });

        form.on('submit(formStep2)', function (data) {
            var datas = data.field;
            if (datas.newpassword != datas.password)
                layer.msg("两次输入密码输入不一致!");
            else {
                $.ajax({
                    url: "/changePassword",
                    type: "POST",
                    async: true,
                    contentType: "application/json",
                    data: JSON.stringify(datas),
                    dataType: 'json',
                    success: function (result) {
                        console.log(result);
                        if (result.code == 0) {//如果成功
                            layer.msg('密码修改成功！', {
                                icon: 6,
                                time: 500
                            }, function () {
                                $('#id').val(result.msg);
                                step.next('#stepForm');
                            })
                        } else {
                            layer.msg("修改密码失败，请联系管理员!");
                        }
                    }
                });
            }
            return false;
        });

        $('.pre').click(function () {
            step.pre('#stepForm');
        });

    })
</script>
</body>
</html>
