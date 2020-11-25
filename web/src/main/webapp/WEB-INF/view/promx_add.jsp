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
                            <select name="community_id" id="community_id" lay-filter="aihao">

                                <option value="0">---请选择小区---</option>
                                <option value="1" >东湖小区</option>
                                <option value="2" >金华万府</option>
                            </select>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>收费项目
                        </label>
                        <div class="layui-input-block">
                            <select name="project_id" id="project_id">

                                <option value="0">---请选择收费项目---</option>

                            </select>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>业主
                        </label>
                        <div class="layui-input-block">
                            <select name="personnel_id" id="personnel_id">

                                <option value="0">---请选择业主---</option>

                            </select>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>应收金额(￥)
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="yf_money" autocomplete="off" placeholder="空制在80个汉字，160个字符以内"
                                   class="layui-input" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>实收金额(￥)
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="ss_money" autocomplete="off" placeholder="空制在80个汉字，160个字符以内"
                                   class="layui-input" value="">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>缴费日期
                        </label>

                        <div class="layui-input-inline">
                            <input class="layui-input" name="jf_time" placeholder="开始时间" id="LAY_demorange_s" value="">
                        </div>

                    </div>
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>备注
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

                    <div style="height:100px;"></div>
                </div>



            </div>

        </div>
    </form>
</div>
<script src="../../lib/layui/layui.js" charset="utf-8"></script>
<script src="../../js/x-layui.js" charset="utf-8"></script>

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
            var jf_time=$("input[name='jf_time']").val();
            var yf_money=$("input[name='yf_money']").val();
            var ss_money=$("input[name='ss_money']").val();
            var community_id=$('#community_id option:selected') .val();//所属栏目ID
            var personnel_id=$('#personnel_id option:selected') .val();//所属栏目ID
            var project_id=$('#project_id option:selected') .val();//所属栏目ID
            if(community_id==""){
                layer.msg('所属小区不能为空',{icon:5,time:2000});return false;
            }
            if(personnel_id==""){
                layer.msg('业主不能为空',{icon:5,time:2000});return false;
            }
            if(project_id==""){
                layer.msg('收费项目不能为空',{icon:5,time:2000});return false;
            }
            if(yf_money==""){
                layer.msg('应收金额不能为空',{icon:5,time:2000});return false;
            }
            if(ss_money==""){
                layer.msg('实收金额不能为空',{icon:5,time:2000});return false;
            }
            if(jf_time==""){
                layer.msg('缴费时间不能为空',{icon:5,time:2000});return false;
            }

            var data=data.field;
            $.ajax({
                type:"post",
                url:"xxx",
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


        form.on('select(aihao)', function(data){
            communidy();
            projectsel();
        });
        $(function () {
            communidy();
            projectsel();
        });
        //communidy();
        function communidy() {
            var communidy = $("#community_id").val();
            $.ajax({
                url:"xxxs",
                type:"post",
                dataType:"json",
                data:{communidy:communidy},
                success:function (data) {
                    var dlen =data.length;
                    var str='';
                    if(dlen>0){
                        for (var i=0;i<dlen;i++){
                            var dt=data[i];
                            str +='<option value="' + dt.id + '">';
                            str +=dt.member_name;
                            str +='</option>';
                        }
                    }else {
                        str +='<option value="">----暂无数据----</option>';
                    }

                    $("#personnel_id").html(str);
                    form.render('select', 'aihao');

                }
            })
        }

        function projectsel() {
            var communidy = $("#community_id").val();
            $.ajax({
                url:"xxxx",
                type:"post",
                dataType:"json",
                data:{communidy:communidy},
                success:function (data) {
                    var dlen =data.length;
                    var str='';
                    if(dlen>0){
                        for (var i=0;i<dlen;i++){
                            var dt=data[i];
                            str +='<option value="' + dt.id + '">';
                            str +=dt.project_name;
                            str +='</option>';
                        }
                    }else {
                        str +='<option value="">----暂无数据----</option>';
                    }

                    $("#project_id").html(str);
                    form.render('select', 'aihao');

                }
            })
        }



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
            url:"xxx",
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