<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Web课程作业 -注册界面</title>
    <link rel="stylesheet" type="text/css" href="css/login_base.css">
    <link rel="stylesheet" type="text/css" href="css/register.css">
</head>
<body>

    <div id="login_box">
        <img src="./image/exchange_left_rp.eb1ca88.png" alt="" class="img_1">
        <img src="./image/exchange_right.13c1492.png" alt="" class="img_2">
        <div class="login_contain">
            <img src="./image/logo_myrzx.png" alt="" class="img_3">
            <h1>欢迎注册</h1>
            <form action="RegisterSelect.jsp" method="post" id="form">
                <p>账号:&nbsp<input id="username" name="username" type="text"></p>
                <p>密码:&nbsp<input id="password" name="password" type="password"></p>
                <input value="注册" type="submit" id="reg_btn">
                <a href="login.jsp" class="link_login">已有账号?点击登录</a>
            </form>

        </div>
    </div>

    <script>
        if(document.getElementById("register_msg").innerText==="null"||document.getElementById("register_msg").innerText===""){
            document.getElementById("register_msg").setAttribute('style',"display:none")
  
        } else {
            document.getElementById("register_msg").setAttribute('style',"display:block")
        }
  </script>

</body>
</html>
