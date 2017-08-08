<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>蔬果注册</title>
    <link rel="icon"  type="image/x-icon" href="../images/title_logo.ico">
    <link rel="stylesheet" href="../css/register.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../resource/bootstrap-3.3.7/dist/css/bootstrap.css">
    <script src="../resource/jquery-3.2.0.js"></script>
    <script src="../resource/jquery.validate.js"></script>
    <script src="../resource/jquery.validate.extend.js"></script>
    <script src="../resource/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
    <script src="../js/register.js"></script>
</head>
<body>
    <!--  头部开始-->
    <div id="all_register_header">
        <div class="register_heater">
            <img src="../images/logo_big.png" height="100" width="200"/>
        </div>
    </div>
    <!--  头部结束-->
    <!--内容开始-->
    <div id="all__register_content">
        <div class="register_content">
            <h4 class="left">新用户注册</h4>
            <h4 class="right">已有账号，<a href="jsp/login.jsp">直接登录></a></h4>
            <form  action="register" method="post" id="regForm">
                <table>
                    <tr>
                        <td><input type="text" name="username"  class="form-control" placeholder="请输入用户名" tip="请输入用户名"></td>
                    </tr>
                    <tr>
                        <td><input type="password" name="password" id="password" class="form-control" placeholder="请输入密码" tip="长度为6-16个字符"></td>
                    </tr>
                    <tr>
                        <td><input type="password" name="repassword" class="form-control" placeholder="确认密码"></td>
                    </tr>
                </table>
                <input class="checkbox" type="checkbox" checked>我已阅读并且同意蔬果美食使用协议
                <button type="submit" class="btn btn-success">注册</button>
            </form>
        </div>
    </div>
    <!--内容结束->
    <!--底部开始-->
    <div id="footer"></div>
    <!--底部结束-->
</body>
</html>
