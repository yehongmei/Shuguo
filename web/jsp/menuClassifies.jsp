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
    <title>菜谱分类</title>
    <link rel="stylesheet" href="../resource/bootstrap-3.3.7/dist/css/bootstrap.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/menuClassifies.css">
    <script src="../resource/jquery-3.2.0.js"></script>
    <script src="../resource/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
    <script src="../js/newRecipe.js"></script>
</head>
<body>

    <!--头部开始-->
    <div id="header"></div>
    <!--头部结束-->
    <!--内容开始-->
    <div id="all_content">
        <div class="content">
         11
        </div>
    </div>
    <!--内容结束-->
    <!--底部开始-->
    <footer id="footer" style="clear: both"></footer>
    <!--底部结束-->

  <%--  <% List< Course> list=(List<Course>)request.getAttribute("selectAllCourse"); %>
    <% for(int i=0;i<list.size();i++){
        Course course=list.get(i);%>
    <img src="..<%=course.getC_firstImage()%>;" alt="">

    <%}%>--%>

</body>
</html>
