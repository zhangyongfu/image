<%@ page import="org.image.model.User" %><%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-11-10
  Time: 下午5:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1"  />
    <title>Image</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />

    <div id="top_bg">
        <div class="top">
            <a class="logo_l" href="/" title="返回首页"></a>

            <div class="nav_z">
                <ul id="navul" class="cl">
                    <li id="start">
                        <a href="/" target="main" title="首页">首页</a>
                    </li>
                    <li id="view">
                        <a href="/jsp/mygallery.jsp" title="我的图库">图库</a>
                        <%--<a href="/jsp/test.jsp" title="我的图库">图库</a>--%>
                    </li>
                    <li id="about">
                        <a href="/jsp/about.jsp" title="关于我们">关于</a>
                    </li>
                </ul>
            </div>
            <%
                HttpSession httpSession = request.getSession();
                User user = (User)httpSession.getAttribute("userName");
                if(user != null){
            %>
            <ul id="">
                <li id="top_login_success">
                    <a class="show_user" href="/jsp/userpage.jsp" title="<%=user.getName()%>">
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
                    <a id="login" href="/jsp/login.jsp">登录</a>
                    |
                    <a id="register" href="/jsp/goregister.jsp">注册</a>
                </li>
            </ul>
            <%
                }
            %>
            <div>

            </div>

        </div>
    </div>

</head>
<body>



<form class="searchPageBar" action="/SearchImgPage" method="get">
    <input class="searchPageImg" type="search" name="searchText" placeholder="搜索图片..">
    <input class="searchPageGo" type="submit" value="搜索">
</form>
<%

    HttpSession text = request.getSession();
    String searchText = (String)text.getAttribute("searchText");
    out.print(searchText);


%>

</body>
</html>
