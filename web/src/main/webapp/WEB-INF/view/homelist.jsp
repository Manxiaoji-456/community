<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        房产管理
    </title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="../../css/main.css" media="all">
    <script type="text/javascript" src="../../lib/loading/okLoading.js"></script>
    <link rel="stylesheet" href="../../css/bootstrap.css">
</head>
<body>
<div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>首页</cite></a>
              <a><cite>房产管理</cite></a>
              <a><cite>房产列表</cite></a>
            </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <form class="layui-form x-center" action="" style="width:800px">
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
                    <input type="text" name="username"  placeholder="标题" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-input-inline" style="width:80px">
                    <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                </div>
            </div>
        </div>
    </form>
    <xblock>
        <button class="layui-btn layui-btn-danger" onclick="delAll()">
            <i class="layui-icon">&#xe640;</i>批量删除
        </button>
        <button class="layui-btn" onclick="home_add('添加','homeadd.html','1000','600')">
            <i class="layui-icon">&#xe608;</i>添加
        </button>
        <span class="x-right" style="line-height:40px">共有数据：88 条</span>
    </xblock>
    <table class="layui-table">
        <thead>
        <tr>
            <th>
                <input type="checkbox" name="" value="" id="onclicks">
            </th>
            <th>
                ID
            </th>
            <th>
                所属小区
            </th>
            <th>
                栋数
            </th>
            <th>
                房产编码
            </th>
            <th>
                房产名称
            </th>
            <th>
                户主名称
            </th>
            <th>
                联系方式
            </th>
            <th>
                房间数
            </th>
            <th>
                单元
            </th>
            <th>
                楼层
            </th>
            <th>
                描述
            </th>
            <th>
                入住时间
            </th>
            <th>
                操作
            </th>
        </tr>
        </thead>
        <tbody id="ches">
        <tr>
            <td>
                <input type="checkbox" value="3" name="" id="che">
            </td>
            <td>
                3                        </td>
            <td>
                <u style="cursor:pointer" onclick="question_show()">
                    金华万府                            </u>
            </td>
            <td >
                A栋                        </td>
            <td >
                HM20191213002                        </td>
            <td >
                金华小区A栋                        </td>
            <td >
                admin                        </td>
            <td >
                1111111111                        </td>
            <td >
                4                        </td>
            <td >
                3                        </td>
            <td >
                22                        </td>
            <td >
                金华小区欢迎您                        </td>
            <td >
                2019-12-13                        </td>
            <td class="td-manage">
                <a title="编辑" href="javascript:;" onclick="home_edit('编辑','homeadd.html','3','1000','600')"
                   class="ml-5" style="text-decoration:none">
                    <i class="layui-icon">&#xe642;</i>
                </a>
                <a title="删除" href="javascript:;" onclick="question_del(this,'1')"
                   style="text-decoration:none">
                    <i class="layui-icon">&#xe640;</i>
                </a>
            </td>
        </tr>
        <tr>
            <td>
                <input type="checkbox" value="2" name="" id="che">
            </td>
            <td>
                2                        </td>
            <td>
                <u style="cursor:pointer" onclick="question_show()">
                    金华万府                            </u>
            </td>
            <td >
                A栋                        </td>
            <td >
                HM20191213001                        </td>
            <td >
                金华小区                        </td>
            <td >
                陈思语                        </td>
            <td >
                111111111111                        </td>
            <td >
                4                        </td>
            <td >
                3                        </td>
            <td >
                22                        </td>
            <td >
                金华小区                        </td>
            <td >
                2019-12-13                        </td>
            <td class="td-manage">
                <a title="编辑" href="javascript:;" onclick="home_edit('编辑','homeadd.html','2','1000','600')"
                   class="ml-5" style="text-decoration:none">
                    <i class="layui-icon">&#xe642;</i>
                </a>
                <a title="删除" href="javascript:;" onclick="question_del(this,'1')"
                   style="text-decoration:none">
                    <i class="layui-icon">&#xe640;</i>
                </a>
            </td>
        </tr>
        <tr>
            <td>
                <input type="checkbox" value="1" name="" id="che">
            </td>
            <td>
                1                        </td>
            <td>
                <u style="cursor:pointer" onclick="question_show()">
                    东湖小区                            </u>
            </td>
            <td >
                东湖小区别墅                        </td>
            <td >
                HM20191213000                        </td>
            <td >
                东湖房地产                        </td>
            <td >
                admin                        </td>
            <td >
                1111111111                        </td>
            <td >
                4                        </td>
            <td >
                4                        </td>
            <td >
                20                        </td>
            <td >
                船袜                        </td>
            <td >
                2019-12-13                        </td>
            <td class="td-manage">
                <a title="编辑" href="javascript:;" onclick="home_edit('编辑','homeadd.html','1','1000','600')"
                   class="ml-5" style="text-decoration:none">
                    <i class="layui-icon">&#xe642;</i>
                </a>
                <a title="删除" href="javascript:;" onclick="question_del(this,'1')"
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

    function question_show (argument) {
        layer.msg('可以跳到前台具体问题页面',{icon:1,time:1000});
    }
    /*添加*/
    function home_add(title,url,w,h){
        x_admin_show(title,url,w,h);
    }
    //编辑
    function home_edit (title,url,id,w,h) {
        url = url+"?id="+id;
        x_admin_show(title,url,w,h);
    }

    /*删除*/
    function question_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            //发异步删除数据
            $(obj).parents("tr").remove();
            layer.msg('已删除!',{icon:1,time:1000});
        });
    }



</script>

<script>
    var add=document.getElementById('ches');
    var inputs=add.getElementsByTagName('input');

    /*$("allSelect").onclick = function () {
        for(var i=0; i<inputs.length; i++){
            inputs[i].checked = true;
        }
    };*/
    var che=document.getElementById("onclicks");
    che.addEventListener('click',function () {
        for(var i=0; i<inputs.length;i++){
            inputs[i].checked=this.checked;
            //console.log(inputs[i].value);
        }
        //return vel;

    });

    // 注册事件
    /* che.onclick = function(){
         // this.checked  可以得到当前复选框的选中状态，如果是 true 就是选中，如果是 false 就是未选中
         for(var i=0; i< inputs.length; i++){
             inputs[i].checked = this.checked;
         }
     }*/
    // 2、下面的复选框要全部选中，上面的全选按钮才能够全部选中，给下面的所有复选框绑定事件，每次点击，都要循环查看下面下面所有的复选框是否有没选中的，如果有没选中的复选框，那么上面的全选按钮就不选中。
    /*for(var i = 0; i<inputs.length; i++){
        inputs[i].onclick = function(){
             // 设置一个变量来控制按钮是否全部选中
             var flag = true;
             // 每次点击下面的复选框都要检查下面的四个小按钮是否被全部选中。
             /!*for(var i =0; i<inputs.length; i++){
                  if(!inputs[i].checked){
                      flag = false;
                  }
             }*!/
             che.checked = flag;
        }
    }*/

</script>

</body>
</html>