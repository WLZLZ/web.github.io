<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>判断登录界面</title>
</head>
<body>

<%!
     Map<String,String> map = new HashMap<String,String>();
     public boolean compare(String username,String password){
         String pwd = map.get(username);
         if(pwd!=null&&password.equals(pwd)){
             return true;
         }
         else{
             return false;
         }
     }
%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    //设置初始值
    map.put("20201234","123456");
    //注册后的值存入map集合
    if (session.getAttribute(username)!=null){
        map.put(username,session.getAttribute(username).toString());
    }

    System.out.println(map);
    //判断输入内容是否正确,给出提示信息
    if (username==null||username =="" || password==null || password==""){
        session.setAttribute("login_msg","用户名或密码为空");
        response.sendRedirect("login.jsp");
        return;
    }
    boolean compare = compare(username, password);
    if (compare){
        session.setAttribute("username",username);
        session.setAttribute("password",password);
        response.sendRedirect("login_index.jsp");
    }
    else {
        session.setAttribute("login_msg","用户名或密码错误或用户名不存在");
        response.sendRedirect("login.jsp");
    }
%>
</body>
</html>
