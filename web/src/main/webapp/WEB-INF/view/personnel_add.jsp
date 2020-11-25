<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        人元添加
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
            <input type="hidden" name="id" value="">
            <div class="layui-tab-content" >
                <div class="layui-tab-item layui-show">
                    <!--<form class="layui-form layui-form-pane" action="" id="add">-->

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
                            <span class='x-red'>*</span>所属房产
                        </label>
                        <div class="layui-input-block">
                            <select name="home_id" id="home_id">

                                <option value="0">顶级栏目</option>

                            </select>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>成员名称
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="member_name" autocomplete="off" placeholder="输入成员名称"
                                   class="layui-input" lay-verify="required" lay-reqtext="成员名称是必填项，岂能为空？" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>身份证号
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="sfzmhm" autocomplete="off" placeholder="请输入身份证号码"
                                   class="layui-input" maxlength="18" lay-verify="identity" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>出生日期
                        </label>

                        <div class="layui-input-inline">
                            <input class="layui-input" name="birthday" placeholder="出生日期" id="LAY_demorange_s" value="" >
                        </div>

                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>联系方式
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="phone" autocomplete="off" placeholder=""
                                   class="layui-input" maxlength="11" lay-verify="required|phone" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>职业
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="occupation" autocomplete="off" placeholder=""
                                   class="layui-input" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>性别
                        </label>
                        <div class="layui-input-block">
                            <input type="radio" name="sex" value="1" title="男" checked="checked">
                            <div class="layui-unselect layui-form-radio layui-form-radioed"><i class="layui-anim layui-icon layui-anim-scaleSpring"></i>
                                <div>男</div>
                            </div>
                            <input type="radio" name="sex" value="0" title="女">
                            <div class="layui-unselect layui-form-radio"><i class="layui-anim layui-icon"></i>
                                <div>女</div>
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>成员类型
                        </label>
                        <div class="layui-input-block">
                            <input type="radio" name="personnel_type" value="1" title="业主" checked="checked">
                            <div class="layui-unselect layui-form-radio layui-form-radioed"><i class="layui-anim layui-icon layui-anim-scaleSpring"></i>
                                <div>业主</div>
                            </div>
                            <input type="radio" name="personnel_type" value="2" title="家庭成员">
                            <div class="layui-unselect layui-form-radio"><i class="layui-anim layui-icon"></i>
                                <div>家庭成员</div>
                            </div>
                            <input type="radio" name="personnel_type" value="3" title="租户">
                            <div class="layui-unselect layui-form-radio"><i class="layui-anim layui-icon"></i>
                                <div>租户</div>
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label for="link" class="layui-form-label">
                            <span class="x-red">*</span>成员照片
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
                        <label  class="layui-form-label">成员照片展示
                        </label>

                        <img src="" id="pimages" name="pimages" style="width: 400px;height: 200px;"/>
                        <input id="avatar"   name="image" required="" type="hidden"  value="">
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
            var member_name=$("input[name='member_name']").val();
            var data=data.field;
            if(member_name==""){
                layer.msg('成员名称不能为空',{icon:5,time:2000});return false;
            }

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
        });
        $(function () {
            communidy();
        });
        //communidy();
        function communidy() {
            var communidy = $("#community_id").val();
            $.ajax({
                url:"xxx",
                type:"post",
                dataType:"json",
                data:{communidy:communidy},
                success:function (data) {
                    //console.log(data);
                    var dlen =data.length;
                    var str='';
                    for (var i=0;i<dlen;i++){
                        var dt=data[i];
                        str +='<option value="' + dt.id + '">';
                        str +=dt.home_name;
                        str +='</option>';
                    }

                    $("#home_id").html(str);
                    form.render('select', 'aihao');
                    //form.render('#building_id');

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
        formData.append('id', id);//将id追加再id中
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