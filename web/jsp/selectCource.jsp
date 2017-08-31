<%@ page import="entities.Course" %>
<%@ page import="java.util.List" %>
<%@ page import="entities.Comment" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>查询菜</title>
    <link rel="icon"  type="image/x-icon" href="../images/title_logo.ico">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/selectCource.css">
    <link rel="stylesheet" href="../resource/bootstrap-3.3.7/dist/css/bootstrap.css">
    <script src="../resource/jquery-3.2.0.js"></script>
    <script src="../resource/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
    <script src="../js/selectCource.js"></script>
</head>
<body>
    <%
        Course course=(Course)request.getAttribute("selectCourseAndComment");
        List<Comment> comments=course.getComments();
    %>
    <input id="c_id" type="hidden" value="<%=course.getC_id()%>">
<!--头部开始-->
<div id="header"></div>
<!--头部结束-->
<!--内容开始-->
<div id="all_content">
    <div class="content">
        <div class="content_left">
            <div class="content_left_top">
                <h3><%=course.getC_name()%></h3>
                <p><a href="../index.jsp">蔬果美食</a>&nbsp;&nbsp;&nbsp;<%=course.getC_date().substring(0,course.getC_date().length()-2)%>&nbsp;&nbsp;&nbsp;编辑:<%=course.getUser().getUsername()%></p>
            </div>
            <div class="middle_part"><%=course.getC_operation()%></div>
            <div class="praise">
                <a class="btn glyphicon glyphicon-thumbs-up"></a><span id="praise"><%=course.getC_praise()%></span>
            </div>
            <textarea  class="textarea" placeholder="忍不住想说两句"></textarea><input type="button" class="btn btn-success comment" value="评论">
            <div class="comment-title">评论</div>
            <div class="all-discussion">
                <%for(int i=0;i<comments.size();i++){
                    Comment comment=comments.get(i);%>

                <div class="user_info">
                    <div class="user">
                        <span class="u_name"><%=comment.getU_reviewer()%></span>
                        <span class="time"><%=comment.getComment_date().substring(0,comment.getComment_date().length()-2)%></span>
                    </div>
                    <div class="content"><%=comment.getComment_content()%></div>
                </div>
                <% }%>
            </div>

        </div>
        <div class="content_right">
            <h4>美食推荐</h4>
            <ul class="list-right-recipe">
                <li><img src="../images/small1.jpg" alt="" style="margin-left: 50px"></li>
            </ul>
        </div>
    </div>
</div>
<!--内容结束-->
<!--底部开始-->
<footer id="footer" style="clear: both"></footer>
<!--底部结束-->
</body>
</html>
