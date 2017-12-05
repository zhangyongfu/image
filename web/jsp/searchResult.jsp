<%@ page import="org.image.model.User" %>
<%@ page import="org.image.DAO.ShowSearchResult" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-11-10
  Time: 下午6:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />

    <%@include file="topmenu.jsp"%>

</head>
<body>

<%--

<div id="top_bg">
    <div class="top">
        <div class="logo_area">
            <a class="logo_l" href="/" title="返回首页">
                <img class="logo_img" src="../images/logo/logo-64.png">

            </a>
        </div>
        <form class="searchBar" action="SearchImgPage" method="get">
            <input class="searchImg" type="search" name="searchText" placeholder="搜索图片.."
                   onfocus="this.style.backgroundColor='gainsboro'"
                   onblur="this.style.backgroundColor='beige'">
            <input class="goSearch" type="submit" value="搜索">
        </form>


        <nav class="top_menu">
            <ul class="primary_menu">
                <li class="menu_item"><a href="/">首页</a></li>
                <li class="menu_item"><a style="color:white">图库</a>
                    <ul class="sub_menu">
                        <li class="sub_menu_item"> <a href="pubgallery.jsp" target="_blank" title="公共图库">公共图库</a></li>
                        <li class="sub_menu_item"> <a href="mygallery.jsp" target="_blank" title="私人图库">私人图库</a></li>
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
--%>


<div class="show_searched_img_list">
    <div class="searched_list">
        <div class="uploadDay">
            <ul>
                <li class="time_title">
                    <%--<%--%>
                    <%--Date today = new Date();--%>
                    <%--SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");--%>
                    <%--String dateString = formatter.format(today);--%>
                    <%--out.print(dateString);--%>
                    <%--%>--%>
                    最近一个月上传
                </li>
                <li class="more">
                    <a href="">

                        更多>>
                    </a>
                </li>
            </ul>
        </div>
        <div class="allImgs">
                <%

                    HttpSession resultSession = request.getSession();
                    List<String> result = (List<String>)resultSession.getAttribute("result");
                    String searchText = (String)resultSession.getAttribute("searchText");
//        request.setAttribute("test",searchText);

                    for(String path:result) {
                        String[] strings = path.split("/");
                        String p = strings[strings.length - 1];
                        request.setAttribute("ph", p);


                %>
                <div class="img">
                    <a target="_blank" href="#" title="${ph}">
                        <img id="allImages" src="http://localhost:8080/i/pub_img/${ph}" alt="Ballade" width="250" height="170px">
                    </a>
                    <div class="desc">
                        图${ph}
                    </div>
                </div>

                <%
                        request.removeAttribute("ph");
                    }
                %>
                <div class="searchPageTitle">
                    <p>
                        搜索"<%=searchText%>"的结果
                    </p>

                </div>
        </div>
    </div>
</div>


</body>
</html>
