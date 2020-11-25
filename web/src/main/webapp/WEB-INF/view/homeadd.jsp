<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        添加房产信息
    </title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="../../css/main.css" media="all">
    <script type="text/javascript" src="../../lib/loading/okLoading.js"></script>

    <style>
        .imgs{display: none;}
    </style>
</head>
<body>
<div class="x-body">
    <form class="layui-form layui-form-pane" action="" id="add">
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
            <div class="layui-tab-content" >
                <div class="layui-tab-item layui-show">
                    <input type="hidden" name="id" value=""/>

                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>所属小区
                        </label>
                        <div class="layui-input-block">
                            <select name="community_id" id="community_id" lay-filter="aihao">
                                <option value="0">---请选择所属小区---</option>
                                <option value="1" >东湖小区</option>
                                <option value="2" >金华万府</option>
                            </select>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>栋数
                        </label>
                        <div class="layui-input-block">
                            <select name="building_id" id="building_id">

                                <option value="0"></option>

                            </select>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>房产名称
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="home_name" autocomplete="off" placeholder="空制在80个汉字，160个字符以内"
                                   class="layui-input" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>户主名称
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="householder" autocomplete="off" placeholder=""
                                   class="layui-input" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>联系方式
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="phone" autocomplete="off" placeholder=""
                                   class="layui-input" lay-verify="required|phone" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>房间数
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="home_number" autocomplete="off" placeholder=""
                                   class="layui-input" lay-verify="required|number" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>单元
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="unit_building" autocomplete="off" placeholder="请输入数字"
                                   class="layui-input" lay-verify="required|number" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>楼层
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="floor" autocomplete="off" placeholder="请输入数字"
                                   class="layui-input" lay-verify="required|number" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>入住时间
                        </label>

                        <div class="layui-input-inline">
                            <input class="layui-input" name="rz_time" placeholder="入住时间" id="LAY_demorange_s" value="">
                        </div>

                    </div>
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>描述
                        </label>
                        <div class="layui-input-block">
                            <textarea placeholder="请输入内容" name="desc" class="layui-textarea"></textarea>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <button class="layui-btn" type="button" lay-filter="add" lay-submit="">
                            保存
                        </button>
                    </div>
                    <!--</form>-->
                    <div style="height:100px;"></div>
                </div>

            </div>

        </div>
    </form>
</div>
<script src="../../lib/layui/layui.js" charset="utf-8"></script>
<script src="../../js/x-layui.js" charset="utf-8"></script>
<script src="../../js/jquery.min.js" charset="utf-8"></script>
<!--<script src="/static/xiyuan/js/jquery.js" charset="utf-8"></script>-->
<script>

    layui.use(['laydate','element','layer','form'], function(){
        $ = layui.jquery;//jquery

        laydate = layui.laydate;//日期插件
        lement = layui.element();//面包导航
        layer = layui.layer;//弹出层

        form = layui.form();
        okLoading.close($);
        form.render();
        var start = {
            min: laydate.now()
            ,max: '2099-06-16 23:59:59'
            ,istoday: false
            ,choose: function(datas){
                //end.min = datas; //开始日选好后，重置结束日的最小日期
                //end.start = datas //将结束日的初始值设定为开始日
            }
        };

        document.getElementById('LAY_demorange_s').onclick = function(){
            start.elem = this;
            laydate(start);
        };

        //监听提交
        form.on('submit(add)', function(data){
            var home_name=$("input[name='home_name']").val();
            var householder=$("input[name='householder']").val();
            if(home_name==""){
                layer.msg('房产名称不能为空',{icon:5,time:2000});return false;
            }
            if(householder==""){
                layer.msg('户主名称不能为空',{icon:5,time:2000});return false;
            }
            var data=data.field;
            $.ajax({
                type:"post",
                url:"/xiyuan/home/add.html",
                data:data,
                dataType:"json",
                success:function(data)
                {
                    //alert(1);
                    if(data.status==1)
                    {
                        layer.msg(data.info, {icon: 6,time:2000},function () {
                            window.parent.location.reload();
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        });
                        return false;

                    }
                    else{
                        layer.msg(data.info,{icon:5,time:2000});return false;
                    }
                }

            });

        });
        form.on('select(aihao)', function(data){
            communidy();
        });
        $(function () {
            communidy();
        });
        //communidy();
        function communidy() {
            var communidy = $("#community_id").val();

            $.ajax({
                url:"/xiyuan/home/building.html",
                type:"post",
                dataType:"json",
                data:{communidy:communidy},
                success:function (data) {

                    var dlen =data.length;
                    var str='';
                    for (var i=0;i<dlen;i++){
                        var dt=data[i];
                        str +='<option value="' + dt.id + '">';
                        str +=dt.buildings_name;
                        str +='</option>';
                    }

                    $("#building_id").html(str);
                    form.render('select', 'aihao');
                    //form.render('#building_id');

                }
            })
        }


    })
</script>
<!--栏目缩略图上传-->
<script>

    /*$("#community_id").blur(function(){
        communidy()
    });*/


    //window.onload = communidy;

</script>

</body>
</html>