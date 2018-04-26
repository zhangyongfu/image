<%@ page import="org.image.model.User" %><%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-12-1
  Time: 下午4:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link href="../css/topMenuStyle.css" rel="stylesheet" type="text/css" />
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="top_bg">
    <div class="top">
        <div class="logo_area">
            <a class="logo_l" href="/" title="返回首页">
                <img class="logo_img" src="../images/logo/logo-64.png">

            </a>
        </div>
        <div class="search_menu">
            <form class="searchBar" action="SearchImgPage" method="get">
                <input class="searchImg" type="search" name="searchText" placeholder="搜索图片.."
                       onfocus="this.style.backgroundColor='gainsboro'"
                       onblur="this.style.backgroundColor='beige'">
                <input class="goSearch" type="submit" value="搜索">
            </form>
        </div>


        <nav class="top_menu">
            <ul class="primary_menu">
                <li class="menu_item"><a href="/" style="color:white">首页</a></li>
                <li class="menu_item"><a>图库</a>
                    <ul class="sub_menu">
                        <li class="sub_menu_item"> <a href="../jsp/pubgallery.jsp" title="公共图库">公共图库</a></li>
                        <%--<li class="sub_menu_item"> <a href="/jsp/test.jsp" target="_blank">公共图库</a></li>--%>
                        <li class="sub_menu_item"> <a href="../jsp/mygallery.jsp" title="私人图库">私人图库</a></li>
                        <li class="sub_menu_item"> <a href="../jsp/mygallery.jsp">创建图库</a></li>
                    </ul>
                </li>
                <li class="menu_item"><a>关于</a>
                    <ul class="sub_menu">
                        <li class="sub_menu_item"> <a href="../jsp/webBuild.jsp">网站</a></li>
                        <li class="sub_menu_item"> <a href="../jsp/about.jsp">团队</a></li>
                        <li class="sub_menu_item"> <a href="../jsp/about.jsp">反馈</a></li>
                        <li class="sub_menu_item"> <a href="../jsp/about.jsp">联系我们</a></li>
                    </ul>
                </li>
            </ul>
        </nav>

        <%
            HttpSession httpSession = request.getSession();
            User user = (User)httpSession.getAttribute("userName");
            if(user != null){
        %>
        <ul id="">
            <li id="top_login_success">
                <a class="show_user" href="/userinformation" title="<%=user.getName()%>">
                    <%
                        out.print(user.getName());
                    %>
                </a>
            </li>
            <form id="loginout" action="/loginout" method="post">
                <input type="submit" title="注销" value="注销">

            </form>
        </ul>
        <%
        }
        else{
        %>
        <ul>
            <li id="top_login">
                <a id="login" href="../jsp/login.jsp">登录</a>
                |
                <a id="register" href="../jsp/goregister.jsp">注册</a>
            </li>
        </ul>
        <%
            }
        %>
        <div>

        </div>

    </div>
</div>
</body>
</html>
