<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>用java在页面输出相应的信息,out对象（jsp的内置对象）！！</h1>
    <% out.print("<h1>123213213</h1>"); %>
    <% out.print(123+"<br/>"); %>
    <%String name="zhangsan";%>
    <%int age=18;%>
    <%String address="河北省";%>
    <%=name+"先生"%>
    <%=age+10%>
    <%
        Date date = new Date();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
        String date_str = sdf.format(date);
    %>
    <%=date_str%>

</body>
</html>
