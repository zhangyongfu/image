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
    <link href="../css/gallerystyle.css" rel="stylesheet" type="text/css"/>


</head>
<body>


<div id="top_bg">


    <a class="logo_l" href="/" title="返回首页"></a>
    <form class="searchBar" action="/SearchImgPage" method="get">
        <input class="searchImg" type="search" name="searchText" placeholder="搜索图片.."
               onfocus="this.style.backgroundColor='gainsboro'"
               onblur="this.style.backgroundColor='beige'">
        <input class="goSearch" type="submit" value="搜索">
    </form>

        <nav class="top_menu">
            <ul class="primary_menu">
                <li class="menu_item"><a href="../">首页</a></li>
                <li class="menu_item"><a style="color:white">图库</a>
                    <ul class="sub_menu">
                        <li class="sub_menu_item"> <a href="../jsp/pubgallery.jsp" target="_blank">公共图库</a></li>
                        <li class="sub_menu_item"> <a href="../jsp/mygallery.jsp" target="_blank">私人图库</a></li>
                        <li class="sub_menu_item"> <a href="../jsp/mygallery.jsp" target="_blank">创建图库</a></li>
                    </ul>
                </li>
                <li class="menu_item"><a>关于</a>
                    <ul class="sub_menu">
                        <li class="sub_menu_item"> <a href="../jsp/about.jsp" target="_blank">网站</a></li>
                        <li class="sub_menu_item"> <a href="../jsp/about.jsp" target="_blank">团队</a></li>
                        <li class="sub_menu_item"> <a href="../jsp/about.jsp" target="_blank">反馈</a></li>
                    </ul>
                </li>
            </ul>
        </nav>

<%--        <%
            HttpSession httpSession = request.getSession();
            User user = (User)httpSession.getAttribute("userName");
            if(user != null){       //为了测试，先将此行注释
        %>

        &lt;%&ndash;遍历用户个人的图库&ndash;%&gt;
        <p id="wel_show">
            亲爱的
            <a href="/jsp/userpage.jsp">
                <%
                    out.print(user.getName());
//                    out.print(request.getServletContext().getRealPath("/"));
                %>
            </a>
            ,欢迎你。
        </p>--%>

</div>



<div class="mygallerylist">
    <%

        HttpSession resultSession = request.getSession();
        List<String> result = (List<String>)resultSession.getAttribute("result");
        String SearchText = (String)resultSession.getAttribute("searchText");
        request.setAttribute("test",SearchText);

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
            搜索"${text}"的结果
        </p>

    </div>

</div>





<%--<%
    }
    else{
%>--%>
<%--<p id="calltologin">--%>
    <%--你好像还没有登录哦--%>
    <%--<a href="/jsp/login.jsp">返回登录</a>--%>
<%--</p>--%>
<%--
<%
    }
%>
--%>

</body>
</html>
