<%@ page import="entities.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>蔬果头部</title>
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
                <li><a href="../index.jsp"><span class="glyphicon glyphicon-home"></span> 首页</a></li>
                <li><a><span class="glyphicon glyphicon-book"></span> 菜谱</a>
                    <ul class="two_level_menu">
                        <li><a href="selectAllCourseAndPage?c_type=家常菜谱&selectPageNumber=1">家常菜谱</a></li>
                        <li><a href="selectAllCourseAndPage?c_type=特色面食&selectPageNumber=1">特色面食</a></li>
                        <li><a href="selectAllCourseAndPage?c_type=八大菜系&selectPageNumber=1">八大菜系</a></li>
                        <li><a href="selectAllCourseAndPage?c_type=四季食谱&selectPageNumber=1">四季食谱</a></li>
                    </ul>
                </li>
                <li><a><span class="glyphicon  glyphicon-expand"></span> 美食专题</a></li>
                <li><a href="selectChoiceCourseAndPage?selectPageNumber=1"><span class="glyphicon glyphicon-heart-empty"></span> 精选菜谱</a></li>
                <li><a href="selectNewCate"><span class="glyphicon glyphicon-certificate"></span> 最新美食</a></li>
            </ul>
             <form action="/fuzzySearch" method="post">
                <input type="text" name="c_name" class="form-control" placeholder="想吃啥就搜啥">
                 <input type="hidden" name="selectPageNumber" value="1" >
                <button  type="submit" class="btn btn-success"><sapn class="glyphicon glyphicon-search fuzzySearch"></sapn></button>
                <a  class="btn btn-success glyphicon glyphicon-plus" href="/publishAble">发布</a>
            </form >
            <div class="userInfo">
                <%if(user!=null){%>
                <h4 > <span>欢迎,<%= user.getUsername()%>&nbsp;&nbsp;</span></h4>
                <a  class="exit" href="jsp/exit.jsp" target="_top">退出</a>
                <%}else{%>
                <a class="user_logo" href="jsp/login.jsp">登录|</a>
                <a class="user_register" href="jsp/register.jsp">注册</a>
              <%}%>
            </div>
        </div>
    </div>
    <!--头部结束-->
</div>
</body>
</html>
