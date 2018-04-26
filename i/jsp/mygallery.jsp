<%@ page import="org.image.model.User" %>
<%@ page import="org.image.DAO.UploadPriImageDaoImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Collections" %>
<%@ page import="java.io.File" %>
<%@ page import="org.image.model.UploadPubImages" %>
<%@ include file="topMenuHavenotSearchBar.jsp"%>



<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-11-2
  Time: 下午1:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <link rel="icon" href="../images/logo/logo-16.png" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/logo/logo-16.png" type="image/x-icon" />


<%--<%@include file="topmenu.jsp"%>--%>
    <title>我的图片</title>
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
                background: url(../images/background/0336.jpg) fixed #ffffff;
                width: 100%;
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


            .t{
                width:1200px;
                margin:0 auto;
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



            .show_img_list{
                /*position: relative;*/
                /*left:40px;*/
                /*top:40px;*/
                /*float: left;*/
                /*!*width: 670px;*!*/
                /*padding: 0;*/


                position: absolute;
                left:240px;
                top:70px;
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
                width:1020px;
                height:auto;

                margin-bottom: 4px;
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
                padding: 5px 0px 2px 5px;
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
            }

            .more a{
                color:#eeede0;
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
                background: url("../images/content/photo.png") #ffffff;

                object-fit: cover;
                vertical-align: bottom;
            }







            .menus{
                position: relative;
                width:204px;
                overflow: auto;
                top:70px;
                left:20px;
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

            .frame_top{
                position: relative;
                top:0;
                height: 30px;
                /*margin-bottom: 2px;*/
                padding: 2px 5px 2px 5px;
                background: #707070;
                border: 1px solid #707070;
                /*letter-spacing: -.5px;*/
                color: #FFFFFF;
            }

            .top_title{
                height: 30px;
                margin-bottom: 2px;
                padding: 0 2px 0 2px;
                text-align: center;
                color: #000;
                list-style-type: none;
            }

            .inside_content li{
                list-style: none;
                text-align: center;
            }

        </style>


</head>
<body>

<%--<%

//    HttpSession httpSession = request.getSession();
    User userName = (User)httpSession.getAttribute("userName");
    if(userName != null){

%>--%>



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
                    <a href="../jsp/uploadImages.jsp" title="上传图片"><p style="background-color: #cce5ff;margin:1px auto;">上传图片</p></a>
                    <a href="#" title="管理图片"><p style="background-color: #cce5ff;margin:1px auto;">管理图片</p></a>
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
<%--    <div class="menu_frame2">
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
                    最近上传
                </li>
                <li class="more">
                    <a href="/QueryAllImagesServlet?belong=pri&classify=fromLastMonth&pg=0">

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
                        long imgId = uploadImage.getPriImgId(imgPath);

                        String[] strings = imgPath.split("/");
                        String p = strings[strings.length - 1];
                        String path = user.getName() + File.separator + p;
                        request.setAttribute("ph", path);
            %>
            <div class="img" title="${ph}">
                <a target="_blank" href="../jsp/showImage.jsp?imgbelong=pri&imgId=<%=imgId%>">
                    <img src="http://www.meiticoo.com/imagedata/img/${ph}" alt="图片无法显示">
                </a>
                <%--                    <div class="desc">
                                        图片&nbsp;${ph}
                                    </div>--%>
            </div>
            <%
                    request.removeAttribute("ph");
                }

                }
                else{
                    %>
            <p>暂未上传图片...</p>

            <%

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
                        <img src="http://www.meiticoo.com/imagedata/img/${ph}" alt="图片无法显示">
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


<%--<%

    }else{
        response.sendRedirect("./havenotlogin.jsp");
    }
%>--%>

</body>
</html>
