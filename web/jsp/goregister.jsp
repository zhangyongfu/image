<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-10-28
  Time: 下午4:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <link href="/css/loginandregister.css" rel="stylesheet" type="text/css" />

</head>
<body>
<div class="goregister">
    <form id="registerform" action="/jsp/registersuccess.jsp" method="post">
        <h2>IMAGE VIEWER</h2>
        <input type="text" id="email" name="email" placeholder="email"/><br/>
        <input type="text" id="name" name="name" placeholder="name"/><br/>
        <input type="password" id="password" name="password" placeholder="password"/><br/>
        <input id="register" type="submit" value="注册"/>
    </form>
</div>
</body>
</html>
