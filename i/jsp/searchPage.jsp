<%--
<%@ page import="org.image.model.User" %>&lt;%&ndash;
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-11-10
  Time: 下午5:56
  To change this template use File | Settings | File Templates.
&ndash;%&gt;
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1"  />
    <title>Meiticoo</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />

    <div id="top_bg">
        <div class="top">
            <a class="logo_l" href="/" title="返回首页"></a>

            &lt;%&ndash;<form class="searchBar" action="SearchImgPage" method="get">&ndash;%&gt;
                &lt;%&ndash;<input class="searchImg" type="search" name="searchText" placeholder="搜索图片.."&ndash;%&gt;
                       &lt;%&ndash;onfocus="this.style.backgroundColor='gainsboro'"&ndash;%&gt;
                       &lt;%&ndash;onblur="this.style.backgroundColor='beige'">&ndash;%&gt;
                &lt;%&ndash;<input class="goSearch" type="submit" value="搜索">&ndash;%&gt;
            &lt;%&ndash;</form>&ndash;%&gt;



            <nav class="top_menu">
                <ul class="primary_menu">
                    <li class="menu_item"><a href="/" style="color:white">首页</a></li>
                    <li class="menu_item"><a>图库</a>
                        <ul class="sub_menu">
                            <li class="sub_menu_item"> <a href="pubgallery.jsp" target="_blank">公共图库</a></li>
                            <li class="sub_menu_item"> <a href="mygallery.jsp" target="_blank">私人图库</a></li>
                            <li class="sub_menu_item"> <a href="mygallery.jsp" target="_blank">创建图库</a></li>
                        </ul>
                    </li>
                    <li class="menu_item"><a>关于</a>
                        <ul class="sub_menu">
                            <li class="sub_menu_item"> <a href="about.jsp" target="_blank">网站</a></li>
                            <li class="sub_menu_item"> <a href="about.jsp" target="_blank">团队</a></li>
                            <li class="sub_menu_item"> <a href="about.jsp" target="_blank">反馈</a></li>
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
                    <a class="show_user" href="../jsp/userpage.jsp" title="<%=user.getName()%>">
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

</head>
<body>

<div>
&lt;%&ndash;<div class="search_hint">&ndash;%&gt;
    &lt;%&ndash;搜索所有超过100万张图片&ndash;%&gt;
&lt;%&ndash;</div>&ndash;%&gt;

<form class="searchPageBar" action="/SearchImgPage" method="get">
    <input class="searchPageImg" type="search" name="searchText" placeholder="搜索图片..">
    <input class="searchPageGo" type="submit" value="搜索">
</form>
<%

    HttpSession text = request.getSession();
    String searchText = (String)text.getAttribute("searchText");
    out.print(searchText);


%>
</div>
</body>
</html>
--%>
