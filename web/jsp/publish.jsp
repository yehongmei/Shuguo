<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>发布菜</title>
    <link rel="stylesheet" href="../resource/froala_editor_2.6.4/css/themes/gray.css">
    <link rel="stylesheet" href="../resource/froala_editor/codemirror.min.css">
    <link rel="stylesheet" href="../resource/froala_editor/font-awesome.min.css">
    <link rel="stylesheet" href="../resource/froala_editor/froala_editor.pkgd.min.css">
    <link rel="stylesheet" href="../resource/froala_editor/froala_style.min.css">
    <link rel="icon"  type="image/x-icon" href="../images/title_logo.ico">
    <link rel="stylesheet" href="../css/publish.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../resource/bootstrap-3.3.7/dist/css/bootstrap.css">
    <script src="../resource/jquery-3.2.0.js"></script>
    <script src="../resource/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
    <script src="../js/publish.js"></script>
    <script src="../resource/froala_editor/codemirror.min.js"></script>
    <script src="../resource/froala_editor/froala_editor.pkgd.min.js"></script>
    <script src="../resource/froala_editor/xml.min.js"></script>
    <script src="../resource/froala_editor_2.6.4/js/languages/zh_cn.js"></script>
</head>
<body>
    <!--头部开始-->
    <div id="header"></div>
    <!--头部结束-->
    <!--内容开始-->
    <div id="all_content">
        <div class="content_top">
            <h3>创建菜谱<span>从现在起，不做孤独的美食家</span></h3>
        </div>
        <div class="content">
                <div class="menu_name">
                    <input type="text" class="form-control" name="c_name" id="c_name" placeholder="菜谱名称">
                </div>
                <select id="c_type" name="c_type" class="form-control" >
                    <option value="家常菜谱">家常菜谱</option>
                    <option value="特色面食">特色面食</option>
                    <option value="八大菜系">八大菜系</option>
                    <option value="四季食谱">四季食谱</option>
                </select>
                <div class="froala_editor">
                    <textarea  id="c_operation" name="c_operation"></textarea>
                </div>
        </div>
        <button type="submit" id="publish" class="btn btn-success publish">发布</button>
    </div>
    <!--内容结束-->
    <!--底部开始-->
    <footer id="footer"></footer>
    <!--底部结束-->
</body>
</html>
