<%@ page import="org.image.DAO.DatabaseConnection" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.image.model.User" %><%--
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
    <form id="registerform" action="/register" method="post">
        <h2>IMAGE VIEWER</h2>
        <%--邮箱：--%>
        <input type="text" id="email" name="email" placeholder="email"/><br/>
        <%--姓名：--%>
        <input type="text" id="name" name="name" placeholder="name"/><br/>
        <%--密码：--%>
        <input type="password" id="password" name="password" placeholder="password"/><br/>
        <input id="register" type="submit" value="注册"/><br/>
        <span id="cannotlogin"><a href="help.jsp">无法注册？</a> </span>
    </form>
</div>


</body>
</html>
