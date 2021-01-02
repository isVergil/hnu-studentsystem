<%--
  Created by IntelliJ IDEA.
  User: bill
  Date: 2021/1/2
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>富文本编辑器</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../../lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="../../css/public.css" media="all">
</head>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">

        <blockquote class="layui-elem-quote">
            请在下方区域输入要反馈的内容：
        </blockquote>

        <div id="editor" style="margin: 10px 0 10px 0">
        </div>
        <div>
            <button type="button" class="layui-btn">提交</button>
        </div>

        <pre class="layui-code">
        var E = window.wangEditor;
        var editor = new E('#editor');
        editor.customConfig.uploadImgServer = "../api/upload.json";
        editor.customConfig.uploadFileName = 'image';
        editor.customConfig.pasteFilterStyle = false;
        editor.customConfig.uploadImgMaxLength = 5;
        editor.customConfig.uploadImgHooks = {
            // 上传超时
            timeout: function (xhr, editor) {
                layer.msg('上传超时！')
            },
            // 如果服务器端返回的不是 {errno:0, data: [...]} 这种格式，可使用该配置
            customInsert: function (insertImg, result, editor) {
                console.log(result);
                if (result.code == 1) {
                    var url = result.data.url;
                    url.forEach(function (e) {
                        insertImg(e);
                    })
                } else {
                    layer.msg(result.msg);
                }
            }
        };
        editor.customConfig.customAlert = function (info) {
            layer.msg(info);
        };
        editor.create();
        </pre>

    </div>
</div>

<!-- 注意， 只需要引用 JS，无需引用任何 CSS ！！！-->
<script src="../../lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script src="../../js/lay-config.js?v=1.0.4" charset="utf-8"></script>
<script type="text/javascript">
    layui.use(['layer','wangEditor'], function () {
        var $ = layui.jquery,
            layer = layui.layer,
            wangEditor = layui.wangEditor;

        var editor = new wangEditor('#editor');
        editor.customConfig.uploadImgServer = "../api/upload.json";
        editor.customConfig.uploadFileName = 'image';
        editor.customConfig.pasteFilterStyle = false;
        editor.customConfig.uploadImgMaxLength = 5;
        editor.customConfig.uploadImgHooks = {
            // 上传超时
            timeout: function (xhr, editor) {
                layer.msg('上传超时！')
            },
            // 如果服务器端返回的不是 {errno:0, data: [...]} 这种格式，可使用该配置
            customInsert: function (insertImg, result, editor) {
                console.log(result);
                if (result.code == 1) {
                    var url = result.data.url;
                    url.forEach(function (e) {
                        insertImg(e);
                    })
                } else {
                    layer.msg(result.msg);
                }
            }
        };
        editor.customConfig.customAlert = function (info) {
            layer.msg(info);
        };
        editor.create();

    });
</script>
</body>
</html>
