<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-11-24
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>
        管理员管理
    </title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <script type="text/javascript" src="../../lib/loading/okLoading.js"></script>
    <link rel="stylesheet" href="../../css/main.css" media="all">
</head>
<style>
    .imgs{display: none;}
    .picture{display: none;}
</style>
<body>
<div class="x-body">
    <form class="layui-form" id="adminadd">
        <input type="hidden" name="id" value="">
        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="x-red">*</span>登录名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="name" name="name" required="" lay-verify="required"
                       autocomplete="off" class="layui-input" value="">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red">*</span>将会成为您唯一的登入名
            </div>
        </div>
        <div class="layui-form-item">
            <label for="phone" class="layui-form-label">
                <span class="x-red">*</span>手机
            </label>
            <div class="layui-input-inline">
                <input type="text" id="phone" name="phone" required="" lay-verify="phone"
                       autocomplete="off" class="layui-input" value="">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red">*</span>将会成为您唯一的登入名
            </div>
        </div>

        <div class="layui-form-item">
            <label for="role" class="layui-form-label">
                <span class="x-red">*</span>用户组
            </label>
            <div class="layui-input-inline">
                <select name="group_id">
                    <option value="">请选择角色</option>
                    <option value="1" >超级管理员</option>

                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="link" class="layui-form-label">
                <span class="x-red">*</span>缩略图
            </label>
            <div class="layui-input-inline">
                <div class="site-demo-upbar">
                    <div class=" layui-upload-button" style="border:#FFFFFF ;">
                        <button type="button" class="layui-btn" id="test1">
                            <i class="layui-icon">&#xe67c;</i>上传图片
                        </button>
                        <input class="layui-upload" type="file" accept="undefined" id="previewImg" name="img" onchange="upload(this,)">
                    </div>

                </div>
            </div>

            <a href="javascript:;" style="" class="layui-btn " id="cancel"><i class="layui-icon">ဂ</i>撤销上传</a>
        </div>
        <div class="layui-form-item imgs" id="imgshow">
            <label  class="layui-form-label">缩略图展示
            </label>
            <img src="" id="pimages" name="pimages" style="width: 400px;height: 200px;"/>
            <input id="avatar"   name="image" required="" type="hidden"  value="">
        </div>
        <div class="layui-form-item">
            <label for="L_pass" class="layui-form-label">
                <span class="x-red">*</span>密码
            </label>
            <div class="layui-input-inline">
                <input type="password" id="L_pass" name="password" required="" lay-verify="pass"
                       autocomplete="off" class="layui-input" value="">
            </div>
            <div class="layui-form-mid layui-word-aux">
                6到16个字符
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
                <span class="x-red">*</span>确认密码
            </label>
            <div class="layui-input-inline">
                <input type="password" id="L_repass" name="repass" required="" lay-verify="repass"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">状态</label>
            <div class="layui-input-block">
                <input type="radio" name="status" value="1" title="启用" checked="checked">
                <div class="layui-unselect layui-form-radio layui-form-radioed"><i class="layui-anim layui-icon layui-anim-scaleSpring"></i>
                    <div>启用</div>
                </div>
                <input type="radio" name="status" value="0" title="禁用" checked="checked">
                <div class="layui-unselect layui-form-radio"><i class="layui-anim layui-icon"></i>
                    <div>禁用</div>
                </div>


            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
            </label>
            <button  class="layui-btn" lay-filter="add" lay-submit="">
                增加
            </button>
        </div>
    </form>
</div>
<script src="../../lib/layui/layui.js" charset="utf-8">
</script>
<script src="../../js/x-layui.js" charset="utf-8">
</script>
<script>
    layui.use(['form','layer'], function(){
        $ = layui.jquery;
        var form = layui.form()
            ,layer = layui.layer;
        okLoading.close($);
        //自定义验证规则
        /*form.verify({
          nikename: function(value){
            if(value.length < 5){
              return '昵称至少得5个字符啊';
            }
          }
          ,pass: [/(.+){6,12}$/, '密码必须6到12位']
          ,repass: function(value){
              if($('#L_pass').val()!=$('#L_repass').val()){
                  return '两次密码不一致';
              }
          }
        });*/

        //监听提交
        form.on('submit(add)', function(data){
            var admindate=$("#adminadd").serialize();
            //var data = data.field;
            $.ajax({
                type:'post',
                url:"xxx",
                data:admindate,
                datatype:"json",
                success:function (data) {
                    if(data.status==1){
                        layer.msg(data.info,{icon:1,time:1000});
                        setTimeout(function(){
                            window.parent.location.reload();
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        },1000);
                        return false;
                    }else{
                        layer.msg(data.info,{icon:5,time:2000});return false;
                    }
                }
            })
            return false;
        });


    });
</script>
<script>
    //轮播图上传
    function upload(obj,id)
    {
        var formData = new FormData();
        formData.append('img', $('#previewImg')[0].files[0]);
        formData.append('id', id);//将id追加再id中
        layer.msg('图片上传中', {icon: 16});
        $.ajax({
            type:"post",
            processData: false,
            contentType: false,
            url:"xxx",
            data:formData,
            success:function(data){
                if(data.status == 1){
                    //console.log(data.image_name);
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
