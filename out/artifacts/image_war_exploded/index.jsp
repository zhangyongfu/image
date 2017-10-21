<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-10-18
  Time: 下午8:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1"  />
  <title>Image</title>
  <link href="css/style.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript"  src="js/nav.js"></script>
  </head>
  <body>
  <div id="top_bg">
    <div class="top">
      <a class="logo_l" href="/" title="返回首页"></a>
      <!--导航开始-->
      <div class="nav_z">
        <ul id="navul" class="cl">
          <li id="start">
            <a href="#">首页</a>
          </li>
          <li id="view">
            <a href="#">浏览</a>
          </li>
          <li id="about">
            <a href="#">关于</a>
          </li>
        </ul>
      </div>
      <ul>
        <li id="top_login">
          <a id="login" href="#">登录</a>
          |
          <a id="register" href="#">注册</a>
        </li>
      </ul>
    </div>
  </div>
  <div class="container">
    <div class="leftsidebar_box">
      <div class="line"></div>
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
  </div>
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript">
      $(".leftsidebar_box dt").css({"background-color":"mediumslateblue"});
      $(".leftsidebar_box dt img").attr("src","images/left/select_xl01.png");
      $(function(){
          $(".leftsidebar_box dd").hide();
          $(".leftsidebar_box dt").click(function(){
              $(".leftsidebar_box dt").css({"background-color":"mediumslateblue"})
              $(this).css({"background-color": "#215ee4"});
              $(this).parent().find('dd').removeClass("menu_chioce");
              $(".leftsidebar_box dt img").attr("src","images/left/select_xl01.png");
              $(this).parent().find('img').attr("src","images/left/select_xl.png");
              $(".menu_chioce").slideUp();
              $(this).parent().find('dd').slideToggle();
              $(this).parent().find('dd').addClass("menu_chioce");
          });
      })
  </script>
  <div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
  </div>
  </body>
</html>
