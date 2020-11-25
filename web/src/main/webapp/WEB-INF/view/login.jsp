<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>系统登录</title>
  <link rel="stylesheet" href="../../css/login.css">
  <script type="text/javascript" src="../../js/jquery.min.js"></script>
  <script src="../../lib/layui/layui.js" charset="utf-8"></script>
</head>
<body class="login-bg">

    <div class="login">
        <div class="message">系统登录</div>
        <div id="darkbannerwrap"></div>   
        <form method="post" class="layui-form" action="login.do">
            <input name="username" placeholder="用户名"  type="text" lay-verify="required" class="layui-input" >
            <hr class="hr15">
            <input name="password" lay-verify="required" placeholder="密码"  type="password" class="layui-input">
            <hr class="hr15">
            <input value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit">
            <hr class="hr20" >
        </form>
    </div>
    <script type="text/javascript">
        if(${not empty msg}){
            alert(登录失败);
        }
    </script>
<%--    <script>--%>
        <%--    layui.use(['form'],--%>
        <%--    function() {--%>
        <%--        $ = layui.jquery;--%>
        <%--        var form = layui.form(),--%>
        <%--        layer = layui.layer;--%>

        <%--        //监听提交--%>
        <%--        // form.on('submit(login)',--%>
        <%--        // function(data) {--%>
        <%--        //     //alert(1);--%>
        <%--        //     /*console.log(data);*/--%>
        <%--        //     layer.alert(JSON.stringify(data.field), {--%>
        <%--        //       title: '点击确定进入后台'--%>
        <%--        //     },function  () {--%>
        <%--        //         location.href = "index.html";--%>
        <%--        //     })--%>
        <%--        //     return false;--%>
        <%--        //--%>
        <%--        //--%>
        <%--        // });--%>

        <%--    });--%>

        <%--</script>--%>

    
    <!-- 底部结束 -->
    
</body>
</html>