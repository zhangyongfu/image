<%@ page import="org.image.model.User" %>
<%@ page import="org.image.DAO.UploadPriImageDaoImpl" %>
<%@ page import="java.util.List" %><%--
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


</head>
<body>


<div id="top_bg">


    <a class="logo_l" href="/" title="返回首页"></a>
    <form class="searchBar">
        <input class="searchImg" type="search"  placeholder="搜索图片.."
               onfocus="this.style.backgroundColor='gainsboro'"
               onblur="this.style.backgroundColor='beige'">
        <input class="goSearch" type="submit" value="搜索">
    </form>


    <div class="nav_z">
        <ul id="navul" class="cl">
            <li id="start">
                <a href="/" target="main" title="首页">首页</a>
            </li>
            <li id="view">
                <a href="/jsp/mygallery.jsp" title="我的图库">图库</a>
            </li>
            <li id="about">
                <a href="/jsp/about.jsp" title="关于我们">关于</a>
            </li>
        </ul>



        <%
            HttpSession httpSession = request.getSession();
            User user = (User)httpSession.getAttribute("userName");
            if(user != null){       //为了测试，先将此行注释
        %>

        <%--遍历用户个人的图库--%>
        <p id="wel_show">
            亲爱的
            <a href="/jsp/userpage.jsp">
                <%
                    out.print(user.getName());
//                    out.print(request.getServletContext().getRealPath("/"));
                %>
            </a>
            ,欢迎你。
        </p>
    </div>
</div>



<div class="funclist">
    <ul>
        <li id="upload">
            <a href="/jsp/uploadImages.jsp" title="上传图片">上传图片</a>
            <%--<a href="/jsp/test.jsp" title="上传图片">上传图片</a>--%>
        </li>
        <li id="sort">
            <a href="/jsp/sortImages.jsp" title="排序图片">排序图片</a>
        </li>
        <li id="share">
            <a href="/jsp/shareImages.jsp" title="分享图片">分享图片</a>
        </li>
        <li id="upload1">
            <a href="/jsp/mygallery.jsp" title="管理图片">管理图片</a>
        </li>
        <li id="sort1">
            <a href="/jsp/mygallery.jsp" title="功能待定">功能待定</a>
        </li>
        <li id="share1">
            <a href="/jsp/mygallery.jsp" title="功能待定">功能待定</a>
        </li>
        <li id="upload2">
            <a href="/jsp/mygallery.jsp" title="功能待定">功能待定</a>
        </li>

        </li>
    </ul>
</div>



<div class="mygallerylist">
<%
    UploadPriImageDaoImpl uploadImage = new UploadPriImageDaoImpl();
    List<String> paths = uploadImage.getImageFilePath(user.getName());

    for(String path:paths) {
        String[] strings = path.split("/");
        String p = strings[strings.length - 1];
        request.setAttribute("ph", p);

%>
    <div class="img" title="${ph}">
        <a target="_blank" href="#">
            <img id="allImages" src="http://localhost:8080/i/img/${ph}" alt="Ballade" width="250" height="170px">
        </a>
        <div class="desc">
            我的图片${ph}
        </div>
    </div>

<%
        request.removeAttribute("ph");
    }
%>

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
