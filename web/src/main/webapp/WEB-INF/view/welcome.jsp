<%@ page contentType="text/html;charset=UTF-8" language="java" %><!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>
            欢迎界面
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="../../css/main.css" media="all">
        <link rel="stylesheet" href="../../lib/bootstrap/css/bootstrap.css" media="all">
        <link rel="stylesheet" href="../../lib/bootstrap/js/bootstrap.min.js" media="all">
    </head>
    <body>
    <style type="text/css">
	legend { display: block; width:100px; border-bottom:0px; font-family: "Microsoft YaHei","Helvetica Neue";}
	legend a{ color:#666;} legend a:hover{ text-decoration:none;}
	.layui-table{ font-family: "Microsoft YaHei","Helvetica Neue";}
	</style>
        <div class="x-body">
            <blockquote class="layui-elem-quote">
                欢迎使用小区物业管理系统！<span class="f-14">v1.0</span> &nbsp;&nbsp;登录次数：520
            </blockquote>
<div class="row">
            <div class="col-xs-6 col-sm-4 col-md-3">
                <section class="panel">
                    <div class="symbol bgcolor-blue"> <i class=" iconfont icon-dashaxiaoqudizhi01"></i>
                    </div>
                    <div class="value tab-menu" bind="1">
                        <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="总栋数"><i class="iconfont " data-icon=""></i>
                            <h1>45</h1>
                        </a>

                        <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="总栋数"> <i class="iconfont " data-icon=""></i><span>总栋数</span></a>

                    </div>
                </section>
            </div>
            <div class="col-xs-6 col-sm-4 col-md-3">
                <section class="panel">
                    <div class="symbol bgcolor-commred"> <i class="iconfont icon-lvhuaxiaoqu"></i>
                    </div>
                    <div class="value tab-menu" bind="1">
                        <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="总户数"> <i class="iconfont " data-icon=""></i>
                            <h1>600</h1>
                        </a>

                        <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="总户数"> <i class="iconfont " data-icon=""></i><span>总户数</span></a>

                    </div>
                </section>
            </div>

            <div class="col-xs-6 col-sm-4 col-md-3">
                <section class="panel">
                    <div class="symbol bgcolor-dark-green"> <i class="iconfont icon-yezhuxian"></i>
                    </div>
                    <div class="value tab-menu" bind="1">
                        <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="总人数"> <i class="iconfont " data-icon=""></i>
                            <h1>8310</h1>
                        </a>
                        <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="总人数"> <i class="iconfont " data-icon=""></i><span>总人数</span></a>
                    </div>
                </section>
            </div>

            <div class="col-xs-6 col-sm-4 col-md-3">
                <section class="panel">
                    <div class="symbol bgcolor-yellow-green"> <i class="layui-icon" style="top: 3px;">&#xe613;</i>
                    </div>
                    <div class="value tab-menu" bind="1">
                        <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="租户数量"> <i class="iconfont " data-icon=""></i>
                            <h1>1314</h1>
                        </a>
                        <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="租户数量"> <i class="iconfont " data-icon=""></i><span>租户数量</span></a>
                    </div>
                </section>
            </div>

        </div>
            
            <fieldset class="layui-elem-field layui-field-title site-title">
              <legend><a name="default">信息统计</a></legend>
            </fieldset>
             
        <!--相关统计-->
        <div class="row">
        <div class="col-sm-4">
         <section class="panel">
                    <div class="panel-heading">小区人数</div>
                    <div class="panel-body">
                        <div class="echarts" id="area" style="height:300px; height:350px"></div>
                    </div>
                </section>
        </div>
        <div class="col-sm-4">
         <section class="panel">
                    <div class="panel-heading">投诉/满意度</div>
                    <div class="panel-body">
                        <div class="echarts" id="main" style="height:300px; height:350px"></div>
                    </div>
                </section>
        </div>
        <div class="col-sm-4">
         <section class="panel">
                    <div class="panel-heading">小区停车位</div>
                    <div class="panel-body">
                        <div class="echarts" id="years" style="height:300px; height:350px"></div>
                    </div>
                </section>
        </div>
        <div class="col-sm-4">
         <section class="panel">
                    <div class="panel-heading">最新活动</div>
                    <div class="panel-body">
                        <ul class="list-group clear-list m-t">
                            <li class="list-group-item fist-item"> <span class="float-right"> 09:00 </span> <span class="label label-success">1</span> 小区活动1 </li>
                            <li class="list-group-item"> <span class="float-right"> 10:16 </span> <span class="label label-info">2</span> 小区活动2 </li>
                            <li class="list-group-item"> <span class="float-right"> 08:22 </span> <span class="label label-primary">3</span> 小区活动3 </li>
                            <li class="list-group-item"> <span class="float-right"> 11:06 </span> <span class="label label-warning">4</span> 小区活动4 </li>
                            <li class="list-group-item"> <span class="float-right"> 12:00 </span> <span class="label label-warning">5</span> 小区活动5 </li>
                            <li class="list-group-item"> <span class="float-right"> 08:22 </span> <span class="label label-warning">6</span> 小区活动6 </li>
                            <li class="list-group-item"> <span class="float-right"> 11:06 </span> <span class="label label-warning">7</span> 小区活动7 </li>
                            <li class="list-group-item"> <span class="float-right"> 12:00 </span> <span class="label label-warning">8</span> 小区活动8 </li>
                            <li class="list-group-item"> <span class="float-right"> 11:06 </span> <span class="label label-warning">9</span> 小区活动9 </li>
                            <li class="list-group-item"> <span class="float-right"> 12:00 </span> <span class="label label-warning">10</span> 小区活动10 </li>
                        </ul>
                    </div>
                </section>
        </div>
            <div class="col-sm-4">
                <section class="panel">
                    <div class="panel-heading">最新保修</div>
                    <div class="panel-body">
                        <ul class="list-group clear-list m-t">
                            <li class="list-group-item"> <span class="float-right"> 09:00 &nbsp;<b style="color: #2fb9d4">已受理</b></span> <span class="label label-danger">1</span> D区垃圾桶更换 </li>
                            <li class="list-group-item"> <span class="float-right"> 10:16 &nbsp;<b style="color: #2fb9d4">已受理</b></span> <span class="label label-info">2</span> C区路灯维修 </li>
                            <li class="list-group-item"> <span class="float-right"> 08:22 &nbsp;<b style="color: #2fb9d4">已受理</b></span> <span class="label label-warning">3</span> A区13楼摄像头维修 </li>
                            <li class="list-group-item"> <span class="float-right"> 11:06 &nbsp;<b style="color: #2fb9d4">已受理</b></span> <span class="label label-default">4</span> A区13楼摄像头维修 </li>
                            <li class="list-group-item"> <span class="float-right"> 12:00 &nbsp;<b style="color: #FF5722">未受理</b></span> <span class="label label-default">5</span> A区13楼摄像头维修 </li>
                            <li class="list-group-item"> <span class="float-right"> 08:22 &nbsp;<b style="color: #FF5722">未受理</b></span> <span class="label label-default">6</span> A区13楼摄像头维修 </li>
                            <li class="list-group-item"> <span class="float-right"> 11:06 &nbsp;<b style="color: #FF5722">未受理</b></span> <span class="label label-default">7</span> A区13楼摄像头维修 </li>
                            <li class="list-group-item"> <span class="float-right"> 12:00 &nbsp;<b style="color: #2fb9d4">已受理</b></span> <span class="label label-default">8</span> A区13楼摄像头维修 </li>
                            <li class="list-group-item"> <span class="float-right"> 11:06 &nbsp;<b style="color: #2fb9d4">已受理</b></span> <span class="label label-default">9</span> A区13楼摄像头维修 </li>
                            <li class="list-group-item"> <span class="float-right"> 12:00 &nbsp;<b style="color: #2fb9d4">已受理</b></span> <span class="label label-default">10</span> B区地下停车场排水系统检修 </li>
                        </ul>
                    </div>
                </section>
            </div>
        <div class="col-sm-4">
            <section class="panel">
                <div class="panel-heading">系统信息</div>
                <div class="layui-card">

                    <div class="layui-card-body ">

                        <table class="layui-table">
                            <thead>
                            <tr>
                                <th colspan="4" scope="col">服务器信息</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th>服务器计算机名</th>
                                <td><span id="lbServerName">http://127.0.0.1/</span></td>

                            </tr>
                            <tr>
                                <td>服务器IP地址</td>
                                <td>192.168.1.1</td>
                            </tr>
                            <tr>
                                <td>服务器域名</td>
                                <td>www.xxx.net</td>

                            </tr>
                            <tr>
                                <td>服务器端口 </td>
                                <td>80</td>
                            </tr>
                            <tr>
                                <td>服务器IIS版本 </td>
                                <td>Microsoft-IIS/6.0</td>

                            </tr>
                            <tr>
                                <td>本文件所在文件夹 </td>
                                <td>D:\WebSite\</td>
                            </tr>
                            <tr>
                                <td>服务器操作系统 </td>
                                <td>Microsoft Windows NT 5.2.3790 Service Pack 2</td>

                            </tr>
                            <tr>
                                <td>系统所在文件夹 </td>
                                <td>C:\WINDOWS\system32</td>
                            </tr>
                            <tr>
                                <td>服务器脚本超时时间 </td>
                                <td>30000秒</td>

                            </tr>
                            <tr>
                                <td>服务器的语言种类 </td>
                                <td>Chinese (People's Republic of China)</td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </section>

        </div>

        </div>
    
        <script src="../../lib/layui/layui.js" charset="utf-8"></script>\
        <script src="../../js/jquery.min.js"></script>
        <script src="../../js/echarts.min.js"></script>

        <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据

        let date = '2020-03-025';
        option = {
            tooltip: {
                trigger: 'axis',
                formatter(params){
                    return `<div>${date} ${params[0].axisValue}<br/>${params[0].seriesName}：${params[0].value}<br/>${params[1].seriesName}：${params[1].value}%</div>`
                }
            },
            legend: {
                color: ["#13C7F2", "#F9CE81"],
                data: ['投诉（次）', '业主满意度'],
                icon: 'rect',
                itemWidth: 18,
                itemHeight: 2,
                itemGap: 13,
                right: '4%',
                textStyle: {
                    fontSize: 12,
                    color: '#23b7e5'
                }
            },
            grid: {
                top: 'middle',
                left: '3%',
                right: '4%',
                bottom: '3%',
                height: '80%',
                containLabel: true
            },
            xAxis: {
                type: 'category',
                data: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月'],
                axisLine: {
                    lineStyle: {
                        color: "#23b7e5",
                    }
                },
                axisLabel:{
                    color:'#23b7e5',
                    fontWeight:'bold'
                },
                axisTick:{
                    show:false,
                },
                axisPointer:{
                    lineStyle:{
                        color:'#D11F1F'
                    }
                },
            },
            yAxis: {
                type: 'value',
                splitLine: {
                    lineStyle: {
                        type: 'solid',
                        color: '#23b7e5',
                        width:2
                    }
                },
                axisTick:{
                    show:false,
                },
                axisLine: {
                    show: false,
                    lineStyle: {
                        color: "#23b7e5",
                    },
                },
                axisLabel:{
                    formatter: '{value}%',
                    fontWeight:'bold'
                },
                splitArea: {
                    show: false
                },
            },
            series: [{
                name: '投诉（次）',
                type: 'line',
                symbol:'none',
                data: [{value:10,
                    symbolSize:10,
                    symbol:'emptyCircle'},20,45,15,{value:90,
                    symbolSize:10,
                    symbol:'emptyCircle'},20,10,80,50,{value:100,
                    symbolSize:10,
                    symbol:'emptyCircle'},10,{value:40,
                    symbolSize:10,
                    symbol:'emptyCircle'}],
                color: "#13C7F2",
                lineStyle: {
                    normal: {
                        width: 2.5,
                        color: '#13C7F2',
                    }
                },
                hoverAnimation:false,
                smooth:true,
            },{
                name: '业主满意度',
                type: 'line',
                symbol:'none',
                data:  [{value:20,
                    symbolSize:10,
                    symbol:'emptyCircle'},30,70,10,{value:50,
                    symbolSize:10,
                    symbol:'emptyCircle'},100,50,20,90,{value:30,
                    symbolSize:10,
                    symbol:'emptyCircle'},50,{value:90,
                    symbolSize:10,
                    symbol:'emptyCircle'}],
                color: "#F9CE81",
                lineStyle: {
                    normal: {
                        width: 2.5,
                        color: '#F9CE81',
                    }
                },
                hoverAnimation:false,
                smooth:true,
            }
            ]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
    <script type="text/javascript">
        // 指定图表的配置项和数据
       var myChart = echarts.init(document.getElementById('area'));

        // 指定图表的配置项和数据
    var option = {
        title: {
            text: '小区人数统计',
            subtext: '（人）',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        itemStyle: {

            normal: {

                //好，这里就是重头戏了，定义一个list，然后根据所以取得不同的值，这样就实现了，

                color: function(params) {

                    // build a color map as your need.

                    var colorList = [

                        '#27C24C','#F05050','#23b7e5','#7266ba','#18bc9c',

                        '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD',

                        '#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0'

                    ];

                    return colorList[params.dataIndex]

                },

                //以下为是否显示，显示位置和显示格式的设置了

                label: {

                    show: true,

                    position: 'top',

//                             formatter: '{c}'

                    formatter: '{b}\n{c}'

                }

            }

        },
        legend: {
            orient: 'vertical',
            left: 'left',
            data: ['A区', 'B区', 'C区', 'D区', 'E区']
        },
        series: [{
            name: '小区租户人数',
            type: 'pie',
            radius: '55%',
            center: ['50%', '60%'],
            data: [
                { value: 6335, name: 'A区' },
                { value: 4310, name: 'B区' },
                { value: 2310, name: 'C区' },
                { value: 3310, name: 'D区' },
                { value: 9310, name: 'E区' }
            ],
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }]
    };
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        myChart.currentIndex = -1;
        setInterval(function () {
            var dataLen = option.series[0].data.length;
            /*console.log(dataLen);*/
            // 取消之前高亮的图形
            myChart.dispatchAction({
                type: 'downplay',
                seriesIndex: 0,
                dataIndex: myChart.currentIndex
            });
            myChart.currentIndex = (myChart.currentIndex + 1) % dataLen;
            // 高亮当前图形
            myChart.dispatchAction({
                type: 'highlight',
                seriesIndex: 0,
                dataIndex: myChart.currentIndex
            });
        }, 1000);

        // 使用刚指定的配置项和数据显示图表。
        /*myChart.setOption(option);*/
        window.addEventListener("resize",function(){
            myChart.resize();
        });
    </script>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('years'));



        //var myChart = echarts.init(document.getElementById('chart2'));

        var ydata = [{
            name: 'A区车位',
            value: 18
        },
            {
                name: 'B区车位',
                value: 16
            },
            {
                name: 'C区车位',
                value: 15
            },
            {
                name: 'D区车位',
                value: 14
            },
            {
                name: 'E区车位',
                value: 10
            }
        ];
        var color = ["#8d7fec", "#5085f2", "#e75fc3", "#f87be2", "#f2719a", "#fca4bb", "#f59a8f", "#fdb301", "#57e7ec", "#cf9ef1"]
        var xdata = ['A区车位', "B区车位", "C区车位", "D区车位", 'E区车位'];


        option = {
            /*backgroundColor: "rgba(255,255,255,1)",*/
            color: color,
            legend: {
                orient: "vartical",
                x: "left",
                top: "center",
                left: "53%",
                bottom: "0%",
                data: xdata,
                itemWidth: 8,
                itemHeight: 8,
                textStyle: {
                    color: '#000'
                },
                /*itemGap: 16,*/
                /*formatter:function(name){
                  var oa = option.series[0].data;
                  var num = oa[0].value + oa[1].value + oa[2].value + oa[3].value+oa[4].value + oa[5].value + oa[6].value + oa[7].value+oa[8].value + oa[9].value ;
                  for(var i = 0; i < option.series[0].data.length; i++){
                      if(name==oa[i].name){
                          return ' '+name + '    |    ' + oa[i].value + '    |    ' + (oa[i].value/num * 100).toFixed(2) + '%';
                      }
                  }
                }*/

                formatter: function(name) {
                    return '' + name
                }
            },
            series: [{
                type: 'pie',
                clockwise: false, //饼图的扇区是否是顺时针排布
                minAngle: 2, //最小的扇区角度（0 ~ 360）
                radius: ["20%", "60%"],
                center: ["30%", "45%"],
                avoidLabelOverlap: false,
                itemStyle: { //图形样式
                    normal: {
                        borderColor: '#ffffff',
                        borderWidth: 1,
                    },
                },
                label: {
                    normal: {
                        show: false,
                        position: 'center',
                        formatter: '{b}\n{c} ({d}%)',
                        rich: {
                            text: {
                                color: "#fff",
                                fontSize: 14,
                                align: 'center',
                                verticalAlign: 'middle',
                                padding: 8
                            },
                            value: {
                                color: "#8693F3",
                                fontSize: 24,
                                align: 'center',
                                verticalAlign: 'middle',
                            },
                        }
                    },
                    emphasis: {
                        show: true,
                        textStyle: {
                            fontSize: 24,
                        }
                    }
                },
                data: ydata
            }]
        };
        myChart.setOption(option);
        myChart.currentIndex = -1;

        setInterval(function () {
            var dataLen = option.series[0].data.length;
            // 取消之前高亮的图形
            myChart.dispatchAction({
                type: 'downplay',
                seriesIndex: 0,
                dataIndex: myChart.currentIndex
            });
            myChart.currentIndex = (myChart.currentIndex + 1) % dataLen;
            // 高亮当前图形
            myChart.dispatchAction({
                type: 'highlight',
                seriesIndex: 0,
                dataIndex: myChart.currentIndex
            });
        }, 1000);

        // 使用刚指定的配置项和数据显示图表。
        /*myChart.setOption(option);*/
        window.addEventListener("resize",function(){
            myChart.resize();
        });
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>

            
        </div>
        <div class="layui-footer footer footer-demo">
            <div class="layui-main">
                <p>
                    <a href="/">
                        Copyright ©2017 17sucai.com All Rights Reserved.
                    </a>
                </p>
                
            </div>
        </div>
        
    </body>
</html>