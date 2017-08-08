<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>注册失败</title>
    <link rel="icon"  type="image/x-icon" href="../images/title_logo.ico">
</head>
<body>
    <p>注册失败</p>
    ${selectCourseName}
</body>
</html>
