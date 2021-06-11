<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name = "";
    if(session.getAttribute("username")==null){
        response.sendRedirect("login.jsp");
    }else{
        name = session.getAttribute("username").toString();
    }
%>
欢迎<%=name%>登陆

<a href="loginout.jsp">退出</a>
</body>
</html>
