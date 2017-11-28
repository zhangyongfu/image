<%--&lt;%&ndash;--%>
<%--&lt;%&ndash;--%>
<%--&lt;%&ndash;--%>
  <%--Created by IntelliJ IDEA.--%>
  <%--User: zyj--%>
  <%--Date: 17-11-12--%>
  <%--Time: 下午6:01--%>
  <%--To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page import="org.image.model.User" %>--%>
<%--<%@ page import="java.io.PrintWriter" %>--%>
<%--<%@ page import="java.util.List" %>--%>
<%--<%@ page import="org.image.model.UploadPubImages" %>--%>
<%--<%@ page import="java.util.Date" %>--%>
<%--<%@ page import="java.text.SimpleDateFormat" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1"  />--%>
    <%--<title>Image</title>--%>
    <%--<link href="../css/style.css" rel="stylesheet" type="text/css" />--%>
    <%--<div id="top_bg">--%>
        <%--<div class="top">--%>
            <%--<a class="logo_l" href="/" title="返回首页"></a>--%>
            <%--<form class="searchBar" action="SearchImgPage" method="get">--%>
                <%--<input class="searchImg" type="search" name="searchText" placeholder="搜索图片.."--%>
                       <%--onfocus="this.style.backgroundColor='gainsboro'"--%>
                       <%--onblur="this.style.backgroundColor='beige'">--%>
                <%--<input class="goSearch" type="submit" value="搜索">--%>
            <%--</form>--%>
            <%--<nav class="top_menu">--%>
                <%--<ul class="primary_menu">--%>
                    <%--<li class="menu_item"><a href="/">首页</a></li>--%>
                    <%--<li class="menu_item"><a style="color:white">图库</a>--%>
                        <%--<ul class="sub_menu">--%>
                            <%--<li class="sub_menu_item"> <a href="mygallery.jsp" target="_blank">公共图库</a></li>--%>
                            <%--<li class="sub_menu_item"> <a href="mygallery.jsp" target="_blank">私人图库</a></li>--%>
                            <%--<li class="sub_menu_item"> <a href="mygallery.jsp" target="_blank">创建图库</a></li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                    <%--<li class="menu_item"><a>关于</a>--%>
                        <%--<ul class="sub_menu">--%>
                            <%--<li class="sub_menu_item"> <a href="about.jsp" target="_blank">网站</a></li>--%>
                            <%--<li class="sub_menu_item"> <a href="about.jsp" target="_blank">团队</a></li>--%>
                            <%--<li class="sub_menu_item"> <a href="about.jsp" target="_blank">反馈</a></li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                <%--</ul>--%>
            <%--</nav>--%>
            <%--<%--%>
                <%--HttpSession httpSession = request.getSession();--%>
                <%--User user = (User)httpSession.getAttribute("userName");--%>
                <%--if(user != null){--%>
            <%--%>--%>
            <%--<ul id="">--%>
                <%--<li id="top_login_success">--%>
                    <%--<a class="show_user" href="userpage.jsp" title="<%=user.getName()%>">--%>
                        <%--<%--%>
                            <%--out.print(user.getName());--%>
                        <%--%>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<form id="loginout" action="/loginout" method="post">--%>
                    <%--<input type="submit" title="注销" value="注销">--%>

                <%--</form>--%>
            <%--</ul>--%>
            <%--<%--%>
            <%--}--%>
            <%--else{--%>
            <%--%>--%>
            <%--<ul>--%>
                <%--<li id="top_login">--%>
                    <%--<a id="login" href="/jsp/login.jsp">登录</a>--%>
                    <%--|--%>
                    <%--<a id="register" href="/jsp/goregister.jsp">注册</a>--%>
                <%--</li>--%>
            <%--</ul>--%>
            <%--<%--%>
                <%--}--%>
            <%--%>--%>
            <%--<div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="list">--%>
    <%--<div class="uploadDay">--%>
        <%--<b>--%>
            <%--<%--%>
                <%--Date today = new Date();--%>
                <%--SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");--%>
                <%--String dateString = formatter.format(today);--%>
                <%--out.print(dateString);--%>
            <%--%>--%>
        <%--</b>--%>
    <%--</div>--%>
    <%--<div class="new_img">--%>
        <%--<b>--%>
            <%--最新上传--%>
        <%--</b>--%>
        <%--&lt;%&ndash;&lt;%&ndash;dash;%&gt;--%>
        <%--&lt;%&ndash;out.print(new Date().toLocaleString());&ndash;%&gt;--%>
        <%--&lt;%&ndash;dash;%&gt;&ndash;%&gt;--%>
    <%--</div>--%>
    <%--<%--%>
        <%--//      UploadPriImageDaoImpl uploadImage = new UploadPriImageDaoImpl();--%>
        <%--UploadPubImages uploadPubImages = new UploadPubImages();--%>

        <%--List<String> paths = uploadPubImages.getPubImgFilePath();--%>

        <%--for(String path:paths) {--%>
            <%--String[] strings = path.split("/");--%>
            <%--String p = strings[strings.length - 1];--%>
            <%--request.setAttribute("ph", p);--%>
    <%--%>--%>
    <%--<div class="img" title="${ph}">--%>
        <%--&lt;%&ndash;<a target="_blank" href="#">&ndash;%&gt;--%>
        <%--<img src="http://localhost:8080/i/pub_img/${ph}" alt="Ballade" width="250" height="170px">--%>
        <%--&lt;%&ndash;</a>&ndash;%&gt;--%>
        <%--<div class="desc">--%>
            <%--图片&nbsp;${ph}--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<%--%>
            <%--request.removeAttribute("ph");--%>
        <%--}--%>
    <%--%>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>
<%--&ndash;%&gt;--%>
<%--&ndash;%&gt;--%>

<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">--%>

<%--Design by Free CSS Templates--%>
<%--http://www.freecsstemplates.org--%>
<%--Released for free under a Creative Commons Attribution 2.5 License--%>

<%--Name       : Begrimed--%>
<%--Description: A two-column, fixed-width design with dark color scheme.--%>
<%--Version    : 1.0--%>
<%--Released   : 20090830--%>


<%--<html xmlns="http://www.w3.org/1999/xhtml">--%>
<%--<head>--%>
    <%--<meta name="keywords" content="" />--%>
    <%--<meta name="description" content="" />--%>
    <%--<meta http-equiv="content-type" content="text/html; charset=utf-8" />--%>
    <%--<title>Begrimed   by Free CSS Templates</title>--%>
    <%--<link href="style.css" rel="stylesheet" type="text/css" media="screen" />--%>


    <%--<style type="text/css">--%>
        <%--/*--%>
<%--Design by Free CSS Templates--%>
<%--http://www.freecsstemplates.org--%>
<%--Released for free under a Creative Commons Attribution 2.5 License--%>
<%--*/--%>

        <%--body {--%>
            <%--margin: 0;--%>
            <%--padding: 0;--%>
            <%--background: #F9F0CF url(images/img01.jpg) repeat-x left top;--%>
            <%--font-family: Arial, Helvetica, sans-serif;--%>
            <%--font-size: 12px;--%>
            <%--color: #534616;--%>
        <%--}--%>

        <%--h1, h2, h3 {--%>
            <%--margin: 0;--%>
            <%--padding: 0;--%>
            <%--font-family: Georgia, "Times New Roman", Times, serif;--%>
            <%--font-weight: normal;--%>
            <%--color: #534616;--%>
        <%--}--%>

        <%--h1 {--%>
            <%--font-size: 2em;--%>
        <%--}--%>

        <%--h2 {--%>
            <%--font-size: 1.8em;--%>
        <%--}--%>

        <%--h3 {--%>
            <%--font-size: 1.6em;--%>
        <%--}--%>

        <%--p, ul, ol {--%>
            <%--margin-top: 0;--%>
            <%--line-height: 180%;--%>
        <%--}--%>

        <%--ul, ol {--%>
        <%--}--%>

        <%--a {--%>
            <%--text-decoration: none;--%>
            <%--color: #534616;--%>
        <%--}--%>

        <%--a:hover {--%>
        <%--}--%>

        <%--#wrapper {--%>
            <%--width: 960px;--%>
            <%--margin: 0 auto;--%>
            <%--padding: 0;--%>
        <%--}--%>

        <%--/* Header */--%>

        <%--#header {--%>
            <%--width: 960px;--%>
            <%--height: 110px;--%>
            <%--margin: 0 auto;--%>
        <%--}--%>

        <%--/* Logo */--%>

        <%--#logo {--%>
            <%--float: left;--%>
            <%--height: 65px;--%>
            <%--margin: 0;--%>
            <%--padding-top: 20px;--%>
            <%--color: #FFFFFF;--%>
        <%--}--%>

        <%--#logo h1, #logo p {--%>
            <%--margin: 0;--%>
            <%--padding: 0;--%>
        <%--}--%>

        <%--#logo h1 {--%>
            <%--float: left;--%>
            <%--letter-spacing: -1px;--%>
            <%--text-transform: lowercase;--%>
            <%--font-size: 2.6em;--%>
        <%--}--%>

        <%--#logo p {--%>
            <%--float: left;--%>
            <%--margin: 0;--%>
            <%--padding: 12px 0 0 10px;--%>
            <%--font: normal 14px Georgia, "Times New Roman", Times, serif;--%>
            <%--font-style: italic;--%>
        <%--}--%>

        <%--#logo a {--%>
            <%--border: none;--%>
            <%--background: none;--%>
            <%--text-decoration: none;--%>
        <%--}--%>

        <%--/* Search */--%>

        <%--#search {--%>
            <%--float: right;--%>
            <%--width: 300px;--%>
            <%--height: 110px;--%>
            <%--padding: 0;--%>
        <%--}--%>

        <%--#search form {--%>
            <%--height: 41px;--%>
            <%--margin: 0;--%>
            <%--padding: 10px 0 0 20px;--%>
        <%--}--%>

        <%--#search fieldset {--%>
            <%--margin: 0;--%>
            <%--padding: 0;--%>
            <%--border: none;--%>
        <%--}--%>

        <%--#search-text {--%>
            <%--width: 195px;--%>
            <%--padding: 5px 5px 4px 5px;--%>
            <%--border: 1px solid #DEDEDE;--%>
            <%--background: #FFFFFF;--%>
            <%--text-transform: lowercase;--%>
            <%--font: normal 11px Arial, Helvetica, sans-serif;--%>
            <%--color: #703522;--%>
        <%--}--%>

        <%--#search-submit {--%>
            <%--width: 50px;--%>
            <%--height: 25px;--%>
        <%--}--%>

        <%--/* Menu */--%>

        <%--#menu {--%>
            <%--width: 960px;--%>
            <%--height: 38px;--%>
            <%--margin: 0 auto;--%>
            <%--padding: 0;--%>
        <%--}--%>

        <%--#menu ul {--%>
            <%--margin: 0;--%>
            <%--padding: 0px 0px 0px 25px;--%>
            <%--list-style: none;--%>
            <%--line-height: normal;--%>
        <%--}--%>

        <%--#menu li {--%>
            <%--float: left;--%>
            <%--height: 38px;--%>
        <%--}--%>

        <%--#menu a {--%>
            <%--display: block;--%>
            <%--margin-right: 3px;--%>
            <%--padding: 17px 30px 7px 30px;--%>
            <%--background: url(images/img02.jpg)  no-repeat right 18px;--%>
            <%--text-decoration: none;--%>
            <%--font-family: Arial, Helvetica, sans-serif;--%>
            <%--font-size: 13px;--%>
            <%--font-weight: bold;--%>
            <%--color: #FFFFFF;--%>
            <%--border: none;--%>
        <%--}--%>

        <%--#menu a:hover, #menu .current_page_item a {--%>
        <%--}--%>

        <%--#menu .current_page_item a {--%>
            <%--padding-left: 0;--%>
        <%--}--%>

        <%--#menu a:hover {--%>
            <%--text-decoration: underline;--%>
        <%--}--%>

        <%--/* Page */--%>

        <%--#page {--%>
            <%--width: 960px;--%>
            <%--margin: 0 auto;--%>
            <%--padding: 50px 0px 0px 0px;--%>
        <%--}--%>

        <%--#page-bgtop {--%>
        <%--}--%>

        <%--#page-bgbtm {--%>
        <%--}--%>

        <%--/* Content */--%>

        <%--#content {--%>
            <%--float: right;--%>
            <%--width: 670px;--%>
            <%--padding: 0;--%>
        <%--}--%>

        <%--.post {--%>
            <%--margin-bottom: 25px;--%>
            <%--padding: 0px;--%>
            <%--/*background: #FFFFFF;*/--%>
            <%--/*border: 1px solid #D6E6CC;*/--%>
        <%--}--%>

        <%--.post-bgtop {--%>
        <%--}--%>

        <%--.post-bgbtm {--%>
        <%--}--%>

        <%--.post .title {--%>
            <%--height: 38px;--%>
            <%--margin-bottom: 10px;--%>
            <%--padding: 12px 0 0 20px;--%>
            <%--background: #D6E6CC;--%>
            <%--border: 1px solid #D6E6CC;--%>
            <%--letter-spacing: -.5px;--%>
            <%--color: #FFFFFF;--%>
        <%--}--%>

        <%--.post .title a {--%>
            <%--color: #48390E;--%>
            <%--border: none;--%>
        <%--}--%>

        <%--.post .meta {--%>
            <%--padding-bottom: 5px;--%>
            <%--padding-left: 20px;--%>
            <%--text-align: left;--%>
            <%--font-family: Arial, Helvetica, sans-serif;--%>
            <%--font-size: 11px;--%>
            <%--font-style: italic;--%>
        <%--}--%>

        <%--.post .meta a {--%>
        <%--}--%>

        <%--.post .entry {--%>
            <%--padding: 0px 20px 20px 20px;--%>
            <%--padding-bottom: 20px;--%>
            <%--text-align: justify;--%>
        <%--}--%>

        <%--.links {--%>
            <%--display: block;--%>
            <%--width: 100px;--%>
            <%--height: 20px;--%>
            <%--margin-top: 20px;--%>
            <%--text-align: center;--%>
            <%--text-transform: uppercase;--%>
            <%--font-size: 10px;--%>
            <%--font-weight:  bold;--%>
        <%--}--%>

        <%--/* Sidebar */--%>

        <%--#sidebar {--%>
            <%--float: left;--%>
            <%--width: 240px;--%>
            <%--padding: 0px;--%>
            <%--color: #787878;--%>
        <%--}--%>

        <%--#sidebar ul {--%>
            <%--padding: 0;--%>
            <%--list-style: none;--%>
        <%--}--%>

        <%--#sidebar li {--%>
            <%--margin: 0;--%>
            <%--padding: 0;--%>
        <%--}--%>

        <%--#sidebar li ul {--%>
            <%--margin-bottom: 30px;--%>
            <%--padding: 0px 20px 20px 20px;--%>
            <%--background: #F4FAF0;--%>
            <%--border-left: 1px solid #D6E6CC;--%>
            <%--border-right: 1px solid #D6E6CC;--%>
            <%--border-bottom: 1px solid #D6E6CC;--%>
        <%--}--%>

        <%--#sidebar li li {--%>
            <%--line-height: 35px;--%>
            <%--border-bottom: 1px dashed #D1D1D1;--%>
            <%--padding-left: 3px;--%>
        <%--}--%>


        <%--#sidebar h2 {--%>
            <%--height: 38px;--%>
            <%--padding: 12px 0 0 20px;--%>
            <%--background: #D6E6CC;--%>
            <%--border: 5px solid #D6E6CC;--%>
            <%--letter-spacing: -.5px;--%>
            <%--color: #48390E;--%>
        <%--}--%>

        <%--#sidebar p {--%>
            <%--margin: 0 0px;--%>
            <%--padding: 0px 20px 20px 20px;--%>
            <%--text-align: justify;--%>
        <%--}--%>

        <%--#sidebar a {--%>
            <%--border: none;--%>
        <%--}--%>

        <%--#sidebar a:hover {--%>
            <%--text-decoration: underline;--%>
        <%--}--%>

        <%--/* Calendar */--%>

        <%--#calendar {--%>
        <%--}--%>

        <%--#calendar_wrap {--%>
            <%--padding: 20px;--%>
        <%--}--%>

        <%--#calendar table {--%>
            <%--width: 100%;--%>
        <%--}--%>

        <%--#calendar tbody td {--%>
            <%--text-align: center;--%>
        <%--}--%>

        <%--#calendar #next {--%>
            <%--text-align: right;--%>
        <%--}--%>

        <%--/* Footer */--%>

        <%--#footer {--%>
            <%--width: 960px;--%>
            <%--height: 64px;--%>
            <%--margin: 0 auto;--%>
            <%--background: url(images/img03.jpg) no-repeat left top;--%>
            <%--padding: 0px 0 15px 0;--%>
            <%--font-family: Arial, Helvetica, sans-serif;--%>
        <%--}--%>

        <%--#footer p {--%>
            <%--margin: 0;--%>
            <%--padding-top: 26px;--%>
            <%--line-height: normal;--%>
            <%--font-size: 12px;--%>
            <%--text-align: center;--%>
        <%--}--%>

        <%--#footer a {--%>
            <%--font-weight: bold;--%>
        <%--}--%>
    <%--</style>--%>


<%--</head>--%>
<%--<body>--%>
<%--<div id="wrapper">--%>
    <%--<div id="page">--%>
        <%--<div id="page-bgtop">--%>
            <%--<div id="page-bgbtm">--%>
                <%--<div id="sidebar">--%>
                    <%--<ul>--%>
                        <%--<li>--%>
                            <%--<h2>Categories</h2>--%>
                            <%--<ul>--%>
                                <%--<li><a href="#">Aliqro</a></li>--%>
                                <%--<li><a href="#">Conlit</a></li>--%>
                                <%--<li><a href="#">Metuue</a></li>--%>
                                <%--<li><a href="#">Suspeis</a></li>--%>
                                <%--<li><a href="#">Urnaper</a></li>--%>
                                <%--<li><a href="#">Protitor</a></li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</body>--%>
<%--</html>&ndash;%&gt;--%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>jquery动态回到顶部特效</title>
</head>
<body>
<style>
    #goTopBtn {position: fixed;width:32px;bottom:40px;height:32px;cursor:pointer;display:none;
        background:url(../images/icons/back_to_top-32.png) no-repeat;}
</style>
<br/>
<p style="text-align:center;font-family:Georgia, 'Times New Roman', Times, serif;font-size:24px;font-weight:bold;">***，how are you。
    <br/>Just do what you want do!!!</p>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<div id="goTopBtn"></div>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
    $(window).scroll(function(){
        var sc=$(window).scrollTop();
        var rwidth=$(window).width()
        if(sc>0){
            $("#goTopBtn").css("display","block");
            $("#goTopBtn").css("left",(rwidth-36)+"px")
        }else{
            $("#goTopBtn").css("display","none");
        }
    })
    $("#goTopBtn").click(function(){
        var sc=$(window).scrollTop();
        $('body,html').animate({scrollTop:0},500);
    })
</script>
</body>
</html>