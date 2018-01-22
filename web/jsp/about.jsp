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
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="../css/bootstrap/bootstrap.min.css">
    <script src="../js/bootstrap/bootstrap.min.js"></script>
    <script src="../js/jquery-3.2.1.min.js"></script>

    <meta name="viewport" content="width=device-width,initial-scale=1.0">


    <title class="container">Title</title>

    <style type="text/css">



        .test{

            position: relative;

            background-color: #eebebe;
            width:1200px;
            margin:0 auto;
            overflow: hidden;
        }




        #title{


/*
            position: relative;
            top:80px;


            width:800px;
            margin:0 auto;
            font-size: 20px;
            color:black;*/


            background-color: #5CB542;
            position: relative;

            top:60px;
            font-size:30px;
            color:blueviolet;

        }
        #text_about{


            border-left:2px outset deepskyblue;


            position: relative;

            margin:0 200px;

            top:60px;

            font-size: 15px;
            color:black;
        }










        .logo_area{
            width:150px;
            height:55px;
            float:left;
            margin:0 auto;
        }

        img{
            vertical-align:middle;

        }
        em{
            font-style:normal;
        }
        a img, :link img, :visited img{
            border:0;
        }

        ul, ul li{
            list-style-type:none;
            margin:0px;
            padding:0px;
        }
        #top_bg{
            height:55px;
            width:1000px;
            margin:0 auto;
            background:mediumslateblue;
            position:relative;
            top:0;
            z-index:1;

            /*left:0;*/
        }

        .logo_area{
            position: relative;
            top:0;
            left:0;

            width:150px;
            margin:0 auto;

            height:55px;
            /*position: fixed;*/


        }

        .search_menu{
            position: relative;
            /*width:150px;*/

            height:55px;
            /*position: fixed;*/
            left:130px;
            top:10px;
            float:left;

            margin:0 auto;
        }
        .logo_img{
            position: relative;
            top:0;

            left:50px;
            width:55px;
            height:55px;

            float:left;

        }

        .top_menu {
            /*width: 500px;*/
            height:55px;
            position: relative;
            top:0;


            text-align: center;
            /*margin: 0 auto;*/
            background: mediumslateblue;
            color: #f0f0f0;
            left:50%;
            z-index: 9999999999;
        }
        .top_menu a {
            display: block;
            padding: 5px 15px;
            line-height: inherit;
            cursor: pointer;
        }
        .primary_menu {
            line-height: 45px;
            font-weight: bold;
        }
        .primary_menu a{

            font-size: 18px;
            color: #bebebe;
        }
        .primary_menu a:hover{
            color: beige;
        }
        .menu_item {
            display: inline-block;
            width:120px;
            position: relative;
        }
        .menu_item:hover {
            background-color: #0573bd;
        }
        .menu_item:hover .sub_menu {
            display: block;
        }
        .sub_menu {
            font-weight: 300;
            text-transform: none;
            display: none;
            position: relative;
            width: 120px;
            background-color: #0573bd;
        }
        .sub_menu_item:hover {
            background: rgba(0, 0, 0, 0.1);
        }


        .searchImg{
            position: relative;
            top:10px;
            left:130px;
            height:35px;
            border-radius:5px;
            background-color: beige;
            border:none;

            width:280px;
        }
        .goSearch{

            position: relative;
            top:10px;
            left:420px;
            float: left;
            height:35px;
            background:beige;
            border:none;
            border-radius:5px;

        }
        .goSearch:hover{
            cursor: pointer;
            background-color: gainsboro;

        }



        #top_login{
            position: relative;
            font-size:15px;
            left:1150px;
            top:20px;
            height: 55px;
            float: right;
        }
        #top_login_success{
            position: relative;
            font-size:20px;
            top:18px;
            background-color: #0573bd;
            left:1050px;
            text-align: center;

        }
        .show_user{
            width:80px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        #top_login_success a{
            font-size: 18px;
            font-style: inherit;
            float:right;
            color:skyblue;
        }
        #loginout input{
            font-size: 18px;
            font-style: inherit;
            color:#bebebe;
            position: relative;
            left:1130px;
            top:20px;
            background:transparent;
            border:none;
        }
        #loginout input:hover{
            color: gainsboro;
            cursor: pointer;
        }

        #top_login_success a:hover{
            font-size: 18px;
            font-style: inherit;
            color:gainsboro;
        }

        #top_login a:hover{
            color: #FFFFFF;
        }
        #top_login a{
            color: #000;
            font-size:15px;
        }
        body{
            margin:0;
            padding:0;
            overflow-x:hidden;
        }

        a{
            text-decoration:none;
        }



        .index_img_title_right a:hover{
            color: blue;
        }
        .index_img_title h2 {
            height: 60px;
            margin-bottom: 10px;
            padding: 2px 5px 5px 5px;
            background: #D6E6CC;
            border: 1px solid #D6E6CC;
            /*letter-spacing: -.5px;*/
            color: #FFFFFF;

        }
        img{
            vertical-align:middle;

        }
        em{
            font-style:normal;
        }
        a img, :link img, :visited img{
            border:0;
        }

        ul, ul li{
            list-style-type:none;
            margin:0px;
            padding:0px;
        }

        .top_menu a {
            display: block;
            padding: 5px 15px;
            line-height: inherit;
            cursor: pointer;
        }

        .primary_menu a{

            font-size: 18px;
            color: #bebebe;
        }
        .primary_menu a:hover{
            color: beige;
        }

        .searchImg{
            position: relative;
            top:10px;
            height:35px;
            border-radius:5px;
            background-color: beige;
            border:none;

            width:280px;
        }

        #top_login_success a{
            font-size: 18px;
            font-style: inherit;
            float:right;
            color:skyblue;
        }
        #loginout input{
            font-size: 18px;
            font-style: inherit;
            color:#bebebe;
            position: relative;
            left:1130px;
            top:20px;
            background:transparent;
            border:none;
        }
        #loginout input:hover{
            color: gainsboro;
            cursor: pointer;
        }

        #top_login_success a:hover{
            font-size: 18px;
            font-style: inherit;
            color:gainsboro;
        }

        .cl li a{
            font-size: 20px;
            word-spacing:20px;
            color: #000;
            background-color: transparent;
        }
        #top_login a:hover{
            color: #FFFFFF;
        }
        #top_login a{
            color: #000;
            font-size:15px;
        }

        img{
            border:none;
        }
        *{
            font-family:'微软雅黑';
            font-size:12px;
            color:#626262;
        }
        dl,dt,dd{
            display:block;
            margin:0;
        }
        a{
            text-decoration:none;
        }

        .button_text p{
            margin:auto;
        }

    </style>

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
</head>
<body>

<div class="progress progress-striped active">
    <div class="progress-bar progress-bar-success" role="progressbar"
         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
         style="width: 40%;">
        <span class="sr-only">40% 完成</span>
    </div>
</div>





<div class="test">


<span id="title">关于我们</span>
<p id="text_about">

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
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
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


    jQuery 选择器
    jQuery 元素选择器和属性选择器允许您通过标签名、属性名或内容对 HTML 元素进行选择。
    选择器允许您对 HTML 元素组或单个元素进行操作。
    在 HTML DOM 术语中：
    选择器允许您对 DOM 元素组或单个 DOM 节点进行操作。


    jQuery 元素选择器
    jQuery 使用 CSS 选择器来选取 HTML 元素。
    $("p") 选取  元素。
    $("p.intro") 选取所有 class="intro" 的 元素。
    $("p#demo") 选取所有 id="demo" 的  元素。


    jQuery 属性选择器
    jQuery 使用 XPath 表达式来选择带有给定属性的元素。
    $("[href]") 选取所有带有 href 属性的元素。
    $("[href='#']") 选取所有带有 href 值等于 "#" 的元素。
    $("[href!='#']") 选取所有带有 href 值不等于 "#" 的元素。
    $("[href$='.jpg']") 选取所有 href 值以 ".jpg" 结尾的元素。


    语法								描述
    $(this)					当前 HTML 元素
    $("p")						所有 元素
    $("p.intro")				所有 class="intro" 的 元素
    $(".intro")				所有 class="intro" 的元素
    $("#intro")				id="intro" 的元素
    $("ul li:first")			每个 的第一个 元素
    $("[href$='.jpg']")		所有带有以 ".jpg" 结尾的属性值的 href 属性
    $("div#intro .head")		id="intro" 的元素中的所有 class="head" 的元素    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关<br/>
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
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
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


    jQuery 选择器
    jQuery 元素选择器和属性选择器允许您通过标签名、属性名或内容对 HTML 元素进行选择。
    选择器允许您对 HTML 元素组或单个元素进行操作。
    在 HTML DOM 术语中：
    选择器允许您对 DOM 元素组或单个 DOM 节点进行操作。


    jQuery 元素选择器
    jQuery 使用 CSS 选择器来选取 HTML 元素。
    $("p") 选取  元素。
    $("p.intro") 选取所有 class="intro" 的 元素。
    $("p#demo") 选取所有 id="demo" 的  元素。


    jQuery 属性选择器
    jQuery 使用 XPath 表达式来选择带有给定属性的元素。
    $("[href]") 选取所有带有 href 属性的元素。
    $("[href='#']") 选取所有带有 href 值等于 "#" 的元素。
    $("[href!='#']") 选取所有带有 href 值不等于 "#" 的元素。
    $("[href$='.jpg']") 选取所有 href 值以 ".jpg" 结尾的元素。


    语法								描述
    $(this)					当前 HTML 元素
    $("p")						所有 元素
    $("p.intro")				所有 class="intro" 的 元素
    $(".intro")				所有 class="intro" 的元素
    $("#intro")				id="intro" 的元素
    $("ul li:first")			每个 的第一个 元素
    $("[href$='.jpg']")		所有带有以 ".jpg" 结尾的属性值的 href 属性
    $("div#intro .head")		id="intro" 的元素中的所有 class="head" 的元素    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关<br/>
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
    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我    们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我
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


    jQuery 选择器
    jQuery 元素选择器和属性选择器允许您通过标签名、属性名或内容对 HTML 元素进行选择。
    选择器允许您对 HTML 元素组或单个元素进行操作。
    在 HTML DOM 术语中：
    选择器允许您对 DOM 元素组或单个 DOM 节点进行操作。


    jQuery 元素选择器
    jQuery 使用 CSS 选择器来选取 HTML 元素。
    $("p") 选取  元素。
    $("p.intro") 选取所有 class="intro" 的 元素。
    $("p#demo") 选取所有 id="demo" 的  元素。


    jQuery 属性选择器
    jQuery 使用 XPath 表达式来选择带有给定属性的元素。
    $("[href]") 选取所有带有 href 属性的元素。
    $("[href='#']") 选取所有带有 href 值等于 "#" 的元素。
    $("[href!='#']") 选取所有带有 href 值不等于 "#" 的元素。
    $("[href$='.jpg']") 选取所有 href 值以 ".jpg" 结尾的元素。


    语法								描述
    $(this)					当前 HTML 元素
    $("p")						所有 元素
    $("p.intro")				所有 class="intro" 的 元素
    $(".intro")				所有 class="intro" 的元素
    $("#intro")				id="intro" 的元素
    $("ul li:first")			每个 的第一个 元素
    $("[href$='.jpg']")		所有带有以 ".jpg" 结尾的属性值的 href 属性
    $("div#intro .head")		id="intro" 的元素中的所有 class="head" 的元素


</p>

<%--<%--%>
    <%--DatabaseConnection databaseConnection = new DatabaseConnection();--%>
    <%--ImageUserDaoImpl imageUserDao = new ImageUserDaoImpl();--%>
    <%--String email = request.getParameter("email");--%>
    <%--String name = request.getParameter("name");--%>
    <%--String password = request.getParameter("password");--%>
    <%--User user = new User(email,name,password);--%>
    <%--imageUserDao.addImageUser(user);--%>
<%--%>--%>

<%--<tr>
    <td><%=u.getEmail() %></td>
    <td><%=u.getName() %></td>
    <td><%=u.getPassword() %></td>
</tr>--%>
<%--<%
    }
%>--%>

</div>


<script type="javascript">

    //获取浏览器页面可见高度和宽度
    var _PageHeight = document.documentElement.clientHeight,
        _PageWidth = document.documentElement.clientWidth;
    //计算loading框距离顶部和左部的距离（loading框的宽度为215px，高度为61px）
    var _LoadingTop = _PageHeight > 61 ? (_PageHeight - 61) / 2 : 0,
        _LoadingLeft = _PageWidth > 215 ? (_PageWidth - 215) / 2 : 0;
    //在页面未加载完毕之前显示的loading Html自定义内容
    var _LoadingHtml = '<div id="loadingDiv" style="position:absolute;left:0;width:100%;height:' + _PageHeight + 'px;top:0;background:#f3f8ff;opacity:0.8;filter:alpha(opacity=80);z-index:10000;"><div style="position: absolute; cursor1: wait; left: ' + _LoadingLeft + 'px; top:' + _LoadingTop + 'px; width: auto; height: 57px; line-height: 57px; padding-left: 50px; padding-right: 5px; background: #fff url(/Content/loading.gif) no-repeat scroll 5px 10px; border: 2px solid #95B8E7; color: #696969; font-family:\'Microsoft YaHei\';">页面加载中，请等待...</div></div>';
    //呈现loading效果
    document.write(_LoadingHtml);

    //window.onload = function () {
    //    var loadingMask = document.getElementById('loadingDiv');
    //    loadingMask.parentNode.removeChild(loadingMask);
    //};

    //监听加载状态改变
    document.onreadystatechange = completeLoading;

    //加载状态为complete时移除loading效果
    function completeLoading() {
        if (document.readyState == "complete") {
            var loadingMask = document.getElementById('loadingDiv');
            loadingMask.parentNode.removeChild(loadingMask);
        }
    }
</script>
</body>
</html>
