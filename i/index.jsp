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
<%@ page import="net.sf.json.JSONObject" %>
<%@ page import="java.util.Collections" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <link rel="icon" href="./images/logo/logo-16.png" type="image/x-icon" />
    <link rel="shortcut icon" href="./images/logo/logo-16.png" type="image/x-icon" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1"  />
  <title>Meiticoo-方便易用的媒体库</title>
    <meta name="description" content="便捷的媒体内容查看和搜索，让图片、音乐和视频丰富您的生活">
  <link href="css/style.css" rel="stylesheet" type="test/css" />
    <link href="css/topMenuStyle.css" rel="stylesheet" type="text/css" />




    <style type="text/css">

      html {
        margin: 0 auto;
        background: url(../images/background/0336.jpg) fixed #ffffff;

      }
      a{
          text-decoration: none;
      }

      .preload-01 { background: url(http://domain.tld/image-01.png) no-repeat -9999px -9999px; } .preload-02 { background: url(http://domain.tld/image-02.png) no-repeat -9999px -9999px; } .preload-03 { background: url(image-03.png) no-repeat -9999px -9999px; } .preload-04 { background: url(http://domain.tld/image-04.png) no-repeat -9999px -9999px; } .preload-05 { background: url(http://domain.tld/image-05.png) no-repeat -9999px -9999px; }

      .t{
        width:1280px;

        margin:0 auto;

          background-color: #ffffff;


      }

      body{
          margin:0;
          padding:0;
          overflow-x:hidden;
          background-color: #ffffff;

          text-align: center;
      }

      a{
          text-decoration:none;
      }



      .searchPageBar{
          position: relative;
          top:100px;
          /*float: left;*/
          /*width: 1280px;*/
          padding: 0;

      }
      .searchPageImg{
          width: 500px;
          height: 33px;
      }

      .searchPageGo{
          height: 33px;
          width: 80px;
          background-color: #707070;
          border:none;
          color:black;
          cursor: pointer;
      }
      .searchPageGo:hover{
          background-color: #555555;
      }


      /*.all_img_div{*/
      /*position: relative;*/
      /*top:5px;*/
      /*left:30px;*/
      /*float: left;*/
      /*!*width: 670px;*!*/
      /*padding: 0;*/
      /*}*/




      .search_list{
          /*background-image: url(../images/background2.jpg);*/
          /*background-color: #FFFFFF;*/
          height:510px;
          /*background-repeat:no-repeat;*/




      }
      .web_logo{
          position: relative;

      }
      .search_hint{
          position: relative;
          right:220px;
          font-size: 25px;
          color: #555555;
          bottom:5px;
      }


      .search_list{
        width:1280px;

        margin-left: auto;
        margin-right: auto;
      }

      .index_div{
          position: relative;
        width:auto;
        margin-left: auto;
        margin-right: auto;
      }
      .index_img{
        width:1280px;
        margin-left: auto;
        margin-right:auto;

        position: relative;
        color: deepskyblue;


        margin-bottom: 50px;
        /*padding: 0;*/
        background: transparent;
        /*width:100%;*/
        height:auto;
        border: 2px solid #707070;

      }
      .index_div_title{
        position: relative;
        top:0;
        height: 30px;
        margin-bottom: 2px;
        padding: 2px 5px 5px 5px;
        background: #707070;
        /*background: transparent;*/
        border-bottom: 1px solid black;
        /*letter-spacing: -.5px;*/
        color: #FFFFFF;
      }
      .index_img_title{
        height: 30px;
        margin-bottom: 3px;
        padding: 5px 0px 2px 5px;
        text-align: left;
        color: #fff;
        list-style-type: none;
      }
      .index_img_title_right{
        float: right;
        margin-top: -35px;
        padding-right: 20px;
        font-family: Georgia, "Times New Roman", Times, serif;
        font-weight: normal;
        font-size: 18px;
        color: #fff;
        list-style-type: none;
      }
      .index_img_title_right a{
        color:#eeede0;
      }
/*      .index_beauty_img{
        padding: 2px;
        display: flex;
        flex-wrap: wrap;
        position: relative;
        !*left:13px;*!
        width:1300px;
      }
      .index_beauty_img::after{
        content: '';
        flex-grow: 999999999999;
        !*min-width: 20%;*!
      }*/
      .index_beauty_img {
        padding: 2px;
        display: flex;
        flex-wrap: wrap;
        position: relative;




        /*padding:2px 2px 2px 2px;*/
        /*left:13px;*/
        width:100%;
      }

      .index_beauty_img::after {//处理最后一行
        /*content: '';*/
        content: normal;
        flex-grow: 999999999;

      }
      .img{
        background-color: #ebebeb;

        margin: 2px;
        position: relative;
        height: 200px;
        width:300px;
        /*width:auto;*/
        flex-grow: 1;
        /*background-color: white;*/
        overflow: hidden;

        /*width:246px;*/

/*        height:auto;
        width:246px;
        margin-bottom: 15px;
        margin-right: 10px;
        float:left;*/
      }

      .img a{
/*        position: relative;
        margin:0;
        padding:0;
        !*left:20px;*!
        !*top:60px;*!
        width:246px;
        height:170px;
        background-color: transparent;
        text-align: center;
        display: table-cell;
        vertical-align: middle;*/
      }

      .img a .my_img{
        /*display: none;*/
        max-width: 100%;
        min-width: 100%;
        /*width:300px;*/
        height: 200px;
        background: url("/images/content/photo.png") #ffffff;
        object-fit: cover;
        vertical-align: bottom;
        -webkit-transition: all 0.6s;
        -moz-transition: all 0.6s;
        -ms-transition: all 0.6s;
        -o-transition: all 0.6s;
        transition: all 0.6s;

/*        !*padding: 40px 50px 40px 50px;*!
        position: relative;
        margin:auto;
        !*top:50%;*!

        !*left:0;*!
        !*width:90%;*!
        max-width:250px;
        max-height:170px;
        width:auto;
        height:auto;*/
      }


      @keyframes myfirst
      {
        0%{
          width:32px;
          height:32px;
        }
        50%{
          width:32px;
          height:40px;
        }
        100% {
          width:32px;
          height:32px;
        }
      }
      @-moz-keyframes myfirst
      {
        0%{
          width:32px;
          height:32px;
        }
        50%{
          width:32px;
          height:40px;
        }
        100% {
          width:32px;
          height:32px;
        }
      }
      @-webkit-keyframes myfirst
      {
        0%{
          width:32px;
          height:32px;
        }
        50%{
          width:32px;
          height:40px;
        }
        100% {
          width:32px;
          height:32px;
        }
      }
      @-o-keyframes myfirst
      {
        0%{
          width:32px;
          height:32px;
        }
        50%{
          width:32px;
          height:40px;
        }
        100% {
          width:32px;
          height:32px;
        }
      }


      /*
      for image top functions
      */
      .img:hover .func_imgs{
        /*cursor: pointer;*/
        /*background-color: #e0a800;*/
        display: inline-block;
        animation: myfirst 0.5s;
        -moz-animation: myfirst 0.5s;
        -webkit-animation: myfirst 0.5s;
        -o-animation: myfirst 0.5s;

      }
      .img:hover .my_img{
        /*cursor: pointer;*/
        transform: scale(1.1);

      }
      .img:hover .hearts{
        /*cursor: pointer;*/
        /*background-color: #e83e8c;*/
        display: inline-block;

      }

      .func_imgs{
        width:32px;
        height:32px;
        display: none;
        position: absolute;
        right:2px;
        bottom:2px;
      }

      .hearts{
        width:auto;
        height:20px;
        display: none;
        position: absolute;
        left:2px;
        top:0;
      }
      /*.hearts span{*/
        /*position: relative;*/
        /*margin:0 2px 2px 2px;*/
        /*top:2px;*/
      /*}*/
      /*.hearts img{*/
        /*position: relative;*/
        /*!*top:8px;*!*/
      /*}*/

       .heart_num{
         animation:change 3s linear 0s infinite;
       }
      @keyframes change{
        0%   {color:#ffffff;
        }
        25%{
          color:#ff6600;
        }
        50%{
          color:#28a745;
        }
        75%{
          color:#007bff;
        }
        100% {
          color:#f0f0f0;
        }
      }



      .copyright_text{

        width:1280px;
        height:20px;
          margin-bottom: 20px;
        background-color: #ffffff;

        text-align: center;
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
        color: #ffffff;
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
      .user_sub_menu_item:hover {
        background: rgba(0, 0, 0, 0.1);
      }
      .show_user{
        color:#ffffff;
      }
      .show_user:hover {

        color: #ffffff;

      }

    </style>
  </head>
  <body>

  <div id="top_bg">
    <div class="top">
      <a class="logo_l" href="/" title="返回首页">
        <img class="logo_img" src="images/logo/logo-200_55.png">
      </a>

      <nav class="top_menu">
        <ul class="primary_menu">
          <li class="menu_item"><a href="/">首页</a></li>
          <li class="menu_item"><a>图片</a>
            <ul class="sub_menu">
              <li class="sub_menu_item"> <a href="/PubImgListServlet?from=indexpage" title="公共图片">图片</a></li>
              <%--<li class="sub_menu_item"> <a href="/jsp/test.jsp" target="_blank">公共图库</a></li>--%>
              <li class="sub_menu_item"> <a href="jsp/mygallery.jsp" title="我的图片">我的图片</a></li>
              <li class="sub_menu_item"> <a href="jsp/buildgallarygroup.jsp">上传图片</a></li>
              <%--<li class="sub_menu_item"> <a href="jsp/uploadImagesByWebuploader.jsp">测试上传图片</a></li>--%>
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
          <li class="menu_item"><a>关于</a>
            <ul class="sub_menu">
              <li class="sub_menu_item"> <a
                      href="editormd/pages/blog.html"
              >博客</a></li>
              <li class="sub_menu_item"> <a
                      <%--href="jsp/webBuild.jsp"--%>
              >网站</a></li>
              <li class="sub_menu_item"> <a
                      <%--href="jsp/test2.jsp"--%>
              >团队</a></li>
              <li class="sub_menu_item"> <a
                      <%--href="websocket/chat.xhtml"--%>
              >群聊</a></li>
              <li class="sub_menu_item"> <a
                      <%--href="jsp/tt.html"--%>
              >反馈</a></li>
              <li class="sub_menu_item"> <a
                      <%--href="jsp/imagesearchtest.html"--%>
              >搜索</a></li>
              <li class="sub_menu_item"> <a
                      <%--href="jsp/testTopMenu.jsp"--%>
              >联系我们</a></li>
              <li class="sub_menu_item"> <a
                      <%--href="jsp/topMenuHavenotSearchBar.jsp"--%>
              >test</a></li>
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
                <%--<li class="user_sub_menu_item"> <a href="jsp/testTopMenu.jsp">联系我们</a></li>--%>
              </ul>
            </li>

          </ul>

        </li>
      </ul>
        <%--<form id="loginout" action="/loginout" method="post">--%>
          <%--<input type="submit" title="注销" value="注销">--%>
        <%--</form>--%>

      <%
      }
      else{
      %>
      <ul>
        <li id="top_login">
          <a id="login" href="./jsp/login.jsp">登录</a>
          |
          <a id="register" href="./jsp/goregister.jsp">注册</a>
        </li>
      </ul>
      <%
        }
      %>
      <div>

      </div>

    </div>
  </div>


  <div class="t">

    <div class="search_list">


      <form class="searchPageBar" action="/SearchImgPage" method="get">

        <div class="web_logo">
          <a href="/">


            <%--<img src="images/icons/logo1.png">--%>
            <img src="images/logo/logo-128_128.png">
          </a>
        </div>

        <div class="search_hint">
          <img src="images/icons/search.png" >
          <b style="color:#3b3b3b;">搜索图片</b>


        </div>

        <input class="searchPageImg" type="search" name="searchText" placeholder="输入文字搜索图片...">
        <input type="hidden" name="pg" value="1">
        <input class="searchPageGo" type="submit" value="搜索">


      </form>
      <%--<%--%>
      <%--HttpSession test = request.getSession();--%>
      <%--String searchText = (String)test.getAttribute("searchText");--%>
      <%--out.print(searchText);--%>
      <%--%>--%>
    </div>
  <%--</div>--%>

  <%--<div class="index_today">--%>


    <div class="index_div">





      <div class="index_img">

        <div class="index_div_title">


          <li class="index_img_title">
            图片推荐
          </li>

          <li class="index_img_title_right">
            <a href="/QueryAllImagesServlet?belong=pub&classify=fromLastMonth&pg=0">

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


        <%--<section>--%>

        <div class="index_beauty_img">

          <%


            //      UploadPriImageDaoImpl uploadImage = new UploadPriImageDaoImpl();

            UploadPubImages uploadPubImages = new UploadPubImages();

//            List<String> paths = uploadPubImages.getPubImgFilePath();
            List<String> names = uploadPubImages.getPubImgFileNames();
            Collections.reverse(names);


/*
        JSONObject jsonObject = JSONObject.fromObject(paths);
        String jsonString = jsonObject.toString();
        request.setAttribute("fromIndexPage",jsonString);

        */


            if(null !=names && names.size() != 0){





              for(int i =0;i<12;i++) {

                String imgName = names.get(i);


                long imgId = uploadPubImages.getPubImgId(imgName);

                request.setAttribute("imgName", imgName);

          %>

          <div class="img preload-01" title="${ph}" >


            <a href="/ShowImageDetail?imgbelong=pub&from=indexpage&imgId=<%=imgId%>" target="_blank">
              <img class="my_img" src="http://www.meiticoo.com/imagedata/pub_img/${imgName}" alt="图片无法显示">
              <%--<img class="my_img" src="http://localhost:8080/imagedata/pub_img/${imgName}" alt="图片无法显示">--%>
            </a>

            <div class="func_imgs" onmousemove="func1();" onmouseleave="func2()">
              <a href="blog.jsp" title="下载图片">
                <img class="func_area" src="./images/icons/download/1343438-32.png">
              </a>
            </div>
          </div>

          <%
                request.removeAttribute("imgName");
              }
            }
          %>
          <%--</section>--%>


        </div>
      </div>

      <div class="index_img">

        <div class="index_div_title">


          <li class="index_img_title">
            音乐推荐(暂未开放)
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







      </div>
      <div class="index_img">

        <div class="index_div_title">



          <li class="index_img_title">
            视频推荐(暂未开放)
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


      </div>
      <div class="copyright_text">
        <p>
          Copyright © 2017 meiticoo group. All rights reserved.
        </p>

      </div>
    </div>


  </div>

<%--hello--%>


  </body>
</html>
