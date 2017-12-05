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
<!DOCTYPE html>
<html>
<head>

    <%@include file="topmenu.jsp"%>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1"  />
    <title>Image</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
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

</head>
<body>

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
              //每次点击都把所有“dt”设置为"mediumslateblue"颜色
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

<div  id="top">

</div>

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
                    最近一个月上传精选
                </li>
                <li class="more">
                    <a href="/QueryAllImagesServlet?classify=fromLastMonth">

                    更多>>
                    </a>
                </li>
            </ul>
        </div>
        <div class="allImgs">
            <%
                //      UploadPriImageDaoImpl uploadImage = new UploadPriImageDaoImpl();
                UploadPubImages uploadPubImages = new UploadPubImages();
                List<String> paths = uploadPubImages.getPubImgFilePath();
                if(null != paths && paths.size() != 0){

                    Collections.reverse(paths);
                    for(int i =0;i<8;i++) {
                        String imgPath = paths.get(i);
                        long imgId = uploadPubImages.getPubImgId(imgPath);

                        String[] strings = paths.get(i).split("/");
                        String p = strings[strings.length - 1];
                        request.setAttribute("ph", p);
                %>
                <div class="img" title="${ph}">
                    <a target="_blank" href="../jsp/showImage.jsp?imgId=<%=imgId%>">
                    <img src="http://localhost:8080/i/pub_img/${ph}" alt="Ballade" width="250" height="170px">
                    </a>
                    <div class="desc">
                        图片&nbsp;${ph}
                    </div>
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
            <div class="allImgs">
                <%
                    for(int i =0;i<8;i++) {
                        String imgPath = paths.get(i);
                        long imgId = uploadPubImages.getPubImgId(imgPath);

                        String[] strings = paths.get(i).split("/");
                        String p = strings[strings.length - 1];
                        request.setAttribute("ph", p);
                %>
                <div class="img" title="${ph}">
                    <a target="_blank" href="../jsp/showImage.jsp?imgId=<%=imgId%>">
                    <img src="http://localhost:8080/i/pub_img/${ph}" alt="Ballade" width="250" height="170px">
                    </a>
                    <div class="desc">
                        图片&nbsp;${ph}
                    </div>
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
            <div class="allImgs">
                <%
                    for(int i =0;i<8;i++) {
                        String imgPath = paths.get(i);
                        long imgId = uploadPubImages.getPubImgId(imgPath);

                        String[] strings = paths.get(i).split("/");
                        String p = strings[strings.length - 1];
                        request.setAttribute("ph", p);
                %>
                <div class="img" title="${ph}">
                    <a target="_blank" href="../jsp/showImage.jsp?imgId=<%=imgId%>">
                    <img src="http://localhost:8080/i/pub_img/${ph}" alt="Ballade" width="250" height="170px">
                    </a>
                    <div class="desc">
                        图片&nbsp;${ph}
                    </div>
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
            <div class="allImgs">
                <%
                    for(int i =0;i<8;i++) {
                        String imgPath = paths.get(i);
                        long imgId = uploadPubImages.getPubImgId(imgPath);

                        String[] strings = paths.get(i).split("/");
                        String p = strings[strings.length - 1];
                        request.setAttribute("ph", p);
                %>
                <div class="img" title="${ph}">
                    <a target="_blank" href="../jsp/showImage.jsp?imgId=<%=imgId%>">
                        <img src="http://localhost:8080/i/pub_img/${ph}" alt="Ballade" width="250" height="170px">
                    </a>
                    <div class="desc">
                        图片&nbsp;${ph}
                    </div>
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
                            <%--Date today4 = new Date();--%>
                            <%--SimpleDateFormat formatter4 = new SimpleDateFormat("yyyy-MM-dd");--%>
                            <%--String dateString4 = formatter4.format(today4);--%>
                            <%--out.print(dateString4);--%>
                        <%--%>--%>
                        其它分类精选
                    </li>
                    <li class="more">
                        <a href="./test.jsp">
                        更多>>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="allImgs">
                <%
                    for(int i =0;i<8;i++) {
                        String imgPath = paths.get(i);
                        long imgId = uploadPubImages.getPubImgId(imgPath);

                        String[] strings = paths.get(i).split("/");
                        String p = strings[strings.length - 1];
                        request.setAttribute("ph", p);
                %>
                <div class="img" title="${ph}">
                    <a target="_blank" href="../jsp/showImage.jsp?imgId=<%=imgId%>">
                        <img src="http://localhost:8080/i/pub_img/${ph}" alt="Ballade" width="250" height="170px">
                    </a>
                    <div class="desc">
                        图片&nbsp;${ph}
                    </div>
                </div>
                <%
                        request.removeAttribute("ph");
                    }

                }
            %>
        </div>
    </div>
    <div>
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
<style>
    #back_to_top {position: fixed;width:48px;bottom:100px;
        right:100px; height:48px;cursor:pointer;display:none;
        background:url(../images/icons/back_to_top-48.png) no-repeat;}
</style>

</body>
</html>
