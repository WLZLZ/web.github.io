<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    session.setAttribute("register_msg","null");

    if (username==null||username =="" || password==null || password==""){
        session.setAttribute("register_msg","用户名或密码为空");
        response.sendRedirect("register.jsp");
        return;
    }
    else {
        session.setAttribute(username,password);
        response.sendRedirect("login.jsp");
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
