<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Web课程作业 -登录成功</title>
    <link rel="stylesheet" type="text/css" href="css/login_base.css">
    <link rel="stylesheet" type="text/css" href="css/login_index.css">
</head>
<body>
    <div id="login_box">
        <img src="./image/exchange_left_rp.eb1ca88.png" alt="" class="img_1">
        <img src="./image/exchange_right.13c1492.png" alt="" class="img_2">
        <div class="login_contain">
            <img src="./image/logo_myrzx.png" alt="" class="img_3">
            <h1>登录成功</h1>
            <h1><%=session.getAttribute("username")%> 欢迎您!</h1>
            <a href="login.jsp" class="exit_login">退出登录</a>
        </div>
    </div>
</body>
</html>
