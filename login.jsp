<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Web课程作业 -登录界面</title>
    <link rel="stylesheet" type="text/css" href="css/login_base.css">
    <link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>

    <div id="login_box">
        <img src="./image/exchange_left_rp.eb1ca88.png" alt="" class="img_1">
        <img src="./image/exchange_right.13c1492.png" alt="" class="img_2">
        <div class="login_contain">
            <img src="./image/logo_myrzx.png" alt="" class="img_3">
            <h1>欢迎登录</h1>
            <form action="LoginSelect.jsp" method="post" id="form">
                <p>账号:&nbsp<input id="username" name="username" type="text"></p>
                <p>密码:&nbsp<input id="password" name="password" type="password"></p>
                <input type="submit" class="button" value="登录" onclick="">
                <a href="register.jsp" class="link_register">注册</a>
            </form>
            <div id="errorMsg" style="display: none;"><%=session.getAttribute("login_msg")%></div>
        </div>
    </div>

    <script>
        if(document.getElementById("errorMsg").innerText==="null"||document.getElementById("errorMsg").innerText===""){
            document.getElementById("errorMsg").setAttribute('style',"display:none")
    
        } else {
            document.getElementById("errorMsg").setAttribute('style',"display:block")
        }
    </script>

    <%  
        String loginMsg = (String) session.getAttribute("login_msg");  
        if (loginMsg != null) {  
            out.println("<p class='error'>" + loginMsg + "</p>");  
            // 移除 session 中的登录消息，以便下次刷新时不显示  
            session.removeAttribute("login_msg");  
        }
    %>  
</body>
</html>
