<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
</head>
<body>
    <%
        Object count = application.getAttribute("count");
        if(count==null){
            int count_num = 0;
            application.setAttribute("count",count_num);
        }
        application.setAttribute("count", Integer.parseInt(application.getAttribute("count").toString())+1);



    %>
    <h1>当前访问量是:<%=application.getAttribute("count")%></h1>
    <div>
        用户注册 <br/>
        <form action="regiest_rec.jsp" method="get">
            <div>
                用户姓名：<input type="text" name="name">
            </div>
            <div>
                密码：<input type="password" name="password">
            </div>
            <div>
                确认密码：<input type="password" name="password1" >
            </div>
            <div>
                email：<input type="text" name="email">
            </div>
            <div>
                <input type="checkbox"  name="mailId"  value="10001" />10001
                <input type="checkbox"  name="mailId"  value="10002" />10002
                <input type="checkbox"  name="mailId"  value="10003" />10003
                <input type="checkbox"  name="mailId"  value="10004" />10004
                <input type="checkbox"  name="mailId"  value="10005" />10005
            </div>
            <div>
                <input type="submit" value="注册">
                <input type="button" value="取消">
            </div>
        </form>
    </div>
</body>
</html>
