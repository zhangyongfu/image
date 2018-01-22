<%@ page import="org.image.model.User" %>
<%@ page import="org.image.DAO.UploadPriImageDaoImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Collections" %>
<%@ page import="java.io.File" %>
<%@ page import="org.image.model.UploadPubImages" %><%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-11-2
  Time: 下午1:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <%--<%@include file="topmenu.jsp"%>--%>
    <title>Title</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link href="../css/mygallerypage.css" rel="stylesheet" type="text/css" />
    <%--<link href="css/topMenuStyle.css" rel="stylesheet" type="test/css" />--%>
    <%--<link href="../css/topMenuStyle.css" rel="stylesheet" type="text/css" />--%>


    <%--<link href="../css/gallerystyle.css" rel="stylesheet" type="text/css"/>--%>
    <%--<link href="../css/imgdisplay.css" rel="stylesheet" type="text/css" />--%>



        <style type="text/css">

            .t{
                width:1200px;
                margin:0 auto;
            }

            .left{
                position: relative;
                left:10px;
            }
            .my_gallery{
                position: relative;
                left:10px;

                top:55px;
            }

            .my_gallery_start{

                /*font-style: italic;*/
                font-size: 25px;
                color:blue;
            }
            .upload_img{
                position: relative;
                top:120px;
                left:10px;

            }


            /*top*/

            #top_bg{
                height:55px;
                width:100%;
                background:mediumslateblue;
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
                background: mediumslateblue;
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
                background-color: #0573bd;
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
                background-color: #0573bd;
            }
            .sub_menu_item:hover {
                background: rgba(0, 0, 0, 0.1);
            }
            #top_login_success{
                position: fixed;
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
            #top_login{
                position: absolute;
                font-size:15px;
                left:1150px;
                top:20px;
                height: 55px;
                float: right;
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



            .mygallerylist{
                padding: 2px;
                display: flex;
                flex-wrap: wrap;


                /*    position: relative;
                    top:10px;
                    left:12px;
                    float: left;
                    width:1200px;*/
            }

            .mygallerylist:after{
                content: normal;
                flex-grow: 999999999;
            }
            .mygallerylist .img
            {
                margin: 2px;
                position: relative;
                height: 200px;
                flex-grow: 1;
                background-color: gainsboro;

                /*
                    border:1px solid #bebebe;
                    height:auto;
                    background-color: cornflowerblue;
                    width:260px;
                    !*margin-bottom: 15px;*!
                    !*margin-right: 10px;*!
                    float:left;
                    margin:10px 5px;
                    text-align:center;*/
            }
            .mygallerylist .img a img{
                max-width: 100%;
                min-width: 100%;
                height: 200px;
                object-fit: cover;
                vertical-align: bottom;
            }

            .show_myimg_list{
                position: relative;
                left:160px;
                top:110px;
                float: left;
                /*width: 670px;*/
                padding: 0;
            }
            .myimglist{

                width:1135px;
                height:auto;

                margin-bottom: 25px;
                padding: 0;
                background: #FFFFFF;
                border: 2px solid #D6E6CC;

            }
            .myimguploadDay{
                /*position: relative;*/
                /*bottom:12px;*/
                /*!*background-color: #bebebe;*!*/
                /*!*width:1200px;*!*/
                /*left:-550px;*/


                height: 30px;
                margin-bottom: 10px;
                padding: 2px 5px 5px 5px;
                background: #D6E6CC;
                border: 1px solid #D6E6CC;
                /*letter-spacing: -.5px;*/
                color: #FFFFFF;

            }
            .myimgtime_title{
                height: 30px;
                margin-bottom: 3px;
                padding: 5px 0px 2px 5px;
                text-align: left;
                color: #000;

            }
            .myimgmore{
                float: right;
                margin-top: -35px;
                padding-right: 20px;
                font-family: Georgia, "Times New Roman", Times, serif;
                font-weight: normal;
                font-size: 18px;
                color: #000;
            }






            .show_img_list{
                position: relative;
                left:40px;
                top:110px;
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
                /*border: medium solid #0573bd;*/
                /*border:1px;*/
                /*left:-100px;*/

                /*display: table-cell;*/
                /*margin:0 auto;*/
                width:1135px;
                height:auto;

                margin-bottom: 25px;
                padding: 0;
                background: #FFFFFF;
                border: 2px solid #D6E6CC;

            }
            .uploadDay{
                /*position: relative;*/
                /*bottom:12px;*/
                /*!*background-color: #bebebe;*!*/
                /*!*width:1200px;*!*/
                /*left:-550px;*/


                height: 30px;
                margin-bottom: 10px;
                padding: 2px 5px 5px 5px;
                background: #D6E6CC;
                border: 1px solid #D6E6CC;
                /*letter-spacing: -.5px;*/
                color: #FFFFFF;

            }

            .time_title{
                height: 30px;
                margin-bottom: 3px;
                padding: 5px 0px 2px 5px;
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
                height: 200px;
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
                height: 200px;
                object-fit: cover;
                vertical-align: bottom;
            }
        </style>


</head>
<body>


<div id="top_bg">
    <div class="top">
        <div class="logo_area">
            <a class="logo_l" href="/" title="返回首页">
                <img class="logo_img" src="../images/logo/logo-64.png">

            </a>
        </div>
        <form class="searchBar" action="SearchImgPage" method="get">
        <input class="myImgSearchImg" type="search" name="searchText" placeholder="搜索图片.."
        onfocus="this.style.backgroundColor='gainsboro'"
        onblur="this.style.backgroundColor='beige'">
        <input class="goSearch" type="submit" value="搜索">
        </form>


        <nav class="top_menu">
            <ul class="primary_menu">
                <li class="menu_item"><a href="/">首页</a></li>
                <li class="menu_item"><a>图库</a>
                    <ul class="sub_menu">
                        <li class="sub_menu_item"> <a href="pubgallery.jsp" title="公共图库">公共图库</a></li>
                        <li class="sub_menu_item"> <a href="mygallery.jsp" title="私人图库">私人图库</a></li>
                        <li class="sub_menu_item"> <a href="mygallery.jsp">创建图库</a></li>
                    </ul>
                </li>
                <li class="menu_item"><a>关于</a>
                    <ul class="sub_menu">
                        <li class="sub_menu_item"> <a href="about.jsp">网站</a></li>
                        <li class="sub_menu_item"> <a href="about.jsp">团队</a></li>
                        <li class="sub_menu_item"> <a href="about.jsp" >反馈</a></li>
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
<%--        <%
        }
        else{
        %>

        <%
            }
        %>--%>
    </div>
</div>



<%--<div id="top_bg">
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
</div>--%>


<div class="t">
    <div class="left">
        <div>
            <div class="my_gallery">
                <p class="my_gallery_start">我的图库</p>
            </div>
        </div>
        <div id="upload" class="upload_img">
            <a href="../jsp/uploadImages.jsp" title="上传图片">
                <img src="../images/icons/upload.png"></a>
            <%--<a href="/jsp/test.jsp" title="上传图片">上传图片</a>--%>
        </div>

    </div>


<script type="text/javascript">
    function showByUploadTime() {
        var defau = document.getElementById("default_display");
        var uptime = document.getElementById("by_uploadtime_display");
        defau.className="hideall";
        uptime.className="displayall";
    }
    function showByImgSize() {
        var defau = document.getElementById("default_display");
        defau.className="hideall";
    }
    function showByImgName() {
        var defau = document.getElementById("default_display");
        defau.className="hideall";
    }
//    function showByImgSize() {
//        var defau = document.getElementById("default_display");
//        defau.className="hideall";
//    }
</script>



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
                UploadPriImageDaoImpl uploadImage = new UploadPriImageDaoImpl();
                List<String> paths = uploadImage.getImageFilePath(user.getName());


                if(null != paths && paths.size() != 0){

                    Collections.reverse(paths);
                    for(int i =0;i<8;i++) {

                        String imgPath = paths.get(i);
                        long imgId = uploadImage.getPubImgId(imgPath);

                        String[] strings = imgPath.split("/");
                        String p = strings[strings.length - 1];
                        String path = user.getName() + File.separator + p;
                        request.setAttribute("ph", path);
            %>
            <div class="img" title="${ph}">
                <a target="_blank" href="../jsp/showImage.jsp?imgbelong=pri&imgId=<%=imgId%>">
                    <img src="http://localhost:8080/i/img/${ph}" alt="Ballade">
                </a>
                <%--                    <div class="desc">
                                        图片&nbsp;${ph}
                                    </div>--%>
            </div>
            <%
                    request.removeAttribute("ph");
                }
                }
            %>
        </div>
    </div>
</div>
</div>


<%--

<div class="show_myimg_list">
    <div class="myimglist">
        <div class="myimguploadDay">
            <ul>
                <li class="myimgtime_title">
                    &lt;%&ndash;&lt;%&ndash;dash;%&gt;
                    &lt;%&ndash;Date today = new Date();&ndash;%&gt;
                    &lt;%&ndash;SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");&ndash;%&gt;
                    &lt;%&ndash;String dateString = formatter.format(today);&ndash;%&gt;
                    &lt;%&ndash;out.print(dateString);&ndash;%&gt;
                    &lt;%&ndash;dash;%&gt;&ndash;%&gt;
                    最近一个月上传精选
                </li>
                <li class="myimgmore">
                    <a href="showImage.jsp">

                        更多>>
                    </a>
                </li>
            </ul>
        </div>

        <div class="mygallerylist" id="default_display">
            <%
                UploadPriImageDaoImpl uploadImage = new UploadPriImageDaoImpl();
                List<String> paths = uploadImage.getImageFilePath(user.getName());


                if(null != paths && paths.size() != 0){

                    Collections.reverse(paths);
                    for(int i =0;i<8;i++) {
                        String[] strings = paths.get(i).split("/");
                        String p = strings[strings.length - 1];
                        String path = user.getName() + File.separator + p;
                        request.setAttribute("ph", path);

                %>
                <div class="img" title="${ph}">
                    <a target="_blank" href="">
                        <img src="http://localhost:8080/i/img/${ph}" alt="Ballade">
                    </a>
&lt;%&ndash;                    <div class="desc">
                        &lt;%&ndash;我的图片${ph}&ndash;%&gt;
                        我的图片<%=p%>
                    </div>&ndash;%&gt;
                </div>

                <%
                        request.removeAttribute("ph");
                    }
                }
            %>
        </div>
    </div>
</div>

--%>

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


<p id="calltologin">
    你好像还没有登录哦
    <a href="../jsp/login.jsp">返回登录</a>
</p>
<%
    }
%>

</body>
</html>
