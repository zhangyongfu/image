<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-10-28
  Time: 下午5:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="topMenuHavenotSearchBar.jsp"%>


<html>
<head>

    <link rel="icon" href="../images/logo/logo-16.png" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/logo/logo-16.png" type="image/x-icon" />

    <title>登录</title>
    <link href="../css/loginandregister.css" rel="stylesheet" type="text/css" />
    <%--<link href="../css/style.css" rel="stylesheet" type="test/css" />--%>
    <%--<link href="../css/topMenuStyle.css" rel="stylesheet" type="text/css" />--%>


    <style type="text/css">

        .t{
            width:1200px;
            margin:0 auto;
        }
    </style>

</head>
<body>

<script type="text/javascript">
    function checkName() {
        var name = document.getElementById("name").value;
        if(name == null || name == "") return false;
        else return true;
    }
    function checkPasswd() {
        var passwd = document.getElementById("password").value;
        if(passwd == null || passwd == "") return false;
        else return true;
    }
    function checkLogin() {
        if(checkName() && checkPasswd()) return true;
        else return false;

    }

</script>

<div class="t">

<div class="gologin">
    <form id="loginform" action="/login" method="post" onsubmit="return checkLogin();">
        <h3>登录</h3>
        <input type="text" id="name" name="name" placeholder="用户名" style="margin:12px 0 12px 0px;">
        <a href="/">忘记用户名</a><br/>
        <span id="login_name" style="color:red;display: none;font-size: 13px;">
            请输入用户名
        </span>
        <input type="password" id="password" name="password" placeholder="密码" style="margin:12px 0 12px 0px;">
        <a href="/">忘记密码</a><br/>
        <span>还没有帐号？</span>
        <a href="goregister.jsp" >注册一个</a><br/>
        <input id="login" type="submit" value="登录"/>


    </form>
    <%--<a class="forgot_name" href="/">连用户名都忘了?</a>--%>

</div>
</div>
</body>
</html>