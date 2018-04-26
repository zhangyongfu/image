<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 18-2-7
  Time: 下午9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="org.image.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>

    <%--<%@include file="topmenu.jsp"%>--%>
    <title>Title</title>
    <%--<link href="../css/style.css" rel="stylesheet" type="text/css" />--%>
    <%--<link href="../css/mygallerypage.css" rel="stylesheet" type="text/css" />--%>
    <%--<link href="../css/topMenuStyle.css" rel="stylesheet" type="text/css" />--%>

    <%--<link href="css/topMenuStyle.css" rel="stylesheet" type="test/css" />--%>
    <%--<link href="../css/topMenuStyle.css" rel="stylesheet" type="text/css" />--%>


    <%--<link href="../css/gallerystyle.css" rel="stylesheet" type="text/css"/>--%>
    <%--<link href="../css/imgdisplay.css" rel="stylesheet" type="text/css" />--%>



    <style type="text/css">


        html {
            margin: 0 auto;
            background: url(../images/background/0336.jpg) fixed #bebebe;

            /*background: white;*/
            background-size: cover;
            width:100%;

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
            width:100%;
            background:#3b3b3b;
            position:fixed;
            top:0;
            z-index:3;

            /*left:0;*/
        }
        .logo_img{
            position: fixed;
            top:0;

            left:50px;
            width:55px;
            height:55px;

            float:left;

        }

        .top_menu {
            /*width: 500px;*/
            height:55px;
            position: fixed;
            top:0;

            left:300px;
            text-align: center;
            /*margin: 0 auto;*/
            background: #3b3b3b;
            color: #f0f0f0;
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
            background-color: #555555;
        }
        .menu_item:hover .sub_menu {
            display: block;
        }
        .sub_menu {
            font-weight: 300;
            text-transform: none;
            display: none;
            position: absolute;
            width: 120px;
            background-color: #555555;
        }
        .sub_menu_item:hover {
            background: rgba(0, 0, 0, 0.1);
        }

        #top_login{
            position: absolute;
            font-size:15px;
            /*left:1150px;*/
            right:150px;

            top:20px;
            height: 55px;
            float: right;
        }

        .show_user{
            /*width:80px;*/
            /*white-space: nowrap;*/
            /*overflow: hidden;*/
            /*text-overflow: ellipsis;*/
        }

        #top_login_success a{
            /*font-size: 18px;*/
            /*font-style: inherit;*/
            /*float:right;*/
            /*color:skyblue;*/
        }
        #loginout input{
            font-size: 18px;
            font-style: inherit;
            color:#bebebe;
            position: fixed;
            /*left:1130px;*/
            right:150px;
            top:20px;
            background:transparent;
            border:none;
        }
        #loginout input:hover{
            color: gainsboro;
            cursor: pointer;
        }

        #user_menu_item a:hover{
            font-size: 18px;
            font-style: inherit;
            color:#555555;
        }
        #user_sub_menu a:hover{
            font-size: 12px;
            font-style: inherit;
            color:#16181b;
        }


        #top_login #show_user{
            color:#16181b;

        }

        #top_login a:hover{
            color: #FFFFFF;
        }
        #top_login a{
            color: #000;
            font-size:14px;
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
            color: #FFFFFF;
        }
        .index_img_title h2{
            height: 60px;
            margin-bottom: 10px;
            padding: 2px 5px 5px 5px;
            background: #707070;
            border: 1px solid #707070;
            /*letter-spacing: -.5px;*/
            color: #FFFFFF;
        }

        /*user name menu*/
        #top_login_success{
            position: fixed;
            font-size:20px;
            top:19px;
            /*background-color: transparent;*/
            background-color: transparent;
            /*left:1050px;*/
            right:150px;

            text-align: center;

        }
        .user_primary_menu {
            line-height: 36px;
            font-weight: bold;
        }

        .user_sub_menu a{

            /*font-size: 14px;*/
            color: #23272b;
            font-size: 12px;
            display: block;

            /*width:80px;*/
            /*white-space: nowrap;*/
            /*overflow: hidden;*/
            /*text-overflow: ellipsis;*/
        }
        .user_sub_menu a:hover{
            /*color: beige;*/
            /*color: #b8daff;*/
            font-size: 12px;
        }
        .user_menu_item {
            display: inline-block;
            width:80px;
            position: relative;
        }
        .user_menu_item:hover {
            background-color: transparent;
        }
        .user_menu_item:hover .user_sub_menu {
            display: block;
        }
        .user_sub_menu {
            font-weight: 300;
            text-transform: none;
            display: none;
            position: absolute;
            width: 80px;
            background-color: #f0f0f0;
        }
        .user_sub_menu_item:hover {

            cursor: pointer;
            background: rgba(0, 0, 0, 0.1);
        }
        .user_menu_item:hover {
            /*background-color: #555555;*/
        }

        .user_name{
            color: #FFFFFF;
            background-color: transparent;
            /*width:80px;*/
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }
        .user_name:hover{
            color: #ffffff;
            background-color: transparent;
        }
        .user_sub_menu_item:hover {
            background: rgba(0, 0, 0, 0.1);
        }
        .show_user{
            color:#ffffff;
        }
        .show_user:hover {

            color: #ffffff;

        }

        /*top*/

        #top_bg{
            height:55px;
            width:100%;
            background:#3b3b3b;
            position:fixed;
            top:0;
            z-index:1;

            /*left:0;*/
        }
        .top_menu {
            /*width: 500px;*/
            height:55px;
            position: fixed;
            top:0;
            left:500px;
            text-align: center;
            /*margin: 0 auto;*/
            background: #3b3b3b;
            color: #f0f0f0;
        }

        .logo_area{
            position: fixed;
            top:0;
            width:150px;

            height:55px;
            /*position: fixed;*/
            left:50px;
            float:left;

            margin:0 auto;
        }
        .logo_img{
            position: fixed;
            top:0;
            left:50px;
            width:55px;
            height:55px;

            float:left;

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
            background-color: #555555;
        }
        .menu_item:hover .sub_menu {
            display: block;
        }

        .sub_menu {
            font-weight: 300;
            text-transform: none;
            display: none;
            position: absolute;
            width: 120px;
            background-color: #555555;
        }
        .sub_menu_item:hover {
            background: rgba(0, 0, 0, 0.1);
        }

        .show_user{
            width:80px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }


        .myImgSearchImg{
            position: fixed;
            top:10px;
            left:130px;
            height:35px;
            border-radius:5px;
            background-color: beige;
            border:none;

            width:280px;
        }

        .goSearch{

            position: fixed;
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

        .mygallerylist .img a img{
            max-width: 100%;
            min-width: 100%;
            height: 200px;
            object-fit: cover;
            vertical-align: bottom;
        }




        .inside_content li{
            list-style: none;
            text-align: center;
        }


        /*user top right*/


        .user_primary_menu {
            line-height: 36px;
            font-weight: bold;
        }

        .user_menu_item {
            display: inline-block;
            width:80px;
            position: relative;
        }
        .user_menu_item:hover {
            background-color: transparent;
        }
        .user_menu_item:hover {
            background-color: #555555;
        }

        .user_name{
            color: #FFFFFF;
            background-color: transparent;
            /*width:80px;*/
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }
        .user_name:hover{
            color: #555555;
            background-color: transparent;
        }

        .show_user:hover {

            color: #16181b;

        }
        .user_menu_item:hover .user_sub_menu {
            display: block;
        }
        .user_sub_menu {
            /*font-weight: 300;*/
            font-size:4px;

            text-transform: none;
            display: none;
            position: absolute;
            width: 80px;
            /*background-color: #f0f0f0;*/

            background-color: #ff6600;
        }
        .user_sub_menu_item:hover {

            cursor: pointer;
            font-size: 4px;
            background: rgba(0, 0, 0, 0.1);
        }


    </style>


</head>
<body>


<div id="top_bg">
    <div class="top">
        <div class="logo_area">
            <a class="logo_l" href="/" title="返回首页">
                <img class="logo_img" src="../images/logo/logo-200_55.png">

            </a>
        </div>
        <form class="searchBar" action="SearchImgPage" method="get">
            <input class="myImgSearchImg" type="search" name="searchText" placeholder="搜索图片.."
                   onfocus="this.style.backgroundColor='gainsboro'"
                   onblur="this.style.backgroundColor='beige'">
            <input class="goSearch" type="submit" value="搜索">
            <input type="hidden" name="pg" value="1">

        </form>




        <nav class="top_menu">
            <ul class="primary_menu">
                <li class="menu_item"><a href="/">首页</a></li>
                <li class="menu_item"><a>图片</a>
                    <ul class="sub_menu">
                        <li class="sub_menu_item"> <a href="../jsp/pubgallery.jsp" title="图片">图片</a></li>
                        <%--<li class="sub_menu_item"> <a href="/jsp/test.jsp" target="_blank">公共图库</a></li>--%>
                        <li class="sub_menu_item"> <a href="../jsp/mygallery.jsp" title="我的图片">我的图片</a></li>
                        <li class="sub_menu_item"> <a href="../jsp/uploadImages.jsp">上传图片</a></li>
                    </ul>
                </li>
                <li class="menu_item"><a >音乐</a>
                    <ul class="sub_menu">
                        <li class="sub_menu_item"> <a href="jsp/music.jsp">搜索</a></li>
                    </ul>
                    <%--            <ul class="sub_menu">
                                  <li class="sub_menu_item"> <a href="jsp/pubgallery.jsp" title="公共图库">公共图库</a></li>
                                  &lt;%&ndash;<li class="sub_menu_item"> <a href="/jsp/test.jsp" target="_blank">公共图库</a></li>&ndash;%&gt;
                                  <li class="sub_menu_item"> <a href="jsp/mygallery.jsp" title="私人图库">私人图库</a></li>
                                  <li class="sub_menu_item"> <a href="jsp/mygallery.jsp">创建图库</a></li>
                                </ul>--%>
                </li>
                <li class="menu_item"><a >视频</a>
                    <ul class="sub_menu">
                        <li class="sub_menu_item"> <a href="jsp/video.jsp">我的视频</a></li>
                        <li class="sub_menu_item"> <a href="jsp/video.jsp">搜索</a></li>
                    </ul>
                    <%--            <ul class="sub_menu">
                                  <li class="sub_menu_item"> <a href="jsp/pubgallery.jsp" title="公共图库">公共图库</a></li>
                                  &lt;%&ndash;<li class="sub_menu_item"> <a href="/jsp/test.jsp" target="_blank">公共图库</a></li>&ndash;%&gt;
                                  <li class="sub_menu_item"> <a href="jsp/mygallery.jsp" title="私人图库">私人图库</a></li>
                                  <li class="sub_menu_item"> <a href="jsp/mygallery.jsp">创建图库</a></li>
                                </ul>--%>
                </li>
                </li>
                <li class="menu_item"><a>关于</a>
                    <ul class="sub_menu">
                        <li class="sub_menu_item"> <a href="../jsp/webBuild.jsp">网站</a></li>
                        <li class="sub_menu_item"> <a href="../jsp/test4.jsp">团队</a></li>
                        <li class="sub_menu_item"> <a href="../websocket/chat.xhtml">群聊</a></li>
                        <li class="sub_menu_item"> <a href="../jsp/test5.jsp">反馈</a></li>
                        <li class="sub_menu_item"> <a href="../jsp/testTopMenu.jsp">联系我们</a></li>
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
                <ul class="user_primary_menu">


                    <li class="user_menu_item">
                        <ul class="user_name">
                            <li>
                                <a class="show_user" href="/userinformation" title="<%=user.getName()%>">
                                    <%--<a class="menu_item" href="/userinformation" title="<%=user.getName()%>">--%>
                                    <%
                                        out.print(user.getName());
                                    %>
                                </a>
                            </li>
                        </ul>
                        <ul class="user_sub_menu">
                            <li class="user_sub_menu_item"> <a href="/userinformation">个人中心</a></li>
                            <li class="user_sub_menu_item"> <a href="#">我的图库</a></li>
                            <li class="user_sub_menu_item"> <a href="/userinformation">设置</a></li>
                            <li class="user_sub_menu_item"> <a href="/loginout">注销</a></li>
                        </ul>
                    </li>

                </ul>

            </li>
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
