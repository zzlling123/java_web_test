<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <%--
        request jsp的内置对象 代表请求对象
        response jsp的内置对象 代表相应对象

    --%>
    <%
        request.setAttribute("className","java26");
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String password1 = request.getParameter("password1");
        String email = request.getParameter("email");
        String[] mailIds = request.getParameterValues("mailId");

        String className = request.getAttribute("className").toString();

    %>
    <%="姓名："+name%>
    <%
        out.print("密码："+password);
        out.print("确认密码："+password1);
        out.print("邮箱："+email);
        for (String mailId:mailIds) {
            out.print("邮箱id:"+mailId);
        }
        out.print("<br/>");
        out.print(className);

    %>


    <%  //重定向 不会携带request和response的对象的
        //response.sendRedirect("success.jsp");

        //转发
        request.getRequestDispatcher("success.jsp").forward(request,response);
        //request.getRequestDispatcher("http://www.baidu.com").forward(request,response);

        //转发地址不会发生变化，重定向是会发生变化
    %>


</body>
</html>
