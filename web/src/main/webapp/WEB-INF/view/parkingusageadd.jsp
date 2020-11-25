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
        .picture{display: none;}
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

                                <option value="0">顶级栏目</option>
                                <option value="1" >东湖小区</option>
                                <option value="2" >金华万府</option>
                            </select>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>车位编号
                        </label>
                        <div class="layui-input-block">
                            <select name="parking_id" id="parking_id">

                                <option value="0">顶级栏目</option>

                            </select>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>车辆所有人
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="veh_name" autocomplete="off" placeholder="空制在80个汉字，160个字符以内"
                                   class="layui-input" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>车牌号
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="veh_hphm" autocomplete="off" placeholder="空制在80个汉字，160个字符以内"
                                   class="layui-input" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>联系方式
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="phone" autocomplete="off" placeholder="空制在80个汉字，160个字符以内"
                                   class="layui-input" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>总费用(￥)
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="money" autocomplete="off" placeholder="空制在80个汉字，160个字符以内"
                                   class="layui-input" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>使用性质
                        </label>
                        <div class="layui-input-block">
                            <input type="radio" name="status" value="1" title="租" >
                            <div class="layui-unselect layui-form-radio layui-form-radioed"><i class="layui-anim layui-icon layui-anim-scaleSpring"></i>
                                <div>租</div>
                            </div>
                            <input type="radio" name="status" value="0" title="售" checked="checked">
                            <div class="layui-unselect layui-form-radio"><i class="layui-anim layui-icon"></i>
                                <div>售</div>
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label for="link" class="layui-form-label">
                            <span class="x-red">*</span>车辆牌照
                        </label>
                        <div class="layui-input-inline">
                            <div class="site-demo-upbar">
                                <div class=" layui-upload-button" style="border:#FFFFFF ;">
                                    <!--<form target="layui-upload-iframe" method="post" key="set-mine" enctype="multipart/form-data" action="">
                                        <input type="file" class="layui-upload-file"  id="previewImg" name="images" onchange="upload()">
                                    </form>
                                    <span class="layui-upload-icon"><i class="layui-icon"></i>上传图片</span>-->
                                    <button type="button" class="layui-btn" id="test1">
                                        <i class="layui-icon">&#xe67c;</i>上传图片
                                    </button>
                                    <input class="layui-upload" type="file" accept="undefined" id="previewImg" name="images" onchange="upload(this,)">
                                </div>

                            </div>
                        </div>

                        <a href="javascript:;" style="" class="layui-btn " id="cancel"><i class="layui-icon">ဂ</i>撤销上传</a>
                    </div>
                    <div class="layui-form-item imgs" id="imgshow">
                        <label  class="layui-form-label">车辆牌照展示
                        </label>

                        <img src="" id="pimages" name="pimages" style="width: 400px;height: 200px;"/>
                        <input id="avatar"   name="image" required="" type="hidden"  value="">
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>开始时间
                        </label>

                        <div class="layui-input-inline">
                            <input class="layui-input" name="start_time" placeholder="开始时间" id="LAY_demorange_s" value="" >
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


                    <!--<div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>外链地址
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="link" value="" autocomplete="off" placeholder="请以“http://”开头"
                            class="layui-input">
                        </div>
                    </div>-->

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
            var community_id=$('#community_id option:selected').val();
            var park_id=$('#parking_id option:selected').val();
            var veh_hphm=$("input[name='veh_hphm']").val();
            var image=$("input[name='image']").val();
            var veh_name=$("input[name='veh_name']").val();
            var phone=$("input[name='phone']").val();
            var start_time=$("input[name='start_time']").val();
            var end_time=$("input[name='end_time']").val();
            var status=$("input[name='status']:checked").val();

            if(community_id==""){
                layer.msg('所属小区不能为空',{icon:5,time:2000});return false;
            }
            if(park_id==""){
                layer.msg('车位编号不能为空',{icon:5,time:2000});return false;
            }
            if(veh_hphm==""){
                layer.msg('车牌号不能为空',{icon:5,time:2000});return false;
            }
            if(veh_name==""){
                layer.msg('车辆所有人不能为空',{icon:5,time:2000});return false;
            }
            if(phone==""){
                layer.msg('联系电话不能为空',{icon:5,time:2000});return false;
            }
            if(image==""){
                layer.msg('车辆照片不能为空',{icon:5,time:2000});return false;
            }
            if(start_time==""){
                layer.msg('开始时间不能为空',{icon:5,time:2000});return false;
            }
            if(end_time==""){
                layer.msg('截止时间不能为空',{icon:5,time:2000});return false;
            }
            if(status==""){
                layer.msg('使用性质不能为空',{icon:5,time:2000});return false;
            }
            var data=data.field;
            $.ajax({
                type:"post",
                url:"xxx",
                data:data,
                dataType:"json",
                success:function(data){
                    //alert(1);
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
        });
        $(function () {
            communidy();
        });
        function communidy() {
            var communidy = $("#community_id").val();
            $.ajax({
                url:"xxx",
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
                            str +=dt.park_number;
                            str +='</option>';
                        }
                    }else {
                        str +='<option value="">----暂无数据----</option>';
                    }

                    $("#parking_id").html(str);
                    form.render('select', 'aihao');

                }
            })
        }

    })
</script>
<!--栏目缩略图上传-->
<script>
    function upload(obj,id){
        var formData = new FormData();
        formData.append('images', $('#previewImg')[0].files[0]);
        //console.log(formData);
        formData.append('id',id);
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