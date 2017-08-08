<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>蔬果底部</title>
    <link rel="icon"  type="image/x-icon" href="../images/title_logo.ico">
</head>
<body>
    <p>关于蔬果 · 意见反馈 · 友情链接 · 菜谱大全· 厨房连连看· 可爱宝贝爱厨房· 厨房清理</p>
    <p> ©2016-2017 重庆蔬果信息技术有限公司 京ICP证111032号 京公网安备11010102001133号 京网文[2014]0774-174号 食品流通许可证SP1101061510252413</p>
</body>
</html>
