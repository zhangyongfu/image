<%@ page import="org.image.model.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.image.DAO.DatabaseConnection" %>
<%@ page import="org.image.DAO.ImageUserDaoImpl" %><%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-10-28
  Time: 下午7:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>关于</title>


    <link href="../css/style.css" rel="stylesheet" type="text/css" />

    <div id="top_bg">
        <div class="top">
            <a class="logo_l" href="/" title="返回首页"></a>
            <div class="nav_z">
                <ul id="navul" class="cl">
                    <li id="start">
                        <a href="/" target="main">首页</a>
                    </li>
                    <li id="view">
                        <a href="#">浏览</a>
                    </li>
                    <li id="about">
                        <a href="/jsp/about.jsp">关于</a>
                    </li>
                </ul>
            </div>
            <ul>
                <li id="top_login">
                    <a id="login" href="/jsp/login.jsp">登录</a>
                    |
                    <a id="register" href="/jsp/goregister.jsp">注册</a>
                </li>
            </ul>
        </div>
    </div>

</head>
<body>
<h2>关于我们</h2>
<p>

    关于我们关于我们关于我们关于我们关于我们
    关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关<br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于
    关于我们关于我们关于我们关于我们关于我<br/>
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关
    于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关我<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    们关于我们关于我们关于我们<br/>关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于
    我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们    关于我们关于我们关于我们关于我们关于我们
    关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关<br/>
    于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们    关于我们关于我们关于我们关于我们关于我们
    关于我们关于我们关于我们关于我们关于我<br/>
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关
    于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们关于
    我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
    们关于我们关于我们关于我们关于我们    关于我们关于我们关于我们关于我们关于我们

</p>

<%
    DatabaseConnection databaseConnection = new DatabaseConnection();
    ImageUserDaoImpl imageUserDao = new ImageUserDaoImpl();
    String email = request.getParameter("email");
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    User user = new User(email,name,password);
    imageUserDao.addImageUser(user);
%>

<%--<tr>
    <td><%=u.getEmail() %></td>
    <td><%=u.getName() %></td>
    <td><%=u.getPassword() %></td>
</tr>--%>
<%--<%
    }
%>--%>
</body>
</html>
