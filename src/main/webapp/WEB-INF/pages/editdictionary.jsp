<%--
  Created by IntelliJ IDEA.
  User: bill
  Date: 2021/1/2
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: bill
  Date: 2021/1/2
  Time: 10:36
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
<style type="text/css">
    .layui-form-label {
        width: 120px;
    }

    .layui-input-block {
        margin-left: 130px;
    }

    .layui-input {
        width: 400px;
    }

    .layui-textarea {
        width: 400px;
    }
</style>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">
        <form class="layui-form" action="">
            <input name="id" value="${id}" hidden>
            <input name="parentid" value="${parentid}" hidden>
            <div class="layui-form-item">
                <label class="layui-form-label">字典名称：</label>
                <div class="layui-input-block">
                    <input type="text" name="name" lay-verify="required" lay-reqtext="字典是必填项！" placeholder="必填" value="${name}"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">备注：</label>
                <div class="layui-input-block">
                    <textarea placeholder="请输入备注" class="layui-textarea" name="remarks" value="${remarks}"></textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit="" lay-filter="submitRender">提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script src="../../lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" type="text/javascript"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use(['form'], function () {
        var form = layui.form, layer = layui.layer;
        //监听提交
        form.on('submit(submitRender)', function (data) {
            //form单中的数据信息
            var datas = data.field;
            //向后台发送数据提交添加
            console.log(datas);
            $.ajax({
                url: "/dictionary/edit",
                type: "POST",
                async: true,
                contentType: "application/json",
                data: JSON.stringify(datas),
                dataType: 'json',
                success: function (result) {
                    console.log(result);
                    if (result.code == 0) {//如果成功
                        layer.msg('修改成功', {
                            icon: 6,
                            time: 500
                        }, function () {
                            parent.window.location.reload();
                            var iframeIndex = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(iframeIndex);
                        })
                    } else {
                        layer.msg("修改失败!");
                    }
                }
            });
            return false;

        });
    })
</script>

</body>
</html>

