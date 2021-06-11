<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆页面</title>
    <script src="js/jquery-3.6.0.js"></script>
</head>
<script>
    $(function () {
        var username = $("#username").val();
        var password = $("#password").val();
        if(username!=null&&username!=""
            &&password!=null&&password!=null
            ){
            $("#login_form").submit();
        }
    });
</script>
<body>
    <form id="login_form" action="login_rec.jsp">
    <div>
        <%
            String name = "";
            String pwd = "";
            /*Object obj_name = session.getAttribute("name");

            if(obj_name!=null){
                name = session.getAttribute("name").toString();
            }*/
            Cookie[] cookies = request.getCookies();
            if(cookies!=null&&cookies.length>0){
                for (Cookie cookie:cookies) {
                    if("name".equals(cookie.getName())){
                        name = cookie.getValue();
                    }
                    if("pwd".equals(cookie.getName())){
                        pwd = cookie.getValue();
                    }
                }
            }


        %>
        用户姓名：<input type="text" id="username" name="username" value="<%=name%>">
    </div>
    <div>
        密码：<input type="password" id="password" name="password" value="<%=pwd%>">
    </div>

    <div>
        <input type="submit" value="登陆">
        <input type="button" value="取消">
    </div>
</form>
</body>
</html>
