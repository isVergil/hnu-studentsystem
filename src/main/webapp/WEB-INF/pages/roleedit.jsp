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
</head>
<body>
<div class="layuimini-container" style="height: 100%">
    <div class="layuimini-main">
        <blockquote class="layui-elem-quote layui-text">
            小提示： 请选择系别。
        </blockquote>
        <form class="layui-form" action="" lay-filter="formRender">
            <input hidden value="${id}" name="id">
            <div class="layui-form-item">
                <label class="layui-form-label">系别：</label>
                <div class="layui-input-inline">
                    <select name="role" id="deptselecter">
                        <option value="">请选择系别</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
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

        $.ajax({
            url: "/dictionary/getData?parentid=2",
            type: 'GET',
            dataType: 'json',
            success: function (data) {
                console.log(data);
                $("#deptselecter option:not(:first)").remove();
                if (data.data.length > 0) {
                    $.each(data.data, function (index, item) {
                        $('#deptselecter').append(new Option(item.name, item.id));
                    });
                    form.render('select', 'formRender');
                }
            }
        });
        <%--var select = 'dd[lay-value=' + ${role} +']';--%>
        <%--$('#deptselecter').siblings("div.layui-form-select").find('dl').find(select).click();--%>

        //监听提交
        form.on('submit(submitRender)', function (data) {
            console.log(data.field);
            //向后台发送数据提交添加
            $.ajax({
                url: "/user/updateRole?role=" + data.field.role + "&id=" + data.field.id,
                type: "GET",
                async: true,
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
    })
</script>
</body>
</html>
