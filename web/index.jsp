<%@ page import="entities.User" %>
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
    <title>蔬果美食_开启美味生活_中文美食菜谱分享网站，提供优质的家常菜谱大全、餐厅餐馆与美食网购信息</title>
    <meta name="keywords" content="美食,菜谱,食谱">
    <meta name="description" content="丰富的菜谱大全让您轻松地学会怎么做美食，展现自己的高超厨艺，与会员一同分享美味的人生！">
    <link rel="icon"  type="image/x-icon" href="images/title_logo.ico">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="resource/bootstrap-3.3.7/dist/css/bootstrap.css">
    <script src="resource/jquery-3.2.0.js"></script>
    <script src="resource/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
    <script src="js/index.js"></script>
</head>
<body>
   <%
       List<Course> courses=(List<Course>) session.getAttribute("indexNewCateName");
       List<Course> choiceCourses=(List<Course>) session.getAttribute("selectIndexchoiceCourseName");
    %>
    <!--头部开始-->
    <div id="header"></div>
    <!--头部结束-->
    <!--中部开始-->
    <div id="all_content">
        <div class="content">
            <div class="carousel_part">
                <!--轮播开始-->
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="images/carousel1.jpg" alt="第一张">
                        </div>
                        <div class="item">
                            <img src="images/carousel2.jpg" alt="第二张">
                        </div>
                        <div class="item">
                            <img src="images/carousel3.jpg" alt="第三张">
                        </div>
                    </div>
                </div>
                <!--轮播结束-->
            </div>
            <div class="hot_recommendation">
                <h3>热点推荐</h3>
                <ul class="list">
                    <li><a href="#">早餐</a></li>
                    <li><a href="#">热菜</a></li>
                    <li><a href="#">小吃</a></li>
                    <li><a href="#">面食</a></li>
                    <li><a href="#">凉菜</a></li>
                </ul>
                <form action="">
                    <table class="tab">
                        <tr>
                            <td>豆浆</td>
                            <td>包子</td>
                            <td>油条</td>
                        </tr>
                        <tr>
                            <td>红烧鲫鱼</td>
                            <td>麻婆豆腐</td>
                            <td>鱼香肉丝</td>
                        </tr>
                        <tr>
                            <td>鸡蛋灌饼</td>
                            <td>葱油饼</td>
                            <td>肉夹馍</td>
                        </tr>
                        <tr>
                            <td>面条</td>
                            <td>馒头</td>
                            <td>炒饭</td>
                        </tr>
                        <tr>
                            <td>皮蛋豆腐</td>
                            <td>口水鸡</td>
                            <td>夫妻肺片</td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="new_recipes">
                <h4 class="new_recipes_font">新秀菜谱</h4>
                <% for(int i=0;i<courses.size();i++){
                    Course course=courses.get(i);
                %>
                <ul class="new_recipes_list">
                    <li><a href="selectCourse?c_id=<%=course.getC_id()%>"><img src="<%=course.getC_firstImage()%>" height="150" width="190"/><p><%=course.getC_name()%></p></a></li>
                </ul>
               <%}%>
            </div>
            <div class="hot_menu">
                <h4 class="hot_menu_font">热门菜谱</h4>
                <ul>
                    <li><a href="#"><img src="images/hot_menu_images.png" height="14" width="8"/>糖醋排骨</a></li>
                    <li><a href="#"><img src="images/hot_menu_images.png" height="14" width="8"/>红烧排骨</a></li>
                    <li><a href="#"><img src="images/hot_menu_images.png" height="14" width="8"/>蚂蚁上树</a></li>
                    <li><a href=""><img src="images/hot_menu_images.png" height="14" width="8"/>鱼香肉丝</a></li>
                    <li><a href=""><img src="images/hot_menu_images.png" height="14" width="8"/>京酱肉丝</a></li>
                    <li><a href=""><img src="images/hot_menu_images.png" height="14" width="8"/>京酱肉丝</a></li>
                    <li><a href=""><img src="images/hot_menu_images.png" height="14" width="8"/>京酱肉丝</a></li>
                    <li><a href=""><img src="images/hot_menu_images.png" height="14" width="8"/>京酱肉丝</a></li>
                    <li><a href=""><img src="images/hot_menu_images.png" height="14" width="8"/>红烧排骨</a></li>
                    <li><a href=""><img src="images/hot_menu_images.png" height="14" width="8"/>红烧排骨</a></li>
                    <li><a href=""><img src="images/hot_menu_images.png" height="14" width="8"/>京酱肉丝</a></li>
                    <li><a href=""><img src="images/hot_menu_images.png" height="14" width="8"/>红烧排骨</a></li>
                    <li><a href=""><img src="images/hot_menu_images.png" height="14" width="8"/>红烧排骨</a></li>
                    <li><a href=""><img src="images/hot_menu_images.png" height="14" width="8"/>京酱肉丝</a></li>
                    <li><a href=""><img src="images/hot_menu_images.png" height="14" width="8"/>红烧排骨</a></li>
                    <li><a href=""><img src="images/hot_menu_images.png" height="14" width="8"/>红烧排骨</a></li>
                    <li><a href=""><img src="images/hot_menu_images.png" height="14" width="8"/>京酱肉丝</a></li>
                    <li><a href=""><img src="images/hot_menu_images.png" height="14" width="8"/>红烧排骨</a></li>
                </ul>
            </div>
            <div class="choice_recipes">
                <h4 class="choice_recipes_font">精选菜谱</h4>
                <%
                    for(int i=0;i<choiceCourses.size();i++){
                        Course choiceCourse=choiceCourses.get(i);
                %>
                <ul class="choice_recipes_list">
                    <li><a href="selectCourse?c_id=<%=choiceCourse.getC_id()%>"><img src="<%=choiceCourse.getC_firstImage()%>" height="190" width="240"/><p><%=choiceCourse.getC_name()%></p></a></li>
                </ul>
                <%}%>
            </div>
        </div>
    </div>
    <!--中部结束-->
    <!--底部开始-->
    <div id="footer" style="clear: both"></div>
    <!--底部结束-->
</body>
</html>
