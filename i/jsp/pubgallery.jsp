<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-11-12
  Time: 下午6:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="org.image.model.User" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.List" %>
<%@ page import="org.image.model.UploadPubImages" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Collections" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="topMenuHavenotSearchBar.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="../images/logo/logo-16.png" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/logo/logo-16.png" type="image/x-icon" />


<%--<%@include file="topmenu.jsp"%>--%>



    <meta name="viewport" content="width=device-width, initial-scale=1"  />
    <title>图片</title>
    <%--<link href="../css/style.css" rel="stylesheet" type="text/css" />--%>
    <%--<link href="css/topMenuStyle.css" rel="stylesheet" type="test/css" />--%>

    <%--<div id="top_bg">--%>
        <%--<div class="top">--%>
            <%--<div class="logo_area">--%>
                <%--<a class="logo_l" href="/" title="返回首页">--%>
                    <%--<img class="logo_img" src="../images/logo/logo-64.png">--%>

                <%--</a>--%>
            <%--</div>--%>
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
                            <%--<li class="sub_menu_item"> <a href="pubgallery.jsp" target="_blank" title="公共图库">公共图库</a></li>--%>
                            <%--<li class="sub_menu_item"> <a href="mygallery.jsp" target="_blank" title="私人图库">私人图库</a></li>--%>
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
                    <%--<a class="show_user" href="/userinformation" title="<%=user.getName()%>">--%>
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

    <%--
        <style>
          .max{
            width:100%;
            height:auto;}
          .min{
            width:300px;
            height:auto;
          }
        </style>



        <script defer="defer" language="JavaScript">
            $(function () {
                $('.pub_img').click(function () {
                    $(this).toggleClass('min');
                    $(this).toggleClass('max');

                });

            });
        </script>

    --%>


    <style type="text/css">

        html {
            margin: 0 auto;
            background: url(../images/background/0336.jpg) fixed #ffffff;
            width: 100%;
        }

        .pubgallery_page{
            width:1200px;
            margin:0 auto;
        }

        .t{
            /*width:1200px;*/
            /*margin:0 auto;*/
            position: relative;
            float: left;
            /*top:70px;*/

            background-color: transparent;
        }

        .allImgs{

            padding: 2px;
            display: flex;
            flex-wrap: wrap;

/*            padding: 2px 20px 10px 20px;
            padding-bottom: 20px;
            text-align: justify;*/
        }

        /*处理最后一行*/
        .allImgs::after {
            content: normal;
            flex-grow: 999999999;

        }
        .allImgs .img
        {
            margin: 2px;
            position: relative;
            height: 100px;
            width:150px;
            flex-grow: 1;
            background-color: gainsboro;
/*            border:1px solid #bebebe;
            height:auto;
            background-color: cornflowerblue;
            width:260px;
            !*margin-bottom: 15px;*!
            !*margin-right: 10px;*!
            float:left;
            margin:10px 5px;
            text-align:center;*/
        }
        .allImgs .img a img{
            max-width: 100%;
            min-width: 100%;
            height: 100px;
            background: url("../images/content/photo.png") #ffffff;
            object-fit: cover;
            vertical-align: bottom;
        }


        .show_img_list{
            position: absolute;
            left:210px;
            top:58px;

            /*float: left;*/
            /*width: 670px;*/
            /*padding: 0;*/
        }
        .list{
            /*position: relative;*/
            /*top:110px;*/
            /*border-right:4px outset blue;*/
            /*border-top:4px outset blue;*/
            /*border-left:4px outset blue;*/
            /*border-bottom:4px outset blue;*/
            /*border: medium solid #555555;*/
            /*border:1px;*/
            /*left:-100px;*/

            /*display: table-cell;*/
            /*margin:0 auto;*/
            width:990px;
            height:auto;

            margin-bottom: 50px;
            padding: 0;
            background: #FFFFFF;
            border: 2px solid #707070;

        }
        .uploadDay{
            /*position: relative;*/
            /*bottom:12px;*/
            /*!*background-color: #bebebe;*!*/
            /*!*width:1200px;*!*/
            /*left:-550px;*/


            height: 30px;
            margin-bottom: 2px;
            padding: 2px 5px 2px 5px;
            background: #707070;
            border: 1px solid #707070;
            /*letter-spacing: -.5px;*/
            color: #FFFFFF;

        }

        .time_title{
            height: 30px;
            margin-bottom: 3px;
            padding: 5px 0 2px 5px;
            text-align: left;
            color: #fff;

        }
        .more{
            float: right;
            margin-top: -35px;
            padding-right: 20px;
            font-family: Georgia, "Times New Roman", Times, serif;
            font-weight: normal;
            font-size: 18px;
            color: #fff;
        }
        .more a{
            color:#eeede0;
        }


        .menus{
            position: relative;
            width:204px;
            overflow: auto;
            top:56px;
            /*left:20px;*/
            /*background-color: #bebebe;*/
        }

        .menu_frame1{
            position: relative;
            /*top:70px;*/
            /*left:20px;*/
            float: left;
            width: 200px;
            /*margin-bottom:60px;*/
            padding: 2px 2px 5px 2px;
        }
        .menu_frame2{
            position: relative;
            /*top:300px;*/
            /*left:20px;*/
            float: left;
            width: 200px;
            /*margin-bottom:60px;*/
            padding: 2px 2px 5px 2px;
        }
        .menu_frame3{
            position: relative;
            /*top:530px;*/
            /*left:20px;*/
            float: left;
            width: 200px;
            /*margin-bottom:60px;*/
            padding: 2px 2px 5px 2px;

        }
        .menu_frame4{
            position: relative;
            /*top:760px;*/
            /*left:20px;*/
            float: left;
            width: 200px;
            /*margin-bottom:60px;*/
            padding: 2px 2px 5px 2px;
        }
        .menu_content{
            position: relative;
            color: deepskyblue;


            /*margin-bottom: 0;*/
            padding: 0;
            background: #FFFFFF;
            /*height:600px;*/
            border: 2px solid #707070;
            overflow: auto;

        }

        .inside_content{
            padding:4px 0 4px 0;
        }
        .a6 a{
            padding: 4px 0 4px 0;
        }

        .frame_top{
            position: relative;
            top:0;
            height: 30px;
            margin-bottom: 2px;
            padding: 2px 5px 5px 5px;
            background: #707070;
            border: 1px solid #707070;
            /*letter-spacing: -.5px;*/
            color: #FFFFFF;
        }

        .top_title{
            height: 30px;
            margin-bottom: 2px;
            padding: 5px 0 2px 5px;
            text-align: center;
            color: #fff;
            list-style-type: none;
        }

        .inside_content li{
            list-style: none;
            text-align: center;
        }


        .copyright_bar{
            text-align: center;
        }


    </style>

    <style>
        #back_to_top {position: fixed;width:48px;bottom:100px;
            right:100px; height:48px;cursor:pointer;display:none;
            background:url(../images/icons/back_to_top-48.png) no-repeat;}
    </style>

</head>
<body>

<div class="pubgallery_page">

    <div class="t">


        <div class="menus">
            <div class="menu_frame1">
                <div class="menu_content">
                    <div class="frame_top">

                        <li class="top_title">
                            我的图库
                        </li>
                    </div>
                    <div class="inside_content">
                        <li class="a6">

                            <a href="#" title=""><p style="background-color: #cce5ff;margin:1px auto;">示例菜单1</p></a>
                            <a href="#" title=""><p style="background-color: #cce5ff;margin:1px auto;">示例菜单1</p></a>
                            <a href="#" title=""><p style="background-color: #cce5ff;margin:1px auto;">示例菜单1</p></a>
                            <a href="#" title=""><p style="background-color: #cce5ff;margin:1px auto;">示例菜单1</p></a>
                            <a href="#" title=""><p style="background-color: #cce5ff;margin:1px auto;">示例菜单1</p></a>
                            <a href="#" title=""><p style="background-color: #cce5ff;margin:1px auto;">示例菜单1</p></a>

                        </li>

                    </div>
                </div>
            </div>
<%--            <div class="menu_frame2">
                <div class="menu_content">
                    <div class="frame_top">

                        <li class="top_title">
                            相关推荐2
                        </li>
                    </div>
                    <div class="inside_content">
                        <li class="a6">
                            <a href="#" title=""><p style="background-color: #cce5ff;margin:1px auto;">示例菜单2</p></a>
                            <a href="#" title=""><p style="background-color: #cce5ff;margin:1px auto;">示例菜单2</p></a>
                            <a href="#" title=""><p style="background-color: #cce5ff;margin:1px auto;">示例菜单2</p></a>
                            <a href="#" title=""><p style="background-color: #cce5ff;margin:1px auto;">示例菜单2</p></a>
                            <a href="#" title=""><p style="background-color: #cce5ff;margin:1px auto;">示例菜单2</p></a>
                            <a href="#" title=""><p style="background-color: #cce5ff;margin:1px auto;">示例菜单2</p></a>
                            <a href="#" title=""><p style="background-color: #cce5ff;margin:1px auto;">示例菜单2</p></a>

                        </li>
                    </div>
                </div>
            </div>
            <div class="menu_frame3">
                <div class="menu_content">
                    <div class="frame_top">

                        <li class="top_title">
                            相关推荐3
                        </li>
                    </div>
                    <div class="inside_content">
                        <li class="a6">
                            <a href="#" title=""><p style="background-color: #cce5ff;margin:1px auto;">示例菜单3</p></a>
                            <a href="#" title=""><p style="background-color: #cce5ff;margin:1px auto;">示例菜单3</p></a>
                            <a href="#" title=""><p style="background-color: #cce5ff;margin:1px auto;">示例菜单3</p></a>
                            <a href="#" title=""><p style="background-color: #cce5ff;margin:1px auto;">示例菜单3</p></a>
                            <a href="#" title=""><p style="background-color: #cce5ff;margin:1px auto;">示例菜单3</p></a>
                            <a href="#" title=""><p style="background-color: #cce5ff;margin:1px auto;">示例菜单3</p></a>
                            <a href="#" title=""><p style="background-color: #cce5ff;margin:1px auto;">示例菜单3</p></a>

                        </li>
                    </div>
                </div>
            </div>--%>
        </div>


        <%--  <div class="leftmenu">
            <div class="leftmunubar">
              <div class="leftmunubarline"></div>
              <dl class="system_log">
                <dt onClick="changeImage()">菜单1<img src="images/left/select_xl01.png"></dt>
                <dd class="first_dd"><a href="#">菜单1-1</a></dd>
                <dd><a href="#">菜单1-2</a></dd>
                <dd><a href="#">菜单1-3</a></dd>
              </dl>
              <dl class="custom">
                <dt onClick="changeImage()">菜单2<img src="images/left/select_xl01.png"></dt>
                <dd class="first_dd"><a href="#">菜单2-1</a></dd>
                <dd><a href="#">菜单2-2</a></dd>
                <dd><a href="#">菜单2-3</a></dd>
              </dl>
              <dl class="channel">
                <dt>菜单3<img src="images/left/select_xl01.png"></dt>
                <dd class="first_dd"><a href="#">菜单3-1</a></dd>
                <dd><a href="#">菜单3-2</a></dd>
                <dd><a href="#">菜单3-3</a></dd>
              </dl>
              <dl class="app">
                <dt onClick="changeImage()">菜单4<img src="images/left/select_xl01.png"></dt>
                <dd class="first_dd"><a href="#">菜单4-1</a></dd>
                <dd><a href="#">菜单4-2</a></dd>
                <dd><a href="#">菜单4-3</a></dd>
              </dl>
              <dl class="cloud">
                <dt>菜单4<img src="images/left/select_xl01.png"></dt>
                <dd class="first_dd"><a href="#">菜单4-1</a></dd>
                <dd class="first_dd"><a href="#">菜单4-2</a></dd>
                <dd class="first_dd"><a href="#">菜单4-3</a></dd>
              </dl>
              <dl class="syetem_management">
                <dt>菜单5<img src="images/left/select_xl01.png"></dt>
                <dd class="first_dd"><a href="#">菜单5-1</a></dd>
                <dd><a href="#">菜单5-2</a></dd>
                <dd><a href="#">菜单5-3</a></dd>
              </dl>
            </div>
          </div>--%>
        <%--
          <script type="test/javascript" src="js/jquery.js"></script>
          <script type="test/javascript">
              $(".leftmunubar dt").css({"background-color":"slategray"});
              $(".leftmunubar dt img").attr("src","images/left/select_xl01.png");
              $(function(){
                  $(".leftmunubar dt").click(function(){
                      //每次点击都把所有“dt”设置为"#3b3b3b"颜色
                      $(".leftmunubar dt").css({"background-color":"slategray"});
                      //把本次点击的对象设置为"midnightblue"颜色
                      $(this).css({"background-color": "gray"});
                      $(this).parent().find('dd').removeClass("chioced_menu");
                      $(".leftmunubar dt img").attr("src","images/left/select_xl01.png");
                      $(this).parent().find('img').attr("src","images/left/select_xl.png");
                      $(".chioced_menu").slideUp();
                      $(this).parent().find('dd').slideToggle();
                      $(this).parent().find('dd').addClass("chioced_menu");
                  });
              })
          </script>
        --%>


        <div class="show_img_list">
            <div class="list">
                <div class="uploadDay">
                    <ul>
                        <li class="time_title">
                            <%--<%--%>
                            <%--Date today = new Date();--%>
                            <%--SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");--%>
                            <%--String dateString = formatter.format(today);--%>
                            <%--out.print(dateString);--%>
                            <%--%>--%>
                            最近上传
                        </li>
                        <li class="more">
                            <a href="/QueryAllImagesServlet?belong=pub&classify=fromLastMonth&pg=0">

                                更多>>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="allImgs">
                    <%
                        //      UploadPriImageDaoImpl uploadImage = new UploadPriImageDaoImpl();
                        UploadPubImages uploadPubImages = new UploadPubImages();
                        List<String> names = uploadPubImages.getPubImgFileNames();
                        if(null != names && names.size() != 0){

                            Collections.reverse(names);
                            for(int i =0;i<18;i++) {
                                String imgName = names.get(i);

                                long imgId = uploadPubImages.getPubImgId(imgName);

                                request.setAttribute("imgName", imgName);
                    %>
                    <div class="img" title="${imgName}">
                        <a target="_blank" href="/ShowImageDetail?imgbelong=pub&from=allimages&imgId=<%=imgId%>">
                            <img src="http://www.meiticoo.com/imagedata/pub_img/${imgName}" alt="图片无法显示">
                            <%--<img src="http://localhost:8080/imagedata/pub_img/${imgName}" alt="图片无法显示">--%>
                        </a>
                        <%--                    <div class="desc">
                                                图片&nbsp;${ph}
                                            </div>--%>
                    </div>
                    <%
                            request.removeAttribute("ph");
                        }
                    %>
                </div>
            </div>
            <div class="list">

                <div class="uploadDay">
                    <ul>
                        <li class="time_title">
                            <%--<%--%>
                            <%--Date today1 = new Date();--%>
                            <%--SimpleDateFormat formatter1 = new SimpleDateFormat("yyyy-MM-dd");--%>
                            <%--String dateString1 = formatter1.format(today1);--%>
                            <%--out.print(dateString1);--%>
                            <%--%>--%>
                            智能分类精选
                        </li>
                        <li class="more">
                            <a href="">

                                更多>>
                            </a>
                        </li>
                    </ul>
                </div>
<%--                <div class="allImgs">
                    <%
                        for(int i =0;i<14;i++) {
                            String imgPath = paths.get(i);
                            long imgId = uploadPubImages.getPubImgId(imgPath);

                            String[] strings = paths.get(i).split("/");
                            String p = strings[strings.length - 1];
                            request.setAttribute("ph", p);
                    %>
                    <div class="img" title="${ph}">
                        <a target="_blank" href="../jsp/showImage.jsp?imgId=<%=imgId%>">
                            <img src="http://www.meiticoo.com/imagedata/pub_img/${ph}" alt="图片无法显示">
                        </a>
                    </div>
                    <%
                            request.removeAttribute("ph");
                        }
                    %>
                </div>--%>
                <p>暂未开放</p>
            </div>
            <div class="list">
                <div class="uploadDay">
                    <ul>
                        <li class="time_title">
                            <%--<%--%>
                            <%--Date today2 = new Date();--%>
                            <%--SimpleDateFormat formatter2 = new SimpleDateFormat("yyyy-MM-dd");--%>
                            <%--String dateString2 = formatter2.format(today2);--%>
                            <%--out.print(dateString2);--%>
                            <%--%>--%>
                            按上传时间分类精选
                        </li>
                        <li class="more">
                            <a href="">
                                更多>>
                            </a>
                        </li>
                    </ul>
                </div>
<%--                <div class="allImgs">
                    <%
                        for(int i =0;i<14;i++) {
                            String imgPath = paths.get(i);
                            long imgId = uploadPubImages.getPubImgId(imgPath);

                            String[] strings = paths.get(i).split("/");
                            String p = strings[strings.length - 1];
                            request.setAttribute("ph", p);
                    %>
                    <div class="img" title="${ph}">
                        <a target="_blank" href="../jsp/showImage.jsp?imgId=<%=imgId%>">
                            <img src="http://www.meiticoo.com/imagedata/pub_img/${ph}" alt="图片无法显示">
                        </a>

                    </div>
                    <%
                            request.removeAttribute("ph");
                        }
                    %>
                </div>--%>
                <p>暂未开放</p>
            </div>
            <div class="list">
                <div class="uploadDay">
                    <ul>
                        <li class="time_title">
                            <%--<%--%>
                            <%--Date today3 = new Date();--%>
                            <%--SimpleDateFormat formatter3 = new SimpleDateFormat("yyyy-MM-dd");--%>
                            <%--String dateString3 = formatter3.format(today3);--%>
                            <%--out.print(dateString3);--%>
                            <%--%>--%>
                            按图片主题色调分类精选
                        </li>
                        <li class="more">
                            <a href="">
                                更多>>
                            </a>
                        </li>
                    </ul>
                </div>
<%--                <div class="allImgs">
                    <%
                        for(int i =0;i<14;i++) {
                            String imgPath = paths.get(i);
                            long imgId = uploadPubImages.getPubImgId(imgPath);

                            String[] strings = paths.get(i).split("/");
                            String p = strings[strings.length - 1];
                            request.setAttribute("ph", p);
                    %>
                    <div class="img" title="${ph}">
                        <a target="_blank" href="../jsp/showImage.jsp?imgId=<%=imgId%>">
                            <img src="http://www.meiticoo.com/imagedata/pub_img/${ph}" alt="图片无法显示">
                        </a>

                    </div>
                    <%
                            request.removeAttribute("ph");
                        }
                    %>
                </div>--%>
                <p>暂未开放</p>
            </div>
            <div class="list">
                <div class="uploadDay">
                    <ul>
                        <li class="time_title">
                            <%--<%--%>
                            <%--Date today4 = new Date();--%>
                            <%--SimpleDateFormat formatter4 = new SimpleDateFormat("yyyy-MM-dd");--%>
                            <%--String dateString4 = formatter4.format(today4);--%>
                            <%--out.print(dateString4);--%>
                            <%--%>--%>
                            其它分类精选
                        </li>
                        <li class="more">
                            <a href="">
                                更多>>
                            </a>
                        </li>
                    </ul>
                </div>
<%--                <div class="allImgs">
                    <%
                        for(int i =0;i<14;i++) {
                            String imgPath = paths.get(i);
                            long imgId = uploadPubImages.getPubImgId(imgPath);

                            String[] strings = paths.get(i).split("/");
                            String p = strings[strings.length - 1];
                            request.setAttribute("ph", p);
                    %>
                    <div class="img" title="${ph}">
                        <a target="_blank" href="../jsp/showImage.jsp?imgId=<%=imgId%>">
                            <img src="http://www.meiticoo.com/imagedata/pub_img/${ph}" alt="图片无法显示">
                        </a>

                    </div>
                    <%
                                request.removeAttribute("ph");
                            }
                    %>
                </div>--%>
                <%
                    }
                %>
            </div>
            <div class="copyright_bar">
                <p>
                    Copyright © 2017 Image group. All rights reserved.
                </p>
            </div>
        </div>


        <%--返回顶部--%>
        <div id="back_to_top" title="回到顶部"></div>
        <script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript">
            $(window).scroll(function(){
                var sc=$(window).scrollTop();
                if(sc>200){
                    $("#back_to_top").css("display","block");
                    $("#back_to_top").css("right","20px")
                }else{
                    $("#back_to_top").css("display","none");
                }
            });
            $("#back_to_top").click(function(){
                var sc=$(window).scrollTop();
                $('body,html').animate({scrollTop:0},500);
            });
        </script>

    </div>

</div>

</body>
</html>
