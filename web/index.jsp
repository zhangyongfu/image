<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-10-18
  Time: 下午8:29
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="org.image.model.User" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.List" %>
<%@ page import="org.image.model.UploadPubImages" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1"  />
  <title>Image</title>
  <%--<link href="css/style.css" rel="stylesheet" type="text/css" />--%>
    <link href="css/test.css" rel="stylesheet" type="text/css" />

    <div id="top_bg">
      <div class="top">
        <a class="logo_l" href="/" title="返回首页"></a>

        <nav class="top_menu">
          <ul class="primary_menu">
            <li class="menu_item"><a href="/" style="color:white">首页</a></li>
            <li class="menu_item"><a>图库</a>
              <ul class="sub_menu">
                <li class="sub_menu_item"> <a href="/jsp/pubgallery.jsp" target="_blank">公共图库</a></li>
                <li class="sub_menu_item"> <a href="/jsp/mygallery.jsp" target="_blank">私人图库</a></li>
                <li class="sub_menu_item"> <a href="/jsp/mygallery.jsp" target="_blank">创建图库</a></li>
              </ul>
            </li>
            <li class="menu_item"><a>关于</a>
              <ul class="sub_menu">
                <li class="sub_menu_item"> <a href="/jsp/about.jsp" target="_blank">网站</a></li>
                <li class="sub_menu_item"> <a href="/jsp/about.jsp" target="_blank">团队</a></li>
                <li class="sub_menu_item"> <a href="/jsp/about.jsp" target="_blank">反馈</a></li>
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
            <a class="show_user" href="/jsp/userpage.jsp" title="<%=user.getName()%>">
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
  </head>
  <body>

  <div class="search_list">


  <form class="searchPageBar" action="/SearchImgPage" method="get">

    <div class="web_logo">


    <img src="images/icons/logo1.png">
      IMAGE LOGO
    </div>
    <div class="search_hint">
      <img src="images/icons/search.png">
      百万张图片等你搜

    </div>

    <input class="searchPageImg" type="search" name="searchText" placeholder="搜索图片..">
    <input class="searchPageGo" type="submit" value="搜索">


  </form>
  <%--<%--%>
    <%--HttpSession text = request.getSession();--%>
    <%--String searchText = (String)text.getAttribute("searchText");--%>
    <%--out.print(searchText);--%>
  <%--%>--%>
  </div>
  <div class="index_img">
    <h2>
      一图一故事
    </h2>

    <hr style="border: none;border-top:4px solid #eebebe;">

    <div class="new_img">

    </div>



    <%
      //      UploadPriImageDaoImpl uploadImage = new UploadPriImageDaoImpl();
      UploadPubImages uploadPubImages = new UploadPubImages();

      List<String> paths = uploadPubImages.getPubImgFilePath();

      for(String path:paths) {
        String[] strings = path.split("/");
        String p = strings[strings.length - 1];
        request.setAttribute("ph", p);

    %>

    <div class="img" title="${ph}">
      <a href="" target="_blank">
      <img src="http://localhost:8080/i/pub_img/${ph}" alt="Ballade" width="250" height="170px">
      </a>
    </div>

    <%
        request.removeAttribute("ph");
      }
    %>

  </div>





  </div>


  </body>
</html>
