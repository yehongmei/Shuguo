<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>用户退出</title>
</head>
<body>
    <% session.invalidate(); %>
    <jsp:forward page="login.jsp"></jsp:forward>
</body>
</html>
