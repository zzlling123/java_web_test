<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if("zhangsan".equals(username)&&"123".equals(password)){
            session.setAttribute("username",username);
            //session.setMaxInactiveInterval(10);
            //request.getRequestDispatcher("index.jsp").forward(request,response);
            Cookie cookie = new Cookie("name",username);
            cookie.setMaxAge(6*30*24*60*60);
            Cookie cookie_pwd = new Cookie("pwd",password);
            cookie_pwd.setMaxAge(6*30*24*60*60);
            response.addCookie(cookie);
            response.addCookie(cookie_pwd);
            response.sendRedirect("index.jsp");
        }else{
            response.sendRedirect("login.jsp");
        }

    %>
</body>
</html>
