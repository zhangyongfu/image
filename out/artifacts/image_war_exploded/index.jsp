<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-10-18
  Time: 下午8:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1"  />
  <title>Image</title>
  <link href="css/style.css" rel="stylesheet" type="text/css" />

    <div id="top_bg">
      <div class="top">
        <a class="logo_l" href="/" title="返回首页"></a>
        <div class="nav_z">
          <ul id="navul" class="cl">
            <li id="start">
              <a href="/" target="main">首页</a>
            </li>
            <li id="view">
              <a href="#">浏览</a>
            </li>
            <li id="about">
              <a href="/jsp/about.jsp">关于</a>
            </li>
          </ul>
        </div>
        <ul>
          <li id="top_login">
            <a id="login" href="/jsp/login.jsp">登录</a>
            |
            <a id="register" href="/jsp/goregister.jsp">注册</a>
          </li>
        </ul>
      </div>
    </div>

  </head>
  <body>

  <div class="leftmenu">
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
  </div>
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript">
      $(".leftmunubar dt").css({"background-color":"mediumslateblue"});
      $(".leftmunubar dt img").attr("src","images/left/select_xl01.png");
      $(function(){
          $(".leftmunubar dt").click(function(){
              //每次点击都把所有“dt”设置为"mediumslateblue"颜色
              $(".leftmunubar dt").css({"background-color":"mediumslateblue"})
              //把本次点击的对象设置为"midnightblue"颜色
              $(this).css({"background-color": "midnightblue"});
              $(this).parent().find('dd').removeClass("chioced_menu");
              $(".leftmunubar dt img").attr("src","images/left/select_xl01.png");
              $(this).parent().find('img').attr("src","images/left/select_xl.png");
              $(".chioced_menu").slideUp();
              $(this).parent().find('dd').slideToggle();
              $(this).parent().find('dd').addClass("chioced_menu");
          });
      })
  </script>
  <div class="list">
    <div class="img">
    <a target="_blank" href="#">
      <img src="./images/list/0.jpg" alt="Ballade" width="300px" height="200px">
    </a>
    <div class="desc">图片1</div>
  </div>
    <div class="img">
      <a target="_blank" href="#">
        <img src="./images/list/1.jpg" alt="Ballade" width="300px" height="200px">
      </a>
      <div class="desc">图片2</div>
    </div>
    <div class="img">
      <a target="_blank" href="#">
        <img src="./images/list/2.jpg" alt="Ballade" width="300px" height="200px">
      </a>
      <div class="desc">图片3</div>
    </div>
    <div class="img">
      <a target="_blank" href="#">
        <img src="./images/list/3.jpg" alt="Ballade" width="300" height="200px">
      </a>
      <div class="desc">图片4</div>
    </div>

    <div class="img">
    <a target="_blank" href="#">
      <img src="./images/list/4.jpg" alt="Ballade" width="300px" height="200px">
    </a>
    <div class="desc">图片5</div>
  </div>
    <div class="img">
      <a target="_blank" href="#">
        <img src="./images/list/5.jpg" alt="Ballade" width="300px" height="200px">
      </a>
      <div class="desc">图片6</div>
    </div>
    <div class="img">
      <a target="_blank" href="#">
        <img src="./images/list/6.jpg" alt="Ballade" width="300px" height="200px">
      </a>
      <div class="desc">图片7</div>
    </div>
    <div class="img">
      <a target="_blank" href="#">
        <img src="./images/list/7.jpg" alt="Ballade" width="300" height="200px">
      </a>
      <div class="desc">图片8</div>
    </div>
    <div class="img">
    <a target="_blank" href="#">
      <img src="./images/list/8.jpg" alt="Ballade" width="300px" height="200px">
    </a>
    <div class="desc">图片9</div>
  </div>
    <div class="img">
      <a target="_blank" href="#">
        <img src="./images/list/9.jpg" alt="Ballade" width="300px" height="200px">
      </a>
      <div class="desc">图片10</div>
    </div>
    <div class="img">
      <a target="_blank" href="#">
        <img src="./images/list/10.jpg" alt="Ballade" width="300px" height="200px">
      </a>
      <div class="desc">图片11</div>
    </div>
    <div class="img">
      <a target="_blank" href="#">
        <img src="./images/list/11.jpg" alt="Ballade" width="300" height="200px">
      </a>
      <div class="desc">图片12</div>
    </div>
    <div class="img">
      <a target="_blank" href="#">
        <img src="./images/list/12.jpg" alt="Ballade" width="300" height="200px">
      </a>
      <div class="desc">图片13</div>
    </div>
  </div>

  <button class="back_to_top">
    返回顶部
  </button>

  </body>
</html>
