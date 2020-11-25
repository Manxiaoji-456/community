<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-11-24
  Time: 19:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        车位使用添加
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
    <!--百度编辑器-->
    <script src="../../ueditor/ueditor.config.js"></script>
    <script src="../../ueditor/ueditor.all.min.js"></script>
    <script src="../../ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>

<div class="x-body">
    <form class="layui-form layui-form-pane" action="" id="add">
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
            <div class="layui-tab-content" >
                <div class="layui-tab-item layui-show">
                    <input type="hidden" name="id" value="">
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>所属小区
                        </label>
                        <div class="layui-input-block">
                            <select name="community_id" id="community_id">

                                <option value="0">---请选择小区---</option>
                                <option value="1" >东湖小区</option>
                                <option value="2" >金华万府</option>
                            </select>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>活动标题
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="title" autocomplete="off" placeholder="空制在80个汉字，160个字符以内"
                                   class="layui-input" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>活动地点
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="place" autocomplete="off" placeholder="空制在80个汉字，160个字符以内"
                                   class="layui-input" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>举办单位
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="host_unit" autocomplete="off" placeholder="空制在80个汉字，160个字符以内"
                                   class="layui-input" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>开始时间
                        </label>

                        <div class="layui-input-inline">
                            <input class="layui-input" name="start_time" placeholder="开始时间" id="LAY_demorange_s" value="">
                        </div>

                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>开始时间
                        </label>

                        <div class="layui-input-inline">
                            <input class="layui-input" name="end_time" placeholder="开始时间" id="END_demorange_s" value="" >
                        </div>

                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>状态
                        </label>
                        <div class="layui-input-block">
                            <input type="radio" name="status" value="1" title="有效" >
                            <div class="layui-unselect layui-form-radio layui-form-radioed"><i class="layui-anim layui-icon layui-anim-scaleSpring"></i>
                                <div>有效</div>
                            </div>
                            <input type="radio" name="status" value="0" title="无效" checked="checked">
                            <div class="layui-unselect layui-form-radio"><i class="layui-anim layui-icon"></i>
                                <div>无效</div>
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label for="link" class="layui-form-label">
                            <span class="x-red">*</span>活动内容
                        </label>
                        <div class="layui-input-inline">
                            <textarea  id="content" placeholder="" name="content"></textarea>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <button class="layui-btn" type="button" lay-filter="add" lay-submit="">
                            保存
                        </button>
                    </div>

                    <div style="height:100px;"></div>
                </div>



            </div>

        </div>
    </form>
</div>
<script src="../../lib/layui/layui.js" charset="utf-8"></script>
<script src="../../js/x-layui.js" charset="utf-8"></script>
<script type="text/javascript">
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    UE.getEditor('content',{initialFrameWidth:750,initialFrameHeight:400,});
</script>
<script>
    layui.use(['laydate','element','layer','form'], function(){
        $ = layui.jquery;//jquery
        lement = layui.element();//面包导航
        layer = layui.layer;//弹出层
        form = layui.form();
        laydate = layui.laydate;//日期插件
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

        document.getElementById('END_demorange_s').onclick = function(){
            start.elem = this;
            laydate(start);
        };
        //图片上传接口
        /*layui.upload({
          url: './upload.json' //上传接口
          ,success: function(res){ //上传成功后的回调
              console.log(res);
            $('#LAY_demo_upload').attr('src',res.url);
          }
        });*/


        //监听提交
        form.on('submit(add)', function(data){
            var title=$("input[name='title']").val();
            var place=$("input[name='place']").val();
            var host_unit=$("input[name='host_unit']").val();
            var start_time=$("input[name='start_time']").val();
            var end_time=$("input[name='end_time']").val();
            var content=$("textarea[name='content']").val();
            var status=$("input[name='status']:checked").val();
            var community_id=$('#community_id option:selected') .val();//所属栏目ID

            if(title==""){
                layer.msg('活动标题不能为空',{icon:5,time:2000});return false;
            }
            if(place==""){
                layer.msg('活动地点不能为空',{icon:5,time:2000});return false;
            }
            if(host_unit==""){
                layer.msg('举办单位不能为空',{icon:5,time:2000});return false;
            }
            if(community_id==""){
                layer.msg('所属小区不能为空',{icon:5,time:2000});return false;
            }
            if(start_time==""){
                layer.msg('活动开始时间不能为空',{icon:5,time:2000});return false;
            }
            if(end_time==""){
                layer.msg('活动截止时间不能为空',{icon:5,time:2000});return false;
            }
            if(content==""){
                layer.msg('活动内容不能为空',{icon:5,time:2000});return false;
            }
            if(status==""){
                layer.msg('状态不能为空',{icon:5,time:2000});return false;
            }
            var data=data.field;
            $.ajax({
                type:"post",
                url:"xxxx",
                data:data,
                dataType:"json",
                success:function(data){
                    if(data.status==1){
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

    })
</script>
<!--栏目缩略图上传-->
<script>
    function upload()
    {
        var formData = new FormData();
        formData.append('images', $('#previewImg')[0].files[0]);
        //console.log(formData);
        layer.msg('图片上传中', {icon: 16});
        $.ajax({
            type:"post",
            processData: false,
            contentType: false,
            url:"xxxx",
            data:formData,
            success:function(data){
                if(data.status == 1){
                    console.log(data.image_name);
                    layer.closeAll('loading');
                    //layer.msg(data.info,{icon:1,time:1000});
                    $("#pimages").attr('src',data.image_name);
                    $("#avatar").val(data.image_name);
                    $(".imgs").show();
                    return false;
                }else{
                    layer.msg(data.info,{icon:2,time:1000});
                }
            }
        });
    }
</script>

</body>
</html>
