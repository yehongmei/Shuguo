<%@ page import="java.util.List" %>
<%@ page import="entities.Course" %>
<%@ page import="entities.FuzzySearch" %>
<%@ page import="entities.Condition" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>模糊搜索</title>
    <link rel="stylesheet" href="../css/fuzzySearch.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="resource/bootstrap-3.3.7/dist/css/bootstrap.css">
    <script src="resource/jquery-3.2.0.js"></script>
    <script src="resource/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
    <script src="../js/fuzzySearch.js"></script>
</head>
<body>
  <%
        /*将文本框输入的数据获取出来*/
      Condition fuzzySearch=(Condition) session.getAttribute("fuzzySearchCourse");
        FuzzySearch fuzzySearchCourse=(FuzzySearch)request.getAttribute("fuzzySearchName");
        /*根据条件查询的菜*/
        List<Course> courses=fuzzySearchCourse.getCourses();
        /*根据条件查询总页数*/
        int pageNumber=fuzzySearchCourse.getTotalPageNumber();
        /* 当前页*/
        int currentPage =fuzzySearchCourse.getCurrentPage();
        /*模糊查询菜的数量*/
        int fuzzySearchCount=fuzzySearchCourse.getFuzzySearchCount();
  %>
    <!--头部开始-->
    <div id="header"></div>
    <!--头部结束-->
    <div id="all_content">
        <div class="content_top"><span class="glyphicon  glyphicon-home"></span>&nbsp;&nbsp;首页 > 搜索的结果</div>
        <div class="content">
            <div class="content_left">
                <div class="content_left_top">
                    <form  action="/fuzzySearch" method="post">
                    <input type="text" name="c_name" class="form-control search" placeholder="想吃啥就搜啥">
                    <input type="hidden" name="selectPageNumber" value="1" >
                    <button  type="submit" class="btn btn-success button"><sapn class="glyphicon glyphicon-search"></sapn></button>
                    </form >
                    <p><%=fuzzySearch.getC_name()%>&nbsp;&nbsp;<span>约<%=fuzzySearchCount%> 条结果</span></p>
                </div>
                <hr>
             <%
                    for(int i=0;i<courses.size();i++){
                    Course course=courses.get(i);
                %>
                <ul class="content_left_content">
                   <li><a href="#"><img src="<%=course.getC_firstImage()%>" alt=""><span><%=course.getC_name()%></span></a>
                      <div> 分类:<a href="">美食专题 <%=course.getC_type()%></a></div>
                   </li>
                </ul>
              <%}%>

            </div>
            <div class="content_right">
                1
            </div>
        </div>
        <ul class="pagination pagination-md page">
            <li><a href="">&laquo;</a></li>
            <%for(int i=1;i<=pageNumber;i++){%>
            <li>
                <a href="fuzzySearch?c_name=<%=fuzzySearch.getC_name()%>&selectPageNumber=<%=i%>">
                    <% if(currentPage==i){ %>
                    <span class="current"><%=i%></span></a>
                <% }else{%>
                <span ><%=i%></span></a>
                <%}%>

            </li>
            <%}%>

            <li ><a href="">&raquo;</a></li>
        </ul>
    </div>
    <div id="footer" style="clear: both"></div>
    <!--底部结束-->
</body>
</html>
