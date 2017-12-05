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
<%@ page import="org.image.model.PubImg" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1"  />
  <title>Image</title>
  <link href="css/style.css" rel="stylesheet" type="test/css" />
    <link href="css/topMenuStyle.css" rel="stylesheet" type="text/css" />

    <div id="top_bg">
      <div class="top">
        <a class="logo_l" href="/" title="返回首页">
          <img class="logo_img" src="images/logo/logo-64.png">
        </a>

        <nav class="top_menu">
          <ul class="primary_menu">
            <li class="menu_item"><a href="/" style="color:white">首页</a></li>
            <li class="menu_item"><a>图库</a>
              <ul class="sub_menu">
                <li class="sub_menu_item"> <a href="jsp/pubgallery.jsp" target="_blank" title="公共图库">公共图库</a></li>
                <%--<li class="sub_menu_item"> <a href="/jsp/test.jsp" target="_blank">公共图库</a></li>--%>
                <li class="sub_menu_item"> <a href="jsp/mygallery.jsp" target="_blank" title="私人图库">私人图库</a></li>
                <li class="sub_menu_item"> <a href="jsp/mygallery.jsp" target="_blank">创建图库</a></li>
              </ul>
            </li>
            <li class="menu_item"><a>关于</a>
              <ul class="sub_menu">
                <li class="sub_menu_item"> <a href="jsp/webBuild.jsp" target="_blank">网站</a></li>
                <li class="sub_menu_item"> <a href="jsp/about.jsp" target="_blank">团队</a></li>
                <li class="sub_menu_item"> <a href="jsp/about.jsp" target="_blank">反馈</a></li>
                <li class="sub_menu_item"> <a href="jsp/about.jsp" target="_blank">联系我们</a></li>
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



    <style type="text/css">
      .index_div{
        position: relative;
        top:5px;
        left:15px;
        float: left;
        /*width: 1280px;*/
        padding: 0;
      }
      .index_img{
        position: relative;
        color: deepskyblue;


        margin-bottom: 50px;
        padding: 0;
        background: #FFFFFF;
        height:600px;
        border: 2px solid #D6E6CC;

      }
      .index_div_title{
        position: relative;
        top:0;
        height: 30px;
        margin-bottom: 10px;
        padding: 2px 5px 5px 5px;
        background: #D6E6CC;
        border: 1px solid #D6E6CC;
        /*letter-spacing: -.5px;*/
        color: #FFFFFF;
      }
      .index_img_title{
        height: 30px;
        margin-bottom: 3px;
        padding: 5px 0px 2px 5px;
        text-align: left;
        color: #000;
        list-style-type: none;
      }
      .index_img_title_right{
        float: right;
        margin-top: -35px;
        padding-right: 20px;
        font-family: Georgia, "Times New Roman", Times, serif;
        font-weight: normal;
        font-size: 18px;
        color: #000;
        list-style-type: none;
      }
      .index_beauty_img{

        position: relative;
        left:13px;
        width:1300px;
      }
      .img{

        height:auto;
        width:246px;
        margin-bottom: 15px;
        margin-right: 10px;
        float:left;
      }

      .img a{
        position: relative;
        margin:0;
        padding:0;
        /*left:20px;*/
        /*top:60px;*/
        width:246px;
        height:170px;
        background-color: transparent;
        text-align: center;
        display: table-cell;
        vertical-align: middle;
      }

      .img a img{

        /*padding: 40px 50px 40px 50px;*/
        position: relative;
        margin:auto;
        /*top:50%;*/

        /*left:0;*/
        /*width:90%;*/
        max-width:250px;
        max-height:170px;
        width:auto;
        height:auto;
      }
      .copyright_text{

        text-align: center;
      }



    </style>
  </head>
  <body>

  <div class="search_list">


  <form class="searchPageBar" action="/SearchImgPage" method="get">

    <div class="web_logo">
      <a href="/">


      <%--<img src="images/icons/logo1.png">--%>
      <img src="images/logo/logo-128.png">
        bro pics
      </a>
    </div>

    <div class="search_hint">
      <img src="images/icons/search.png">
      百万张图片等你搜

    </div>

    <input class="searchPageImg" type="search" name="searchText" placeholder="搜索图片..">
    <input class="searchPageGo" type="submit" value="搜索">


  </form>
  <%--<%--%>
    <%--HttpSession test = request.getSession();--%>
    <%--String searchText = (String)test.getAttribute("searchText");--%>
    <%--out.print(searchText);--%>
  <%--%>--%>
  </div>

  <div class="index_div">


    <div class="index_img">

      <div class="index_div_title">


        <li class="index_img_title">
          每日推荐
        </li>

        <li class="index_img_title_right">
          <a href="">

            更多>>
          </a>
        </li>
        <%--<div class="index_img_title">--%>
        <%--&lt;%&ndash;<h2>&ndash;%&gt;--%>
          <%--&lt;%&ndash;一图一故事&ndash;%&gt;--%>
        <%--&lt;%&ndash;</h2>&ndash;%&gt;--%>

        <%--</div>--%>
        <%--<hr>--%>
      </div>
      <div class="new_img">

      </div>


      <div class="index_beauty_img">


      <%


        //      UploadPriImageDaoImpl uploadImage = new UploadPriImageDaoImpl();

        UploadPubImages uploadPubImages = new UploadPubImages();

        List<String> paths = uploadPubImages.getPubImgFilePath();

        if(null !=paths && paths.size() != 0){


          for(int i =0;i<15;i++) {

              String imgPath = paths.get(i);
              long imgId = uploadPubImages.getPubImgId(imgPath);



              String[] strings = paths.get(i).split("/");
              String p = strings[strings.length - 1];
              request.setAttribute("ph", p);

        %>

        <div class="img" title="${ph}">
          <a href="./jsp/showImage.jsp?imgId=<%=imgId%>" target="_blank">
            <img src="http://localhost:8080/i/pub_img/${ph}" alt="Ballade">
          </a>
        </div>

        <%
            request.removeAttribute("ph");
          }
        }
      %>
    </div>
    </div>
    <div class="copyright_text">
      <p>
        Copyright © 2017 Image group. All rights reserved.
      </p>

    </div>
  </div>

  <%--<a href="jsp/test.jsp">askjfaljfa</a>--%>
  </body>
</html>
