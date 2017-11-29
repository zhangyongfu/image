<%@ page import="org.image.model.User" %>
<%@ page import="org.image.DAO.UploadPriImageDaoImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Collections" %>
<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-11-2
  Time: 下午1:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link href="../css/gallerystyle.css" rel="stylesheet" type="text/css"/>
    <link href="../css/imgdisplay.css" rel="stylesheet" type="text/css" />

</head>
<body>

<div id="top_bg">
    <div class="logo_area">
        <a class="logo_l" href="/" title="返回首页">
            <img class="logo_img" src="../images/logo/logo-64.png">

        </a>
    </div>
    <form class="searchBar">
        <input class="searchImg" type="search"  placeholder="搜索图片.."
               onfocus="this.style.backgroundColor='gainsboro'"
               onblur="this.style.backgroundColor='beige'">
        <input class="goSearch" type="submit" value="搜索">
    </form>
    <div class="nav_z">
        <nav class="top_menu">
            <ul class="primary_menu">
                <li class="menu_item"><a href="../">首页</a></li>
                <li class="menu_item"><a style="color:white">图库</a>
                    <ul class="sub_menu">
                        <li class="sub_menu_item"> <a href="../jsp/pubgallery.jsp">公共图库</a></li>
                        <li class="sub_menu_item"> <a href="../jsp/mygallery.jsp">私人图库</a></li>
                        <li class="sub_menu_item"> <a href="../jsp/mygallery.jsp">创建图库</a></li>
                    </ul>
                </li>
                <li class="menu_item"><a>关于</a>
                    <ul class="sub_menu">
                        <li class="sub_menu_item"> <a href="../jsp/about.jsp" target="_blank">网站</a></li>
                        <li class="sub_menu_item"> <a href="../jsp/about.jsp" target="_blank">团队</a></li>
                        <li class="sub_menu_item"> <a href="../jsp/about.jsp" target="_blank">反馈</a></li>
                    </ul>
                </li>
            </ul>
        </nav>

        <%
            HttpSession httpSession = request.getSession();
            User user = (User)httpSession.getAttribute("userName");
            if(user != null){       //为了测试，先将此行注释
        %>

        <%--遍历用户个人的图库--%>
        <p id="wel_show">
            亲爱的
            <a href="/userinformation">
                <%
                    out.print(user.getName());
//                    out.print(request.getServletContext().getRealPath("/"));
                %>
            </a>
            ,欢迎你。
        </p>
    </div>
</div>


<div>
    <div class="my_gallery">
        <p class="my_gallery_start">我的图库</p>
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

    <div id="upload" class="upload_img">
        <a href="../jsp/uploadImages.jsp" title="上传图片">
            <img src="../images/icons/upload.png"></a>
        <%--<a href="/jsp/test.jsp" title="上传图片">上传图片</a>--%>
    </div>
<%--<div class="funclist">--%>
    <%--<ul>--%>
        <%--<li id="sort" onclick="showByUploadTime()">--%>
            <%--<a title="上传时间排序">--%>
                <%--<img src="../images/icons/up.png">--%>
                <%--上传时间</a>--%>
        <%--</li>--%>
        <%--<li id="share" onclick="showByImgSize()">--%>
            <%--<a href="../jsp/shareImages.jsp" title="图片大小排序">--%>
                <%--<img src="../images/icons/up.png">--%>
                <%--图片大小</a>--%>
        <%--</li>--%>
        <%--<li id="upload1" onclick="showByImgName()">--%>
            <%--<a href="../jsp/mygallery.jsp" title="图片名称排序">--%>
                <%--<img src="../images/icons/up.png">--%>
                <%--图片名称</a>--%>
        <%--</li>--%>
        <%--<li id="sort1">--%>
            <%--<a href="../jsp/mygallery.jsp" title="未知">--%>
                <%--<img src="../images/icons/up.png">--%>
                <%--未知</a>--%>
        <%--</li>--%>
    <%--</ul>--%>
<%--</div>--%>
<%--<<<<<<< HEAD--%>
<%--=======--%>



<%--<div class="mygallerylist" id="default_display">--%>
<%--<%--%>
    <%--UploadPriImageDaoImpl uploadImage = new UploadPriImageDaoImpl();--%>
    <%--List<String> paths = uploadImage.getImageFilePath(user.getName());--%>


    <%--for(String path:paths) {--%>
        <%--String[] strings = path.split("/");--%>
        <%--String p = strings[strings.length - 1];--%>
        <%--request.setAttribute("ph", p);--%>

<%--%>--%>
    <%--<div class="img" title="${ph}">--%>
        <%--<a target="_blank" href="#">--%>
            <%--<img src="http://localhost:8080/i/img/${ph}" alt="Ballade" width="250" height="170px">--%>
        <%--</a>--%>
        <%--<div class="desc">--%>
            <%--我的图片${ph}--%>
        <%--</div>--%>
    <%--</div>--%>

<%--<%--%>
        <%--request.removeAttribute("ph");--%>
    <%--}--%>
<%--%>--%>

<%--</div>--%>

<%--&lt;%&ndash;--%>

<%--<div class="mygallerylist" id="hideall">--%>
<%--<%--%>
    <%--UploadPriImageDaoImpl showImgByUploadtime = new UploadPriImageDaoImpl();--%>
    <%--List<String> pathsbyUploadTime = showImgByUploadtime.getImagesUploadTime();--%>

    <%--for(String path:pathsbyUploadTime) {--%>
        <%--String[] strings = path.split("/");--%>
        <%--String img = strings[strings.length - 1];--%>
        <%--request.setAttribute("i", img);--%>

<%--%>--%>
    <%--<div class="img" title="${ph}">--%>
        <%--<a target="_blank" href="#">--%>
            <%--<img src="http://localhost:8080/i/img/${i}" alt="Ballade" width="250" height="170px">--%>
        <%--</a>--%>
        <%--<div class="desc">--%>
            <%--我的图片${ph}--%>
        <%--</div>--%>
    <%--</div>--%>

<%--<%--%>
        <%--request.removeAttribute("ph");--%>
    <%--}--%>
<%--%>--%>

<%--</div>--%>
<%--&ndash;%&gt;--%>

<%--&lt;%&ndash;--%>
<%--<div class="mygallerylist" id="default_display">--%>
<%--<%--%>
    <%--UploadPriImageDaoImpl uploadImage = new UploadPriImageDaoImpl();--%>
    <%--List<String> paths = uploadImage.getImageFilePath(user.getName());--%>

    <%--for(String path:paths) {--%>
        <%--String[] strings = path.split("/");--%>
        <%--String p = strings[strings.length - 1];--%>
        <%--request.setAttribute("ph", p);--%>

<%--%>--%>
    <%--<div class="img" title="${ph}">--%>
        <%--<a target="_blank" href="#">--%>
            <%--<img id="allImages" src="http://localhost:8080/i/img/${ph}" alt="Ballade" width="250" height="170px">--%>
        <%--</a>--%>
        <%--<div class="desc">--%>
            <%--我的图片${ph}--%>
        <%--</div>--%>
    <%--</div>--%>

<%--<%--%>
        <%--request.removeAttribute("ph");--%>
    <%--}--%>
<%--%>--%>

<%--</div>--%>


<%--<div class="mygallerylist" id="default_display">--%>
<%--<%--%>
    <%--UploadPriImageDaoImpl uploadImage = new UploadPriImageDaoImpl();--%>
    <%--List<String> paths = uploadImage.getImageFilePath(user.getName());--%>
<%-->>>>>>> 10144f13396918a9111b287b58a50568b94917cf--%>

<%--<div class="mygallerylist" id="default_display">--%>
<%--<%--%>
    <%--UploadPriImageDaoImpl uploadImage = new UploadPriImageDaoImpl();--%>
    <%--List<String> paths = uploadImage.getImageFilePath(user.getName());--%>


    <%--for(String path:paths) {--%>
        <%--String[] strings = path.split("/");--%>
        <%--String p = strings[strings.length - 1];--%>
        <%--request.setAttribute("ph", p);--%>

<%--%>--%>
    <%--<div class="img" title="${ph}">--%>
        <%--<a target="_blank" href="#">--%>
            <%--<img src="http://localhost:8080/i/img/${ph}" alt="Ballade" width="250" height="170px">--%>
        <%--</a>--%>
        <%--<div class="desc">--%>
            <%--我的图片${ph}--%>
        <%--</div>--%>
    <%--</div>--%>

<%--<%--%>
        <%--request.removeAttribute("ph");--%>
    <%--}--%>
<%--%>--%>

<%--</div>--%>

<div class="show_myimg_list">
    <div class="myimglist">
        <div class="myimguploadDay">
            <ul>
                <li class="myimgtime_title">
                    <%--<%--%>
                    <%--Date today = new Date();--%>
                    <%--SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");--%>
                    <%--String dateString = formatter.format(today);--%>
                    <%--out.print(dateString);--%>
                    <%--%>--%>
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
                        <img src="http://localhost:8080/i/img/${ph}" alt="Ballade" width="250" height="170px">
                    </a>
                    <div class="desc">
                        <%--我的图片${ph}--%>
                        我的图片<%=p%>
                    </div>
                </div>

                <%
                        request.removeAttribute("ph");
                    }
                }
            %>
        </div>
    </div>

        <%
    }
    else{
        %>
<p id="calltologin">
    你好像还没有登录哦
    <a href="/jsp/login.jsp">返回登录</a>
</p>
<%
    }
%>

</body>
</html>
