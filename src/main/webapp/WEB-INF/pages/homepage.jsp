<%--
  Created by IntelliJ IDEA.
  User: bill
  Date: 2021/1/3
  Time: 12:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>首页二</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../../lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/font-awesome-4.7.0/css/font-awesome.min.css" media="all">
    <link rel="stylesheet" href="../../css/public.css" media="all">
    <style>
        .layui-card {
            border: 1px solid #f2f2f2;
            border-radius: 5px;
        }

        .icon {
            margin-right: 10px;
            color: #1aa094;
        }

        .icon-cray {
            color: #ffb800 !important;
        }

        .icon-blue {
            color: #1e9fff !important;
        }

        .icon-tip {
            color: #ff5722 !important;
        }

        .layuimini-qiuck-module {
            text-align: center;
            margin-top: 10px
        }

        .layuimini-qiuck-module a i {
            display: inline-block;
            width: 100%;
            height: 60px;
            line-height: 60px;
            text-align: center;
            border-radius: 2px;
            font-size: 30px;
            background-color: #F8F8F8;
            color: #333;
            transition: all .3s;
            -webkit-transition: all .3s;
        }

        .layuimini-qiuck-module a cite {
            position: relative;
            top: 2px;
            display: block;
            color: #666;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
            font-size: 14px;
        }

        .welcome-module {
            width: 100%;
            height: 210px;
        }

        .panel {
            background-color: #fff;
            border: 1px solid transparent;
            border-radius: 3px;
            -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
            box-shadow: 0 1px 1px rgba(0, 0, 0, .05)
        }

        .panel-body {
            padding: 10px
        }

        .panel-title {
            margin-top: 0;
            margin-bottom: 0;
            font-size: 12px;
            color: inherit
        }

        .label {
            display: inline;
            padding: .2em .6em .3em;
            font-size: 75%;
            font-weight: 700;
            line-height: 1;
            color: #fff;
            text-align: center;
            white-space: nowrap;
            vertical-align: baseline;
            border-radius: .25em;
            margin-top: .3em;
        }

        .layui-red {
            color: red
        }

        .main_btn > p {
            height: 40px;
        }

        .layui-bg-number {
            background-color: #F8F8F8;
        }

        .layuimini-notice:hover {
            background: #f6f6f6;
        }

        .layuimini-notice {
            padding: 7px 16px;
            clear: both;
            font-size: 12px !important;
            cursor: pointer;
            position: relative;
            transition: background 0.2s ease-in-out;
        }

        .layuimini-notice-title, .layuimini-notice-label {
            padding-right: 70px !important;
            text-overflow: ellipsis !important;
            overflow: hidden !important;
            white-space: nowrap !important;
        }

        .layuimini-notice-title {
            line-height: 28px;
            font-size: 14px;
        }

        .layuimini-notice-extra {
            position: absolute;
            top: 50%;
            margin-top: -8px;
            right: 16px;
            display: inline-block;
            height: 16px;
            color: #999;
        }
    </style>
</head>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md4">

                <div class="layui-card">
                    <div class="layui-card-header"><i class="fa fa-bullhorn icon icon-tip"></i>这是系统公告</div>
                    <div class="layui-card-body layui-text">
                        <div class="layuimini-notice">
                            <div class="layuimini-notice-title">1、有新的反馈</div>
                            <div class="layuimini-notice-extra">2019-07-11 23:06</div>
                            <div class="layuimini-notice-content layui-hide">
                            </div>
                        </div>
                        <div class="layuimini-notice">
                            <div class="layuimini-notice-title">2、有新的反馈</div>
                            <div class="layuimini-notice-extra">2019-07-11 12:57</div>
                            <div class="layuimini-notice-content layui-hide">
                            </div>
                        </div>
                        <div class="layuimini-notice">
                            <div class="layuimini-notice-title">3、有新的反馈</div>
                            <div class="layuimini-notice-extra">2019-07-05 14:28</div>
                            <div class="layuimini-notice-content layui-hide">
                            </div>
                        </div>
                        <div class="layuimini-notice">
                            <div class="layuimini-notice-title">4、有新的反馈</div>
                            <div class="layuimini-notice-extra">2019-07-04 11:02</div>
                            <div class="layuimini-notice-content layui-hide">
                            </div>
                        </div>
                        <div class="layuimini-notice">
                            <div class="layuimini-notice-title">5、有新的反馈</div>
                            <div class="layuimini-notice-extra">2019-06-17 11:55</div>
                            <div class="layuimini-notice-content layui-hide">
                            </div>
                        </div>
                        <div class="layuimini-notice">
                            <div class="layuimini-notice-title">6、有新的反馈</div>
                            <div class="layuimini-notice-extra">2019-06-13 14:53</div>
                            <div class="layuimini-notice-content layui-hide">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="layui-card">
                    <div class="layui-card-header"><i class="fa fa-fire icon"></i>专业比例</div>
                    <div class="layui-card-body layui-text">
                        <div class="layui-card-body">
                            <div id="echarts-bing" style="width: 100% ;min-height: 300px;"></div>
                        </div>
                    </div>
                </div>

                <div class="layui-card">
                    <div class="layui-card-header"><i class="fa fa-paper-plane-o icon"></i>版本信息</div>
                    <div class="layui-card-body layui-text layadmin-text">
                        <p>©版权所有 2020-2021 Team 9 | 信科院研究生管理系统 v1.2 <a class="layui-btn layui-btn-xs layui-btn-danger"
                                                                       target="_blank"
                                                                       href="https://github.com/isVergil/hnu-studentsystem">项目地址</a>
                        </p>
                    </div>
                </div>

            </div>
            <div class="layui-col-md8">
                <div class="layui-row layui-col-space15">
                    <div class="layui-col-md6">
                        <div class="layui-card">
                            <div class="layui-card-header"><i class="fa fa-warning icon"></i>数据统计</div>
                            <div class="layui-card-body">
                                <div class="welcome-module">
                                    <div class="layui-row layui-col-space10">
                                        <div class="layui-col-xs6">
                                            <div class="panel layui-bg-number">
                                                <div class="panel-body">
                                                    <div class="panel-title">
                                                        <span class="label pull-right layui-bg-blue">实时</span>
                                                        <h5>学生总人数</h5>
                                                    </div>
                                                    <div class="panel-content">
                                                        <h1 class="no-margins" id="totalstudent"></h1>
                                                        <small>/人</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-xs6">
                                            <div class="panel layui-bg-number">
                                                <div class="panel-body">
                                                    <div class="panel-title">
                                                        <span class="label pull-right layui-bg-cyan">实时</span>
                                                        <h5>导师总人数</h5>
                                                    </div>
                                                    <div class="panel-content">
                                                        <h1 class="no-margins" id="totalteacher"></h1>
                                                        <small>/人</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-xs6">
                                            <div class="panel layui-bg-number">
                                                <div class="panel-body">
                                                    <div class="panel-title">
                                                        <span class="label pull-right layui-bg-orange">实时</span>
                                                        <h5>班级个数</h5>
                                                    </div>
                                                    <div class="panel-content">
                                                        <h1 class="no-margins" id="totalclass">1234</h1>
                                                        <small>/个</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-xs6">
                                            <div class="panel layui-bg-number">
                                                <div class="panel-body">
                                                    <div class="panel-title">
                                                        <span class="label pull-right layui-bg-green">实时</span>
                                                        <h5>研究方向</h5>
                                                    </div>
                                                    <div class="panel-content">
                                                        <h1 class="no-margins" id="totalresearch">1234</h1>
                                                        <small>/个</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <div class="layui-card">
                            <div class="layui-card-header"><i class="fa fa-credit-card icon icon-blue"></i>快捷入口</div>
                            <div class="layui-card-body">
                                <div class="welcome-module">
                                    <div class="layui-row layui-col-space10 layuimini-qiuck">
                                        <div class="layui-col-xs3 layuimini-qiuck-module">
                                            <a href="javascript:;" layuimini-content-href="page/menu.html"
                                               data-title="菜单管理" data-icon="fa fa-window-maximize">
                                                <i class="fa fa-window-maximize"></i>
                                                <cite>菜单管理</cite>
                                            </a>
                                        </div>
                                        <div class="layui-col-xs3 layuimini-qiuck-module">
                                            <a href="javascript:;" layuimini-content-href="page/setting.html"
                                               data-title="系统设置" data-icon="fa fa-gears">
                                                <i class="fa fa-gears"></i>
                                                <cite>系统设置</cite>
                                            </a>
                                        </div>
                                        <div class="layui-col-xs3 layuimini-qiuck-module">
                                            <a href="javascript:;" layuimini-content-href="page/table.html"
                                               data-title="表格示例" data-icon="fa fa-file-text">
                                                <i class="fa fa-file-text"></i>
                                                <cite>表格示例</cite>
                                            </a>
                                        </div>
                                        <div class="layui-col-xs3 layuimini-qiuck-module">
                                            <a href="javascript:;" layuimini-content-href="page/icon.html"
                                               data-title="图标列表" data-icon="fa fa-dot-circle-o">
                                                <i class="fa fa-dot-circle-o"></i>
                                                <cite>图标列表</cite>
                                            </a>
                                        </div>
                                        <div class="layui-col-xs3 layuimini-qiuck-module">
                                            <a href="javascript:;" layuimini-content-href="page/form.html"
                                               data-title="表单示例" data-icon="fa fa-calendar">
                                                <i class="fa fa-calendar"></i>
                                                <cite>表单示例</cite>
                                            </a>
                                        </div>
                                        <div class="layui-col-xs3 layuimini-qiuck-module">
                                            <a href="javascript:;" layuimini-content-href="page/404.html"
                                               data-title="404页面" data-icon="fa fa-hourglass-end">
                                                <i class="fa fa-hourglass-end"></i>
                                                <cite>404页面</cite>
                                            </a>
                                        </div>
                                        <div class="layui-col-xs3 layuimini-qiuck-module">
                                            <a href="javascript:;" layuimini-content-href="page/button.html"
                                               data-title="按钮示例" data-icon="fa fa-snowflake-o">
                                                <i class="fa fa-snowflake-o"></i>
                                                <cite>按钮示例</cite>
                                            </a>
                                        </div>
                                        <div class="layui-col-xs3 layuimini-qiuck-module">
                                            <a href="javascript:;" layuimini-content-href="https://www.baidu.com"
                                               data-title="百度搜索" data-icon="fa fa-search">
                                                <i class="fa fa-search"></i>
                                                <cite>百度搜索</cite>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="layui-col-md12">
                        <div class="layui-card">
                            <div class="layui-card-header"><i class="fa fa-line-chart icon"></i>各系人数</div>
                            <div class="layui-card-body">
                                <div id="echarts-records" style="width: 100% ;min-height: 450px;"></div>
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
    layui.use(['layer', 'miniTab', 'echarts'], function () {
        var $ = layui.jquery,
            layer = layui.layer,
            miniTab = layui.miniTab,
            echarts = layui.echarts;

        miniTab.listen();


        /**
         * 查看公告信息
         **/
        $('body').on('click', '.layuimini-notice', function () {
            var title = $(this).children('.layuimini-notice-title').text(),
                noticeTime = $(this).children('.layuimini-notice-extra').text(),
                content = $(this).children('.layuimini-notice-content').html();
            var html = '<div style="padding:15px 20px; text-align:justify; line-height: 22px;border-bottom:1px solid #e2e2e2;background-color: #2f4056;color: #ffffff">\n' +
                '<div style="text-align: center;margin-bottom: 20px;font-weight: bold;border-bottom:1px solid #718fb5;padding-bottom: 5px"><h4 class="text-danger">' + title + '</h4></div>\n' +
                '<div style="font-size: 12px">' + content + '</div>\n' +
                '</div>\n';
            parent.layer.open({
                type: 1,
                title: '系统公告' + '<span style="float: right;right: 1px;font-size: 12px;color: #b1b3b9;margin-top: 1px">' + noticeTime + '</span>',
                area: '300px;',
                shade: 0.8,
                id: 'layuimini-notice',
                btn: ['查看', '取消'],
                btnAlign: 'c',
                moveType: 1,
                content: html,
                success: function (layero) {
                    var btn = layero.find('.layui-layer-btn');
                    btn.find('.layui-layer-btn0').attr({
                        href: 'https://gitee.com/zhongshaofa/layuimini',
                        target: '_blank'
                    });
                }
            });
        });

        console.log(name)
        //指定图表配置项和数据
        var optionchart = {
            title: {
                text: ''
            },
            tooltip: {},
            legend: {
                data: ['男生', '女生']
            },
            xAxis: {
                data: []
            },
            yAxis: {
                type: 'value'
            },
            series: [{
                name: '男',
                type: 'bar', //柱状
                data: [],
                itemStyle: {
                    normal: { //柱子颜色
                        color: '#76f2f2'
                    }
                },
            }, {
                name: '女',
                type: 'bar',
                data: [],
                itemStyle: {
                    normal: {
                        color: '#fc97af'
                    }
                }
            }]
        };

        var optionchartBing = {
            tooltip: {
                // trigger: 'item' //悬浮显示对比
            },
            legend: {
                orient: 'vertical', //类型垂直,默认水平
                left: 'left', //类型区分在左 默认居中
            },
            series: [{
                type: 'pie', //饼状
                radius: '60%', //圆的大小
                center: ['50%', '50%'], //居中
                data: []
            }]
        };
        //各系人数 柱状图
        var echartszhu = echarts.init(document.getElementById('echarts-records'), 'walden');
        echartszhu.setOption(optionchart);
        //男女占比  饼图
        var echartsBing = echarts.init(document.getElementById('echarts-bing'), 'walden');
        echartsBing.setOption(optionchartBing);
        $.ajax({
            url: "/student/getChartData",
            type: 'GET',
            dataType: 'json',
            success: function (data) {
                var name = [];
                var gender0 = [];//女
                var gender1 = [];//男
                var piedata = [];
                var totalstudent = 0;
                for (var i = 0; i < data.data.length; i++) {
                    name.push(data.data[i].name);
                    gender0.push(data.data[i].gender0);
                    gender1.push(data.data[i].gender1);
                    var obj = new Object();
                    obj.name = data.data[i].name;
                    obj.value = data.data[i].gender0 + data.data[i].gender1;
                    piedata[i] = obj;
                    totalstudent += data.data[i].gender0;
                    totalstudent += data.data[i].gender1;
                }
                //加载柱状图数据
                echartszhu.setOption({
                    xAxis: {
                        data: name
                    },
                    series: [{
                        name: '男生',
                        data: gender0
                    }, {
                        name: '女生',
                        data: gender1
                    }]
                });
                //加载饼图数据
                echartsBing.setOption({
                    series: [{
                        data: piedata
                    }]
                });
                $('#totalstudent').text(totalstudent);
            }
        });
        //统计数据 加载
        $.ajax({
            url: "/student/getTotalData",
            type: 'GET',
            dataType: 'json',
            success: function (data) {
                var totalteacherCount = 0;
                var totalteacherArray = data.data[0];
                for (var i = 0; i < totalteacherArray.length; i++) {
                    totalteacherCount += totalteacherArray[i].column1;
                }
                $('#totalteacher').text(totalteacherCount);

                var totalclassCount = 0;
                var totalclassArray = data.data[1];
                for (var i = 0; i < totalclassArray.length; i++) {
                    totalclassCount += totalclassArray[i].column2;
                }
                $('#totalclass').text(totalclassCount);

                var totalresearchCount = 0;
                var totalresearchArray = data.data[2];
                for (var i = 0; i < totalresearchArray.length; i++) {
                    totalresearchCount += totalresearchArray[i].column3;
                }
                $('#totalresearch').text(totalresearchCount);
            }
        });

        // echarts 窗口缩放自适应
        window.onresize = function () {
            echartszhu.resize();
            echartsBing.resize();
        }
    })
    ;
</script>
</body>
</html>