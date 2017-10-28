<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-10-28
  Time: 下午5:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link href="/css/loginandregister.css" rel="stylesheet" type="text/css" />

</head>
<body>
<span id="title">IMAGE VIEWER</span>
<div class="goregister">
    <form id="loginform" action="/" method="post">
        <input type="text" id="name" name="name" placeholder="name"/><br/>
        <input type="password" id="password" name="password" placeholder="password"/>
        <a href="/">忘记密码</a><br/>
        <span>还没有帐号？</span>
        <a href="goregister.jsp" >注册一个</a><br/>
        <input id="login" type="submit" value="登录"/>
    </form>
</div>
</body>
</html>