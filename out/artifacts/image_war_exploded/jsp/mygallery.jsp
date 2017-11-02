<%@ page import="org.image.model.User" %><%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-11-2
  Time: 下午1:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link href="../css/gallerystyle.css" rel="stylesheet" type="text/css"/>

    <div id="top_bg">


        <a class="logo_l" href="/" title="返回首页"></a>
        <div class="nav_z">
            <ul id="navul" class="cl">
                <li id="start">
                    <a href="/" target="main">首页</a>
                </li>
                <li id="view">
                    <a href="#">图库</a>
                </li>
                <li id="about">
                    <a href="/jsp/about.jsp">关于</a>
                </li>
            </ul>
    </div>
    </div>
</head>
<body>


<%
    HttpSession httpSession = request.getSession();
    User user = (User)httpSession.getAttribute("userName");
    if(user != null){
        %>

<%--遍历用户个人的图库--%>
<p id="wel_show">
    亲爱的
    <a href="/jsp/userpage.jsp">
    <%
        out.print(user.getName());
    %>
    </a>
    ,欢迎你。
</p>



        <%
    }
    else{
        %>
<p id="calltologin">
    你好像还没有登录哦
    <a href="/jsp/login.jsp">返回登录</a>
</p>
<%
    }
%>

</body>
</html>
