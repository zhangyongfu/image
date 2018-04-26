<%@ page import="org.image.model.User" %>
<%@ page import="org.image.DAO.ShowSearchResult" %>
<%@ page import="java.util.List" %>
<%@ page import="org.image.DAO.UploadPriImageDaoImpl" %>
<%@ page import="org.image.model.UploadPubImages" %>
<%@ page import="org.python.antlr.op.In" %><%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-11-10
  Time: 下午6:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="err.jsp" %>--%>
<%@ include file="topMenuHavenotSearchBar.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<html>
<head>
    <link rel="icon" href="../images/logo/logo-16.png" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/logo/logo-16.png" type="image/x-icon" />


    <title>搜索</title>
    <%--<link href="../css/style.css" rel="stylesheet" type="text/css" />--%>

    <%--<%@include file="topmenu.jsp"%>--%>

    <style type="text/css">

        .result_page{
            width:1280px;
            margin:0 auto;
        }


        .show_img_list{
            position: relative;
            top:58px;
            float: left;
            /*width: 670px;*/
            padding: 0;
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
            /*width:1200px;*/
            height:auto;

            margin-bottom: 120px;
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
            margin-bottom: 4px;
            padding: 2px 5px 5px 5px;
            background: #707070;
            border: 1px solid #707070;
            /*letter-spacing: -.5px;*/
            color: #FFFFFF;

        }
        .time_title{
            height: 30px;
            margin-bottom: 3px;
            padding: 2px 0 2px 5px;
            text-align: left;
            color: #000;

        }
        .more{
            float: right;
            margin-top: -35px;
            padding-right: 20px;
            font-family: Georgia, "Times New Roman", Times, serif;
            font-weight: normal;
            font-size: 18px;
            color: #000;
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
            height: 170px;
            width:240px;
            flex-grow: 1;
            background: url("../images/content/photo.png") powderblue;
            overflow: hidden;


/*            margin: 2px;
            position: relative;
            height: 200px;
            flex-grow: 1;
            background-color: gainsboro;*/
        }
        .allImgs .img a img{
            max-width: 100%;
            min-width: 100%;
            height: 200px;
            object-fit: cover;
            vertical-align: bottom;
        }

        .searchPageTitle{
            position: fixed;
            top:60px;
            left:20px;
        }

        .paging_bar{

            margin-bottom:20px;
            text-align: center;
        }


    </style>
</head>
<body onload="f1()">

<%--

<div id="top_bg">
    <div class="top">
        <div class="logo_area">
            <a class="logo_l" href="/" title="返回首页">
                <img class="logo_img" src="../images/logo/logo-64.png">

            </a>
        </div>
        <form class="searchBar" action="SearchImgPage" method="get">
            <input class="searchImg" type="search" name="searchText" placeholder="搜索图片.."
                   onfocus="this.style.backgroundColor='gainsboro'"
                   onblur="this.style.backgroundColor='beige'">
            <input class="goSearch" type="submit" value="搜索">
        </form>


        <nav class="top_menu">
            <ul class="primary_menu">
                <li class="menu_item"><a href="/">首页</a></li>
                <li class="menu_item"><a style="color:white">图库</a>
                    <ul class="sub_menu">
                        <li class="sub_menu_item"> <a href="pubgallery.jsp" target="_blank" title="公共图库">公共图库</a></li>
                        <li class="sub_menu_item"> <a href="mygallery.jsp" target="_blank" title="私人图库">私人图库</a></li>
                        <li class="sub_menu_item"> <a href="mygallery.jsp" target="_blank">创建图库</a></li>
                    </ul>
                </li>
                <li class="menu_item"><a>关于</a>
                    <ul class="sub_menu">
                        <li class="sub_menu_item"> <a href="about.jsp" target="_blank">网站</a></li>
                        <li class="sub_menu_item"> <a href="about.jsp" target="_blank">团队</a></li>
                        <li class="sub_menu_item"> <a href="about.jsp" target="_blank">反馈</a></li>
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
--%>



<div class="result_page">
    <div class="show_img_list">
        <%
            HttpSession resultSession = request.getSession();
            List<String> result = (List<String>)resultSession.getAttribute("result");
            List<String> picturesUrl = (List<String>)resultSession.getAttribute("picturesUrl");
            int page_now = (Integer) resultSession.getAttribute("pageNowNumber");
            String searchText = (String)resultSession.getAttribute("searchText");

//            out.println(searchText);
            for(String s:picturesUrl){
//                out.println(s);
            }

            UploadPubImages uploadPubImages = new UploadPubImages();


        %>


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
                        搜索"<%=searchText%>"的结果

                    </li>
                    <%--<li class="more">--%>
                        <%--<a href="/QueryAllImagesServlet?classify=fromLastMonth">--%>

                            <%--更多>>--%>
                        <%--</a>--%>
                    <%--</li>--%>
                </ul>
            </div>
            <div class="allImgs">
                <%


                    //        request.setAttribute("test",searchText);

                    for(String path:picturesUrl) {

                %>
                <div class="img">
                    <a target="_blank">
                        <%--<img src="http://localhost:8080/i/pub_img/${ph}" alt="图片无法显示">--%>
                        <img src="<%=path%>">
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
        <div class="paging_bar">
            <span>当前页:<%=page_now%></span>
            <span>总页数:<%=page_now+1%></span>

            <a href="/QueryAllImagesServlet?classify=fromLastMonth&pg=0">首页</a>
            <a href="/SearchImgPage?searchText=<%=searchText%>&pg=<%=page_now-1%>">上一页</a>
            <a href="/SearchImgPage?searchText=<%=searchText%>&pg=<%=page_now+1%>">下一页</a>
            <a href="/QueryAllImagesServlet?classify=fromLastMonth&pg=<%=page_now%>">尾页</a>
            <%
                /*                out.print("id: " + imgId);
                                imgId -= 100;
                                out.print("current: " + request.getAttribute("currentPage"));*/

            %>
        </div>

    </div>





<%--
    <div class="show_searched_img_list">
        <div class="searched_list">
            <div class="uploadDay">
                <ul>
                    <li class="time_title">
                        &lt;%&ndash;&lt;%&ndash;dash;%&gt;
                        &lt;%&ndash;Date today = new Date();&ndash;%&gt;
                        &lt;%&ndash;SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");&ndash;%&gt;
                        &lt;%&ndash;String dateString = formatter.format(today);&ndash;%&gt;
                        &lt;%&ndash;out.print(dateString);&ndash;%&gt;
                        &lt;%&ndash;dash;%&gt;&ndash;%&gt;
                        最近一个月上传
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

                        HttpSession resultSession = request.getSession();
                        List<String> result = (List<String>)resultSession.getAttribute("result");
                        String searchText = (String)resultSession.getAttribute("searchText");
    //        request.setAttribute("test",searchText);

                        for(String path:result) {
                            String[] strings = path.split("/");
                            String p = strings[strings.length - 1];
                            request.setAttribute("ph", p);


                    %>
                    <div class="img">
                        <a target="_blank" href="#" title="${ph}">
                            <img id="allImages" src="http://localhost:8080/i/pub_img/${ph}" alt="图片无法显示" width="250" height="170px">
                        </a>
                        <div class="desc">
                            图${ph}
                        </div>
                    </div>

                    <%
                            request.removeAttribute("ph");
                        }
                    %>
                    <div class="searchPageTitle">
                        <p>
                            搜索"<%=searchText%>"的结果
                        </p>

                    </div>
            </div>
        </div>
    </div>

    --%>




</div>

<script type="text/javascript">

    function f1() {
        var API_KEY = '8423738-affef36dd72f8dad521db3183';
        var URL = "https://pixabay.com/api/?key="+API_KEY+"&q="+encodeURIComponent('red roses');
        $.getJSON(URL, function(data){
            if (parseInt(data.totalHits) > 0)
                $.each(data.hits, function(i, hit){ console.log(hit.pageURL); });
            else
                console.log('No hits');
        });

    }

</script>


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
        right:50px; height:48px;cursor:pointer;display:none;
        background:url(../images/icons/back_to_top-48.png) no-repeat;}
</style>

</body>
</html>
