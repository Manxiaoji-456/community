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
        用户组管理
    </title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="../../css/main.css" media="all">
</head>

<body>
<div class="x-body">
    <form action="" method="post" class="layui-form layui-form-pane" id="auth_groupadd">
        <input type="hidden" name="id" value=""/>
        <div class="layui-form-item">
            <label for="name" class="layui-form-label">
                <span class="x-red">*</span>用户组名称
            </label>
            <div class="layui-input-inline">
                <input type="text" id="title" name="title"
                       class="layui-input" value="">
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
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">
                拥有权限
            </label>
            <table  class="layui-table layui-input-block">
                <tbody>
                <tr>
                    <!--<td>
                        用户管理
                    </td>-->
                    <td>
                        <div class="layui-input-block">
                            <input   name="rules[]" type="checkbox" value="1" dataid="id-1" class="checkbox-parent">
                            <span style="color: red;font-weight: bold;" >系统设置</span>

                        </div>
                    </td>
                </tr>
                <tr>
                    <!--<td>
                        用户管理
                    </td>-->
                    <td>
                        <div class="layui-input-block">
                            &nbsp;&nbsp;&nbsp;                                        <input   name="rules[]" type="checkbox" value="2" dataid="id-1-2" class="checkbox-parentcheckbox-child">
                            <span>基础设置</span>

                        </div>
                    </td>
                </tr>
                <tr>
                    <!--<td>
                        用户管理
                    </td>-->
                    <td>
                        <div class="layui-input-block">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                        <input   name="rules[]" type="checkbox" value="3" dataid="id-1-2-3" class="checkbox-parentcheckbox-child">
                            <span>基础设置操作</span>

                        </div>
                    </td>
                </tr>
                <tr>
                    <!--<td>
                        用户管理
                    </td>-->
                    <td>
                        <div class="layui-input-block">
                            &nbsp;&nbsp;&nbsp;                                        <input   name="rules[]" type="checkbox" value="9" dataid="id-1-9" class="checkbox-parentcheckbox-child">
                            <span>友情链接</span>

                        </div>
                    </td>
                </tr>
                <tr>
                    <!--<td>
                        用户管理
                    </td>-->
                    <td>
                        <div class="layui-input-block">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                        <input   name="rules[]" type="checkbox" value="10" dataid="id-1-9-10" class="checkbox-parentcheckbox-child">
                            <span>友情链接列表</span>

                        </div>
                    </td>
                </tr>
                <tr>
                    <!--<td>
                        用户管理
                    </td>-->
                    <td>
                        <div class="layui-input-block">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                        <input   name="rules[]" type="checkbox" value="11" dataid="id-1-9-11" class="checkbox-parentcheckbox-child">
                            <span>友情链接添加修改</span>

                        </div>
                    </td>
                </tr>
                <tr>
                    <!--<td>
                        用户管理
                    </td>-->
                    <td>
                        <div class="layui-input-block">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                        <input   name="rules[]" type="checkbox" value="12" dataid="id-1-9-12" class="checkbox-parentcheckbox-child">
                            <span>友情链接删除</span>

                        </div>
                    </td>
                </tr>
                <tr>
                    <!--<td>
                        用户管理
                    </td>-->
                    <td>
                        <div class="layui-input-block">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                        <input   name="rules[]" type="checkbox" value="13" dataid="id-1-9-13" class="checkbox-parentcheckbox-child">
                            <span>友情链接审核</span>

                        </div>
                    </td>
                </tr>
                <tr>
                    <!--<td>
                        用户管理
                    </td>-->
                    <td>
                        <div class="layui-input-block">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                        <input   name="rules[]" type="checkbox" value="14" dataid="id-1-9-14" class="checkbox-parentcheckbox-child">
                            <span>友情链接状态操作</span>

                        </div>
                    </td>
                </tr>
                <tr>
                    <!--<td>
                        用户管理
                    </td>-->
                    <td>
                        <div class="layui-input-block">
                            <input   name="rules[]" type="checkbox" value="4" dataid="id-4" class="checkbox-parent">
                            <span style="color: red;font-weight: bold;" >管理员管理</span>

                        </div>
                    </td>
                </tr>
                <tr>
                    <!--<td>
                        用户管理
                    </td>-->
                    <td>
                        <div class="layui-input-block">
                            &nbsp;&nbsp;&nbsp;                                        <input   name="rules[]" type="checkbox" value="5" dataid="id-4-5" class="checkbox-parentcheckbox-child">
                            <span>管理员列表</span>

                        </div>
                    </td>
                </tr>
                <tr>
                    <!--<td>
                        用户管理
                    </td>-->
                    <td>
                        <div class="layui-input-block">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                        <input   name="rules[]" type="checkbox" value="6" dataid="id-4-5-6" class="checkbox-parentcheckbox-child">
                            <span>管理员添加修改</span>

                        </div>
                    </td>
                </tr>
                <tr>
                    <!--<td>
                        用户管理
                    </td>-->
                    <td>
                        <div class="layui-input-block">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                        <input   name="rules[]" type="checkbox" value="7" dataid="id-4-5-7" class="checkbox-parentcheckbox-child">
                            <span>管理员删除</span>

                        </div>
                    </td>
                </tr>
                <tr>
                    <!--<td>
                        用户管理
                    </td>-->
                    <td>
                        <div class="layui-input-block">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                        <input   name="rules[]" type="checkbox" value="8" dataid="id-4-5-8" class="checkbox-parentcheckbox-child">
                            <span>管理员状态操作</span>

                        </div>
                    </td>
                </tr>
                <!--<tr>
<td>
文章管理
</td>
<td>
<div class="layui-input-block">
    <input name="id[]" type="checkbox" value="2"> 文章添加
    <input name="id[]" type="checkbox" value="2"> 文章删除
    <input name="id[]" type="checkbox" value="2"> 文章修改
    <input name="id[]" type="checkbox" value="2"> 文章改密
    <input name="id[]" type="checkbox" value="2"> 文章列表
</div>
</td>
</tr>-->
                </tbody>
            </table>
        </div>
        <div class="layui-form-item layui-form-text">
            <label for="desc" class="layui-form-label">
                描述
            </label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" id="info" name="info" class="layui-textarea"></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <button class="layui-btn" lay-submit="" lay-filter="add">保存</button>
        </div>
    </form>
</div>
<script src="../../lib/layui/layui.js" charset="utf-8">
</script>
<script src="../../js/x-layui.js" charset="utf-8">
</script>
<script src="js/jquery_002.js" charset="utf-8">
</script>
<script src="../../js/jquery.js" charset="utf-8">
</script>
<script>
    layui.use(['form','layer'], function(){
        $ = layui.jquery;
        var form = layui.form()
            ,layer = layui.layer;

        //监听提交
        form.on('submit(add)', function(data){
            var auth_groupadd=$("#auth_groupadd").serialize();
            var title=$("input[name='title']").val();
            //var data = data.field;
            if(title == ""){
                layer.msg("用户组名称不能为空",{icon:5,time:2000});
                return false;
            }
            $.ajax({
                type:"post",
                url:"xxxx",
                data:auth_groupadd,
                dataType:"json",
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
    /* 权限配置 */
    $(function () {

        //动态选择框，上下级选中状态变化
        $('input.checkbox-parent').on('change', function () {
            alert("1");
            var dataid = $(this).attr("dataid");
            $('input[dataid^=' + dataid + ']').prop('checked', $(this).is(':checked'));
        });
        $('input.checkbox-child').on('change', function () {
            var dataid = $(this).attr("dataid");
            dataid = dataid.substring(0, dataid.lastIndexOf("-"));
            var parent = $('input[dataid=' + dataid + ']');
            if ($(this).is(':checked')) {
                parent.prop('checked', true);
                //循环到顶级
                while (dataid.lastIndexOf("-") != 2) {
                    dataid = dataid.substring(0, dataid.lastIndexOf("-"));
                    parent = $('input[dataid=' + dataid + ']');
                    parent.prop('checked', true);
                }
            } else {
                //父级
                if ($('input[dataid^=' + dataid + '-]:checked').length == 0) {
                    parent.prop('checked', false);
                    //循环到顶级
                    while (dataid.lastIndexOf("-") != 2) {
                        dataid = dataid.substring(0, dataid.lastIndexOf("-"));
                        parent = $('input[dataid=' + dataid + ']');
                        if ($('input[dataid^=' + dataid + '-]:checked').length == 0) {
                            parent.prop('checked', false);
                        }
                    }
                }
            }
        });
    });
</script>
</body>
</html>
