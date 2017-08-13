<%@ page import="java.util.List" %>
<%@ page import="entities.Course" %>
<%@ page import="entities.CoursePaging" %>
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
    <link rel="stylesheet" href="../css/menuClassifiesAndPage.css">
    <script src="../resource/jquery-3.2.0.js"></script>
    <script src="../resource/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
    <script src="../js/newRecipe.js"></script>
    <script src="../js/menuClassifiesAndPage.js"></script>
</head>
<body>
    <%
        CoursePaging coursePage=(CoursePaging)request.getAttribute("selectCoursePaging");
        int pageNumber = coursePage.getPageNumber();
        List<Course> courses = coursePage.getCourses();
        int currentPage = coursePage.getCurrentPage();
    %>
    <!--头部开始-->
    <div id="header"></div>
    <!--头部结束-->
    <!--内容开始-->
    <div id="all_content">
        <h4 class="h4"><%=courses.get(0).getC_type()%></h4>
        <div class="content">
            <% for(int i=0;i<courses.size();i++){
                Course course=courses.get(i);
            %>
            <ul class="new_recipes_list">
                <li><a href="">
                    <img src="<%=course.getC_firstImage()%>" height="170" width="215"/>
                    <p><%=course.getC_name()%></p></a>
                </li>
            </ul>
            <%}%>
        </div>
        <ul class="pagination pagination-md">
            <li>
                <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
            <%for(int i=1;i<=pageNumber;i++){%>

            <li class="page">
                <a href="selectAllCourseAndPage?c_type=<%=courses.get(0).getC_type()%>&pageNumber=<%=i%>">
                    <% if(currentPage==i){ %>
                            <span class="current"><%=i%></span></a>
                       <% }else{%>
                            <span ><%=i%></span></a>
                    <%}%>

            </li>
            <%}%>

            <li>
                <a href="" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
        </ul>
    </div>
    <!--内容结束-->
    <!--底部开始-->
    <footer id="footer" style="clear: both"></footer>
    <!--底部结束-->
</body>
</html>
