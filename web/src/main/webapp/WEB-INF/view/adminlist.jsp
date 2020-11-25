<%--
Created by IntelliJ IDEA.
User: Administrator
Date: 2020-11-24
Time: 19:14
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        管理员列表
    </title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <script type="text/javascript" src="../../lib/loading/okLoading.js"></script>
    <link rel="stylesheet" href="../../css/main.css" media="all">
    <link rel="stylesheet" href="../../css/bootstrap.css">
</head>
<body>
<div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>首页</cite></a>
              <a><cite>管理员管理</cite></a>
              <a><cite>管理员列表</cite></a>
            </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <form class="layui-form x-center" action="" style="width:80%">
        <div class="layui-form-pane" style="margin-top: 15px;">
            <div class="layui-form-item">
                <label class="layui-form-label">日期范围</label>
                <div class="layui-input-inline">
                    <input class="layui-input" placeholder="开始日" id="LAY_demorange_s">
                </div>
                <div class="layui-input-inline">
                    <input class="layui-input" placeholder="截止日" id="LAY_demorange_e">
                </div>
                <div class="layui-input-inline">
                    <input type="text" name="username"  placeholder="请输入登录名" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-input-inline" style="width:80px">
                    <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                </div>
            </div>
        </div>
    </form>
    <xblock>
        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon">&#xe640;</i>批量删除</button>
        <button class="layui-btn" onclick="admin_add('添加用户','adminadd.html','600','500')"><i class="layui-icon">&#xe608;</i>添加</button>
        <span class="x-right" style="line-height:40px">共有数据：88 条</span>
    </xblock>
    <table class="layui-table">
        <thead>
        <tr>
            <th>
                <input type="checkbox" name="" value="">
            </th>
            <th>
                ID
            </th>
            <th>
                登录名
            </th>
            <th>
                手机
            </th>
            <th>
                邮箱
            </th>
            <th>
                角色
            </th>
            <th>
                加入时间
            </th>
            <th>
                状态
            </th>
            <th>
                操作
            </th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>
                <input type="checkbox" value="1" name="">
            </td>
            <td>
                1                        </td>
            <td>
                admin                        </td>
            <td >
                1111111111                        </td>
            <td >
                1111111@qq.com
            </td>
            <td >
            </td>
            <td>
                1970-01-01 08:00:00                        </td>
            <td class="td-status"> <span class="layui-btn layui-btn-normal " onclick="admin_stop(this,'1',0)"> 启用 </span>
            </td>
            <td class="td-manage">
                <!--<a style="text-decoration:none" onclick="admin_stop(this,'1')" href="javascript:;" title="停用">
                    <i class="layui-icon">&#xe601;</i>
                </a>-->
                <a title="编辑" href="javascript:;" onclick="admin_edit('编辑','adminadd.html','1','','510')"
                   class="ml-5" style="text-decoration:none">
                    <i class="layui-icon">&#xe642;</i>
                </a>
                <a title="删除" href="javascript:;" onclick="admin_del(this,'1')"
                   style="text-decoration:none">
                    <i class="layui-icon">&#xe640;</i>
                </a>
            </td>
        </tr>
        <tr>
            <td>
                <input type="checkbox" value="1" name="">
            </td>
            <td>
                2                        </td>
            <td>
                admin1                        </td>
            <td >
                1111111111                        </td>
            <td >
                111111111@qq.com
            </td>
            <td >
                超级管理员                        </td>
            <td>
                1970-01-01 08:00:00                        </td>
            <td class="td-status"> <span class="layui-btn layui-btn-normal " onclick="admin_stop(this,'2',0)"> 启用 </span>
            </td>
            <td class="td-manage">
                <!--<a style="text-decoration:none" onclick="admin_stop(this,'2')" href="javascript:;" title="停用">
                    <i class="layui-icon">&#xe601;</i>
                </a>-->
                <a title="编辑" href="javascript:;" onclick="admin_edit('编辑','adminadd.html','2','','510')"
                   class="ml-5" style="text-decoration:none">
                    <i class="layui-icon">&#xe642;</i>
                </a>
                <a title="删除" href="javascript:;" onclick="admin_del(this,'1')"
                   style="text-decoration:none">
                    <i class="layui-icon">&#xe640;</i>
                </a>
            </td>
        </tr>
        <tr>
            <td>
                <input type="checkbox" value="1" name="">
            </td>
            <td>
                3                        </td>
            <td>
                admin2                        </td>
            <td >
                11111111                        </td>
            <td >
                11111111@qq.com
            </td>
            <td >
                超级管理员                        </td>
            <td>
                1970-01-01 08:00:00                        </td>
            <td class="td-status"> <span class="layui-btn layui-btn-normal " onclick="admin_stop(this,'3',0)"> 启用 </span>
            </td>
            <td class="td-manage">
                <!--<a style="text-decoration:none" onclick="admin_stop(this,'3')" href="javascript:;" title="停用">
                    <i class="layui-icon">&#xe601;</i>
                </a>-->
                <a title="编辑" href="javascript:;" onclick="admin_edit('编辑','adminadd.html','3','','510')"
                   class="ml-5" style="text-decoration:none">
                    <i class="layui-icon">&#xe642;</i>
                </a>
                <a title="删除" href="javascript:;" onclick="admin_del(this,'1')"
                   style="text-decoration:none">
                    <i class="layui-icon">&#xe640;</i>
                </a>
            </td>
        </tr>
        <tr>
            <td>
                <input type="checkbox" value="1" name="">
            </td>
            <td>
                4                        </td>
            <td>
                admin                        </td>
            <td >
                1111111111                        </td>
            <td >
                111111111@qq.com
            </td>
            <td >
            </td>
            <td>
                2019-07-20 17:03:28                        </td>
            <td class="td-status"> <span class="layui-btn layui-btn-normal " onclick="admin_stop(this,'4',0)"> 启用 </span>
            </td>
            <td class="td-manage">
                <!--<a style="text-decoration:none" onclick="admin_stop(this,'4')" href="javascript:;" title="停用">
                    <i class="layui-icon">&#xe601;</i>
                </a>-->
                <a title="编辑" href="javascript:;" onclick="admin_edit('编辑','adminadd.html','4','','510')"
                   class="ml-5" style="text-decoration:none">
                    <i class="layui-icon">&#xe642;</i>
                </a>
                <a title="删除" href="javascript:;" onclick="admin_del(this,'1')"
                   style="text-decoration:none">
                    <i class="layui-icon">&#xe640;</i>
                </a>
            </td>
        </tr>
        <tr>
            <td>
                <input type="checkbox" value="1" name="">
            </td>
            <td>
                5                        </td>
            <td>
                admin                        </td>
            <td >
                11111111                        </td>
            <td >
                111111111@qq.com
            </td>
            <td >
            </td>
            <td>
                2019-07-20 17:03:41                        </td>
            <td class="td-status"> <span class="layui-btn layui-btn-normal " onclick="admin_stop(this,'5',0)"> 启用 </span>
            </td>
            <td class="td-manage">
                <!--<a style="text-decoration:none" onclick="admin_stop(this,'5')" href="javascript:;" title="停用">
                    <i class="layui-icon">&#xe601;</i>
                </a>-->
                <a title="编辑" href="javascript:;" onclick="admin_edit('编辑','adminadd.html','5','','510')"
                   class="ml-5" style="text-decoration:none">
                    <i class="layui-icon">&#xe642;</i>
                </a>
                <a title="删除" href="javascript:;" onclick="admin_del(this,'1')"
                   style="text-decoration:none">
                    <i class="layui-icon">&#xe640;</i>
                </a>
            </td>
        </tr>

        </tbody>
    </table>

    <div id="page"></div>
</div>
<script src="../../lib/layui/layui.js" charset="utf-8"></script>
<script src="../../js/x-layui.js" charset="utf-8"></script>
<script>
    layui.use(['laydate','element','laypage','layer'], function(){
        $ = layui.jquery;//jquery
        laydate = layui.laydate;//日期插件
        lement = layui.element();//面包导航
        laypage = layui.laypage;//分页
        layer = layui.layer;//弹出层
        okLoading.close($);
        //以上模块根据需要引入

        /*laypage({
          cont: 'page'
          ,pages: 100
          ,first: 1
          ,last: 100
          ,prev: '<em><</em>'
          ,next: '<em>></em>'
        }); */

        var start = {
            min: laydate.now()
            ,max: '2099-06-16 23:59:59'
            ,istoday: false
            ,choose: function(datas){
                end.min = datas; //开始日选好后，重置结束日的最小日期
                end.start = datas //将结束日的初始值设定为开始日
            }
        };

        var end = {
            min: laydate.now()
            ,max: '2099-06-16 23:59:59'
            ,istoday: false
            ,choose: function(datas){
                start.max = datas; //结束日选好后，重置开始日的最大日期
            }
        };

        document.getElementById('LAY_demorange_s').onclick = function(){
            start.elem = this;
            laydate(start);
        }
        document.getElementById('LAY_demorange_e').onclick = function(){
            end.elem = this
            laydate(end);
        }

    });

    //批量删除提交
    function delAll () {
        layer.confirm('确认要删除吗？',function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
        });
    }
    /*添加*/
    function admin_add(title,url,w,h){
        x_admin_show(title,url,w,h);
    }

    /*停用*/
    function admin_stop(obj,id,e){
        layer.confirm(e==1?'你确定要启用吗？':'你确定要禁用吗？',{icon: 3, title:'提示'},function(index){
            $.ajax({
                type:"post",
                url:"xxx",
                data:{id:id,status:e},
                dataType:"json",
                success:function(data)
                {
                    if(data.status==1){
                        //发异步把用户状态进行更改
                        $(obj).attr("class","layui-btn layui-btn-danger ");
                        $(obj).text("隐藏");
                        $(obj).remove();
                        layer.msg(data.info,{icon: 6,time:1000});
                        setTimeout(function(){
                            window.location.reload();
                        },1000);return false;
                    }else{
                        //发异步把用户状态进行更改
                        $(obj).attr("class","layui-btn layui-btn-normal ");
                        $(obj).text("显示");
                        $(obj).remove();
                        layer.msg(data.info,{icon: 5,time:1000});return false;
                    }
                }
            });

        });
    }

    /*启用*/
    function admin_start(obj,id){
        layer.confirm('确认要启用吗？',function(index){
            //发异步把用户状态进行更改
            $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="admin_stop(this,id)" href="javascript:;" title="停用"><i class="layui-icon">&#xe601;</i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="layui-btn layui-btn-normal layui-btn-mini">已启用</span>');
            $(obj).remove();
            layer.msg('已启用!',{icon: 6,time:1000});
        });
    }
    //编辑
    function admin_edit (title,url,id,w,h) {
        url = url+"?id="+id;
        x_admin_show(title,url,w,h);
    }
    /*删除*/
    function admin_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            //发异步删除数据
            $(obj).parents("tr").remove();
            layer.msg('已删除!',{icon:1,time:1000});
        });
    }
</script>

</body>
</html>