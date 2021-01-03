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
                    <div class="layui-card-header"><i class="fa fa-fire icon"></i>版本信息</div>
                    <div class="layui-card-body layui-text">
                        <table class="layui-table">
                            <colgroup>
                                <col width="100">
                                <col>
                            </colgroup>
                            <tbody>
                            <tr>
                                <td>框架名称</td>
                                <td>
                                    layuimini
                                </td>
                            </tr>
                            <tr>
                                <td>当前版本</td>
                                <td>v2.0.0</td>
                            </tr>
                            <tr>
                                <td>主要特色</td>
                                <td>零门槛 / 响应式 / 清爽 / 极简</td>
                            </tr>
                            <tr>
                                <td>演示地址</td>
                                <td>
                                    iframe版-v2：<a href="http://layuimini.99php.cn/iframe/v2/index.html" target="_blank">点击查看</a><br>
                                    单页版-v2：<a href="http://layuimini.99php.cn/onepage/v2/index.html" target="_blank">点击查看</a><br>
                                </td>
                            </tr>
                            <tr>
                                <td>下载地址</td>
                                <td>
                                    iframe版-v2：<a href="https://github.com/zhongshaofa/layuimini/tree/v2"
                                                  target="_blank">github</a> / <a
                                        href="https://gitee.com/zhongshaofa/layuimini/tree/v2" target="_blank">gitee</a><br>
                                    单页版-v2：<a href="https://github.com/zhongshaofa/layuimini/tree/v2-onepage"
                                              target="_blank">github</a> / <a
                                        href="https://gitee.com/zhongshaofa/layuimini/tree/v2-onepage" target="_blank">gitee</a><br>
                                </td>
                            </tr>
                            <tr>
                                <td>Gitee</td>
                                <td style="padding-bottom: 0;">
                                    <div class="layui-btn-container">
                                        <a href="https://gitee.com/zhongshaofa/layuimini" target="_blank"
                                           style="margin-right: 15px"><img
                                                src="https://gitee.com/zhongshaofa/layuimini/badge/star.svg?theme=dark"
                                                alt="star"></a>
                                        <a href="https://gitee.com/zhongshaofa/layuimini" target="_blank"><img
                                                src="https://gitee.com/zhongshaofa/layuimini/badge/fork.svg?theme=dark"
                                                alt="fork"></a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>Github</td>
                                <td style="padding-bottom: 0;">
                                    <div class="layui-btn-container">
                                        <iframe src="https://ghbtns.com/github-btn.html?user=zhongshaofa&repo=layuimini&type=star&count=true"
                                                frameborder="0" scrolling="0" width="100px" height="20px"></iframe>
                                        <iframe src="https://ghbtns.com/github-btn.html?user=zhongshaofa&repo=layuimini&type=fork&count=true"
                                                frameborder="0" scrolling="0" width="100px" height="20px"></iframe>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
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
                                                        <h5>用户统计</h5>
                                                    </div>
                                                    <div class="panel-content">
                                                        <h1 class="no-margins">1234</h1>
                                                        <small>当前分类总记录数</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-xs6">
                                            <div class="panel layui-bg-number">
                                                <div class="panel-body">
                                                    <div class="panel-title">
                                                        <span class="label pull-right layui-bg-cyan">实时</span>
                                                        <h5>商品统计</h5>
                                                    </div>
                                                    <div class="panel-content">
                                                        <h1 class="no-margins">1234</h1>
                                                        <small>当前分类总记录数</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-xs6">
                                            <div class="panel layui-bg-number">
                                                <div class="panel-body">
                                                    <div class="panel-title">
                                                        <span class="label pull-right layui-bg-orange">实时</span>
                                                        <h5>浏览统计</h5>
                                                    </div>
                                                    <div class="panel-content">
                                                        <h1 class="no-margins">1234</h1>
                                                        <small>当前分类总记录数</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-xs6">
                                            <div class="panel layui-bg-number">
                                                <div class="panel-body">
                                                    <div class="panel-title">
                                                        <span class="label pull-right layui-bg-green">实时</span>
                                                        <h5>订单统计</h5>
                                                    </div>
                                                    <div class="panel-content">
                                                        <h1 class="no-margins">1234</h1>
                                                        <small>当前分类总记录数</small>
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
                            <div class="layui-card-header"><i class="fa fa-line-chart icon"></i>报表统计</div>
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

        var name = [];
        var gender01 = [];
        var gender11 = [];
        var optionchart;
        //权限下拉框
        $.ajax({
            url: "/student/getChartData",
            type: 'GET',
            dataType: 'json',
            success: function (data) {
                for (var i = 0; i < data.data.length; i++) {
                    name.push(data.data[i].name.toString());
                    gender01.push(data.data[i].gender0);
                    gender11.push(data.data[i].gender1);
                }


            }
        });
console.log(name)
        //指定图表配置项和数据
        var optionchart = {
            title: {
                text: '各系占比'
            },
            tooltip: {},
            legend: {
                data: ['销量']
            },
            xAxis: {
                data: name
            },
            yAxis: {
                type: 'value'
            },
            series: [{
                name: '男',
                type: 'bar', //柱状
                data: gender01,
                itemStyle: {
                    normal: { //柱子颜色
                        color: 'red'
                    }
                },
            }, {
                name: '女',
                type: 'bar',
                data: gender11,
                itemStyle: {
                    normal: {
                        color: 'blue'
                    }
                }
            }]
        };

        var optionchartZhe = {
            title: {
                text: '商品订单'
            },
            tooltip: {},
            legend: { //顶部显示 与series中的数据类型的name一致
                data: ['销量', '产量', '营业额', '单价']
            },
            xAxis: {
                // type: 'category',
                // boundaryGap: false, //从起点开始
                data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
            },
            yAxis: {
                type: 'value'
            },
            series: [{
                name: '销量',
                type: 'line', //线性
                data: [145, 230, 701, 734, 1090, 1130, 1120],
            }, {
                name: '产量',
                type: 'line', //线性
                data: [720, 832, 801, 834, 1190, 1230, 1220],
            }, {
                smooth: true, //曲线 默认折线
                name: '营业额',
                type: 'line', //线性
                data: [820, 932, 901, 934, 1290, 1330, 1320],
            }, {
                smooth: true, //曲线
                name: '单价',
                type: 'line', //线性
                data: [220, 332, 401, 534, 690, 730, 820],
            }]
        };

        var optionchartBing = {
            title: {
                text: '商品订单',
                subtext: '纯属虚构', //副标题
                x: 'center' //标题居中
            },
            tooltip: {
                // trigger: 'item' //悬浮显示对比
            },
            legend: {
                orient: 'vertical', //类型垂直,默认水平
                left: 'left', //类型区分在左 默认居中
                data: ['单价', '总价', '销量', '产量']
            },
            series: [{
                type: 'pie', //饼状
                radius: '60%', //圆的大小
                center: ['50%', '50%'], //居中
                data: [{
                    value: 335,
                    name: '单价'
                },
                    {
                        value: 310,
                        name: '总价'
                    },
                    {
                        value: 234,
                        name: '销量'
                    },
                    {
                        value: 135,
                        name: '产量'
                    }
                ]
            }]
        };

        /**
         * 报表功能
         */
        var echartsRecords = echarts.init(document.getElementById('echarts-records'), 'walden');
        echartsRecords.setOption(optionchart);
        // var optionRecords = {
        //     tooltip: {
        //         trigger: 'axis'
        //     },
        //     legend: {
        //         data: ['邮件营销', '联盟广告','联盟广告']
        //     },
        //     grid: {
        //         left: '3%',
        //         right: '3%',
        //         bottom: '15%',
        //         top: '5%',
        //         containLabel: true
        //     },
        //     toolbox: {
        //         feature: {
        //             saveAsImage: {}
        //         }
        //     },
        //     xAxis: {
        //         type: 'category',
        //         boundaryGap: false,
        //         data: [ '院系1', '院系1', '院系1', '院系1', '院系1', '院系1']
        //     },
        //     yAxis: {
        //         type: 'value'
        //     },
        //     series: [
        //         {
        //             name: '男',
        //             type: 'bar',
        //             data: [120, 132, 101, 134, 90, 230]
        //         },
        //         {
        //             name: '女',
        //             type: 'bar',
        //             data: [220, 182, 191, 234, 290, 330]
        //         }
        //     ]
        // };
        // echartsRecords.setOption(optionRecords);

        // echarts 窗口缩放自适应
        window.onresize = function () {
            echartsRecords.resize();
        }

    });
</script>
</body>
</html>