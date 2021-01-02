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
            <legend>新增学生信息</legend>
        </fieldset>

        <form class="layui-form" action="" lay-filter="formRender">
            <input type="hidden" name="id" value="${editinfo.id}">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label label-required-next">姓名：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="name" autocomplete="off" class="layui-input" lay-verify="requireName"
                               value="${editinfo.name}"
                               placeholder="请输入姓名">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label label-required-next">民族：</label>
                    <div class="layui-input-block">
                        <select name="nation" id="selectnation">
                            <option value="汉族">汉族</option>
                            <option value="蒙古族">蒙古族</option>
                            <option value="回族">回族</option>
                            <option value="藏族">藏族</option>
                            <option value="维吾尔族">维吾尔族</option>
                            <option value="苗族">苗族</option>
                            <option value="彝族">彝族</option>
                            <option value="壮族">壮族</option>
                            <option value="布依族">布依族</option>
                            <option value="朝鲜族">朝鲜族</option>
                            <option value="满族">满族</option>
                            <option value="侗族">侗族</option>
                            <option value="瑶族">瑶族</option>
                            <option value="白族">白族</option>
                            <option value="土家族">土家族</option>
                            <option value="哈尼族">哈尼族</option>
                            <option value="哈萨克族">哈萨克族</option>
                            <option value="傣族">傣族</option>
                            <option value="黎族">黎族</option>
                            <option value="傈僳族">傈僳族</option>
                            <option value="佤族">佤族</option>
                            <option value="畲族">畲族</option>
                            <option value="高山族">高山族</option>
                            <option value="拉祜族">拉祜族</option>
                            <option value="水族">水族</option>
                            <option value="东乡族">东乡族</option>
                            <option value="纳西族">纳西族</option>
                            <option value="景颇族">景颇族</option>
                            <option value="柯尔克孜族">柯尔克孜族</option>
                            <option value="土族">土族</option>
                            <option value="达斡尔族">达斡尔族</option>
                            <option value="仫佬族">仫佬族</option>
                            <option value="羌族">羌族</option>
                            <option value="布朗族">布朗族</option>
                            <option value="撒拉族">撒拉族</option>
                            <option value="毛南族">毛南族</option>
                            <option value="仡佬族">仡佬族</option>
                            <option value="锡伯族">锡伯族</option>
                            <option value="阿昌族">阿昌族</option>
                            <option value="普米族">普米族</option>
                            <option value="塔吉克族">塔吉克族</option>
                            <option value="怒族">怒族</option>
                            <option value="乌孜别克族">乌孜别克族</option>
                            <option value="俄罗斯族">俄罗斯族</option>
                            <option value="鄂温克族">鄂温克族</option>
                            <option value="德昂族">德昂族</option>
                            <option value="保安族">保安族</option>
                            <option value="裕固族">裕固族</option>
                            <option value="京族">京族</option>
                            <option value="塔塔尔族">塔塔尔族</option>
                            <option value="独龙族">独龙族</option>
                            <option value="鄂伦春族">鄂伦春族</option>
                            <option value="赫哲族">赫哲族</option>
                            <option value="门巴族">门巴族</option>
                            <option value="珞巴族">珞巴族</option>
                            <option value="基诺族">基诺族</option>

                        </select>
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">性别：</label>
                    <div class="layui-input-block">
                        <input type="radio" name="gender" value="0" title="男" checked="checked">
                        <input type="radio" name="gender" value="1" title="女">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">身份证号：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="idcard" autocomplete="off" class="layui-input" placeholder="请输入身份证号"
                               value="${editinfo.idcard}">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">生日：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="birthday" id="birthday" autocomplete="off" class="layui-input"
                               value="${editinfo.birthdate}">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label label-required-next">手机：</label>
                    <div class="layui-input-inline">
                        <input type="text" lay-verify="requireTelephone" name="telephone" autocomplete="off"
                               value="${editinfo.telephone}"
                               class="layui-input" placeholder="请输入手机号">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label label-required-next">邮箱：</label>
                    <div class="layui-input-inline">
                        <input type="email" lay-verify="requireEmail" name="email" autocomplete="off"
                               value="${editinfo.email}"
                               class="layui-input" placeholder="请输入邮箱">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">QQ号：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="qq" autocomplete="off" class="layui-input" value="${editinfo.qq}">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">微信号：</label>
                    <div class="layui-input-inline">
                        <input type="text" name="wechat" autocomplete="off" class="layui-input"
                               value="${editinfo.wechat}">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">家庭住址：</label>
                <div class="layui-input-block">
                    <input type="text" name="homeaddress" autocomplete="off" value="${editinfo.homeaddress}"
                           class="layui-input">
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
                <label class="layui-form-label">班级：</label>
                <div class="layui-input-inline">
                    <select name="class" id="classselecter" lay-filter="classRender">
                        <option value="">请选择班级</option>
                        <option value="西湖区">西湖区</option>
                        <option value="余杭区">余杭区</option>
                        <option value="拱墅区">临安市</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">研究方向：</label>
                <div class="layui-input-block">
                    <input type="text" name="classs" autocomplete="off" value="${editinfo.classs}"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">备注：</label>
                <div class="layui-input-block">
                    <textarea name="remarks" class="layui-textarea" value="${editinfo.remarks}"></textarea>
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

        //学院 系别 班级 三级联动
        $.ajax({
            url: "/dictionary/getData?parentid=1",
            type: 'GET',
            data: {},
            dataType: 'json',
            success: function (data) {
                $("#academyselecter option:not(:first)").remove();
                $("#deptselecter option:not(:first)").remove();
                $("#classselecter option:not(:first)").remove();
                if (data.data.length > 0) {
                    $.each(data.data, function (index, item) {
                        $('#academyselecter').append(new Option(item.name, item.id));
                    });
                }
                form.render('select', 'formRender');
            }
        });
        //$('#academyselecter').val(${editinfo.academy});

        form.on('select(academyRender)', function (data) {
            console.log(data.value.length)
            if (data.value.length == 0) {
                $("#deptselecter option:not(:first)").remove();
                $("#classselecter option:not(:first)").remove();
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
        //$('#deptselecter').val(${editinfo.dept});


        form.on('select(deptRender)', function (data) {
            console.log(data.value.length)
            if (data.value.length == 0) {
                $("#classselecter option:not(:first)").remove();
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
                                $('#classselecter').append(new Option(item.name, item.id));
                            });
                            form.render('select', 'formRender');
                        }
                    }
                });
            }
        });
        //$('#classselecter').val(${editinfo.classs});

        //自定义验证规则
        form.verify({
            requireName: function (value) {
                if (value.length == 0) {
                    return '姓名未填写！';
                }
            },
            requireTelephone: function (value) {
                if (value.length == 0) {
                    return '手机号未填写！';
                }
            },
            requireEmail: function (value) {
                if (value.length == 0) {
                    return '邮箱未填写！';
                }
                /(^[a-zA-Z]|^[a-zA-Z][\w-_\.]*[a-zA-Z0-9])@(\w+\.)+\w+$/
                    , "请输入正确的邮箱！"

            }
        });

        //日期
        laydate.render({
            elem: '#birthday'
        });

        //监听提交
        form.on('submit(submitRender)', function (data) {
            var datas = data.field;//form单中的数据信息
            //向后台发送数据提交添加
            console.log(data);
            $.ajax({
                url: "/student/edit",
                type: "POST",
                async: true,
                contentType: "application/json",
                data: JSON.stringify(data.field),
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


        //表单初始赋值
        form.val('example', {
            "gender": "0"
        })
    });
</script>
</body>
</html>