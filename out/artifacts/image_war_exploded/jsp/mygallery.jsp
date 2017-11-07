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






<div class="list">
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/13.jpg" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片13</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/14.jpg" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片2</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/15.jpg" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片3</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/16.jpg" alt="Ballade" width="300" height="200px">
        </a>
        <div class="desc">图片4</div>
    </div>

    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/17.jpg" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片5</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/18.jpg" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片6</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/19.jpg" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片7</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/20.jpg" alt="Ballade" width="300" height="200px">
        </a>
        <div class="desc">图片8</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/21.jpg" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片9</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/22.jpg" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片10</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/23.jpg" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片11</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/24.jpg" alt="Ballade" width="300" height="200px">
        </a>
        <div class="desc">图片12</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/12.jpg" alt="Ballade" width="300" height="200px">
        </a>
        <div class="desc">图片13</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/23.jpg" alt="Ballade" width="300px" height="200px">
        </a>
        <div class="desc">图片11</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/24.jpg" alt="Ballade" width="300" height="200px">
        </a>
        <div class="desc">图片12</div>
    </div>
    <div class="img">
        <a target="_blank" href="#">
            <img src="../images/list/12.jpg" alt="Ballade" width="300" height="200px">
        </a>
        <div class="desc">图片13</div>
    </div>
</div>







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
