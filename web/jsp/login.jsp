<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>蔬果登录</title>
    <link rel="icon"  type="image/x-icon" href="../images/title_logo.ico">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/login.css">
    <link rel="stylesheet" href="../resource/bootstrap-3.3.7/dist/css/bootstrap.css">
    <script src="../resource/jquery-3.2.0.js"></script>
    <script src="../resource/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
    <script src="../js/login.js"></script>
</head>
<body>
    <!--  头部开始-->
    <div id="all_header">
        <div class="heater">
            <img src="../images/logo_big.png" height="100" width="200"/>
        </div>
    </div>
    <!--  头部结束-->
    <!-- 中部开始-->
    <div id="all_content">
        <div class="content">
            <div class="content_left">
                <img src="../images/logo_content.png" height="400" width="475"/></div>
            <div class="content_right">
                <div class="logo_top">
                    <h4 class="left">登录</h4>
                    <h4 class="right">已有账号<a href="jsp/register.jsp">直接注册></a></h4>
                    <table>
                        <tr>
                            <td><input type="text" class="form-control" name="username" id="username" placeholder="请输入用户名" value="liutao"></td>
                        </tr>
                        <tr>
                            <td><input type="password" class="form-control" name="password" id="password" placeholder="请输入密码" value="123456"></td>
                        </tr>
                    </table>
                    <span id="result"></span>
                    <button type="submit" class="btn btn-success" id="login">登录</button>
                </div>
            </div>
        </div>
    </div>
    <!-- 中部结束-->
    <!-- 底部开始-->
    <div id="footer"></div>
    <!--底部结束-->
</body>
</html>
