<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册结果</title>
</head>
<body>
注册成功了！！！<br/>
稍等5秒钟，自动跳转到登陆页面........
</body>
<%
    //out.print(123);
    //Thread.sleep(5000);
    String name = request.getParameter("name");
    session.setAttribute("name",name);
    response.sendRedirect("login.jsp");


%>
</html>
