<%@ page import="java.util.List" %>
<%@ page import="entities.Course" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>新秀菜谱</title>
    <link rel="stylesheet" href="../resource/bootstrap-3.3.7/dist/css/bootstrap.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/newCate.css">
    <script src="../resource/jquery-3.2.0.js"></script>
    <script src="../resource/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
    <script src="../js/newCate.js"></script>
</head>
<body>
<%
    List<Course> courses=(List<Course>) request.getAttribute("selectNewCateName");
%>
    <!--头部开始-->
    <div id="header"></div>
    <!--头部结束-->
    <div id="all_content">
        <div class="content_top"><span class="glyphicon  glyphicon-home"></span>&nbsp;&nbsp;当前位置：蔬菜网 > 最新菜谱</div>
        <div class="content">
            <div class="content_left">
                <h4 class="content_left_top">
                    最新菜谱
                </h4>
               <%
                    for (int i = 0; i < courses.size(); i++) {
                        Course course = courses.get(i);
                %>
                <ul class="content_left_content">
                    <li>
                        <p> <%=course.getC_name()%></p>
                        <span><%=course.getC_date()%></span>
                    </li>
                </ul>
               <%
                    }
                %>
            </div>
            <div class="content_right">
                111
            </div>
        </div>
    </div>
    <!--底部开始-->
    <footer id="footer" style="clear: both"></footer>
    <!--底部结束-->
</body>
</html>
