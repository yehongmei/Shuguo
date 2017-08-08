<%@ page import="entities.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>蔬果头部</title>
    <link rel="stylesheet" href="../css/header.css">
    <link rel="icon"  type="image/x-icon" href="images/title_logo.ico">
</head>
<body>
    <% User user=(User) session.getAttribute("user");%>
    <!--头部开始-->
    <div id="all_header">
        <div class="header">
            <div class="logo">
                <img src="images/logo.png" alt="logo"/>
            </div>
            <ul id="nav">
                <li><a href="#"><span class="glyphicon glyphicon-home"></span> 首页</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-book"></span> 菜谱</a></li>
                <li><a href="#"><span class="glyphicon  glyphicon-expand"></span> 美食专题</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-heart-empty"></span> 精选菜谱</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-certificate"></span> 最新美食</a></li>
            </ul>
            <form>
                <input type="text" class="form-control" placeholder="搜索菜谱、菜单">
                <button  type="submit" class="btn btn-success"><sapn class="glyphicon glyphicon-search"></sapn></button>
                <a  class="btn btn-success glyphicon glyphicon-plus" href="/publishAble">发布</a>
            </form >
            <div class="userInfo">
                <%if(user!=null){%>
                <h4 > <span>欢迎，<%= user.getUsername()%>&nbsp;&nbsp;</span></h4>
                <a  class="exit" href="jsp/exit.jsp" target="_top">退出</a>
                <%}else{%>
                <a class="user_logo" href="jsp/login.jsp">登录|</a>
                <a class="user_register" href="jsp/register.jsp">注册</a>
                <%}%>
            </div>
        </div>
    </div>
    <!--头部结束-->
</body>
</html>
