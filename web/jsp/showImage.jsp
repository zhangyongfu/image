<%@ page import="java.util.Map" %>
<%@ page import="org.image.model.ImageMetadata" %>
<%@ page import="java.io.File" %>
<%@ page import="org.image.test.Test" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.URLConnection" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.util.List" %>
<%@ page import="org.image.model.UploadPubImages" %>
<%@ page import="org.image.model.Testt" %>

<%@ page import="com.drew.metadata.Metadata" %>
<%@ page import="com.drew.imaging.ImageMetadataReader" %>
<%@ page import="com.drew.metadata.Directory" %>
<%@ page import="com.drew.metadata.Tag" %>
<%@ page import="com.drew.imaging.ImageProcessingException" %>
<%@ page import="java.io.IOException" %>
<%@ page import="org.image.servlet.UploadPriImgServlet" %>
<%@ page import="org.image.DAO.UploadPriImageDaoImpl" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="net.sf.json.JSON" %>
<%@ page import="net.sf.json.JSONObject" %>
<%@ page import="com.google.gson.Gson" %>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-11-27
  Time: 下午3:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<html>
<head>
    <title>Title</title>
    <link href="../css/showImage.css" rel="stylesheet" type="text/css" />

    <link href="../css/topMenuStyle.css" rel="stylesheet" type="text/css" />




    <style type="text/css">

        html,body{
            background-color: #bebebe;
        }


        .nextImg{
            z-index: 1;
            position:absolute;
            top:70px;
            opacity: 0.6;


            color:blueviolet;
            left:842px;
        }
        .nextImg:hover{
            opacity:1;
            cursor: pointer;
            background-color: #dddddd;
        }

        .preImg{
            position: absolute;
            top:70px;

            opacity: 0.6;


            left:30px;
        }
        .preImg:hover{
            opacity:1;
            cursor: pointer;
            background-color: #dddddd;
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


        <nav class="top_menu">
            <ul class="primary_menu">
                <li class="menu_item"><a href="/">首页</a></li>
                <li class="menu_item"><a style="color:white">图库</a>
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
                        <li class="sub_menu_item"> <a href="about.jsp">反馈</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
</div>
<div>
    <div class="imgAndMetaData">
        <div class="metaDataMassage">
            <table class="metaDataTable" width="160">
                <tr>
                    <th align="left">
                        属性
                    </th>
                    <th align="left">
                        值
                    </th>
                </tr>
                <%
                    String imgbelong = request.getParameter("imgbelong");



                    String metadata = request.getParameter("imgMeta");
                    String str = (String)session.getAttribute("metadata");

                    Gson gson = new Gson();

                    Map<String,String> mapData = new HashMap<String,String>();
                    mapData = gson.fromJson(str,mapData.getClass());
                    if("pub".equals(imgbelong)){
                        for(Map.Entry<String,String> entry:mapData.entrySet()){
                %>
                    <tr>
                        <td valign="top">
                            <%
                                out.print(entry.getKey());
                            %>
                        </td>
                        <td>
                            <%
                                out.print(entry.getValue());
                            %>
                        </td>
                    </tr>
                <%
                    }
                %>

            </table>

        </div>

        <div class="showPrimaryImg" >
            <img id="oImg" src="http://localhost:8080/i/pub_img/${imgName}" alt="Ballade" width="<%%>" height="80%">
        </div>

        <%
            }else if("pri".equals(imgbelong)){




/*                String imgPath = request.getParameter("imgPath");

                try {
                    File imgFile = new File(imgPath);
                    try {
                        Metadata metadata = ImageMetadataReader.readMetadata(imgFile);
                        for (Directory directory : metadata.getDirectories()) {
                            for (Tag tag : directory.getTags()) {*/
        %>


<%--                <%




        } else if(imgId != -1 && "pri".equals(imgBelong)){


            UploadPriImageDaoImpl uploadPriImage = new UploadPriImageDaoImpl();


            String imgPath = uploadPriImage.getPriImgFilePath(imgId);

            String[] strings = imgPath.split("/");
            String p = strings[strings.length - 2] + File.separator + strings[strings.length - 1];
            request.setAttribute("ph", p);

            try {
                File imgFile = new File(imgPath);
                try {
                    Metadata metadata = ImageMetadataReader.readMetadata(imgFile);
                    for (Directory directory : metadata.getDirectories()) {
                        for (Tag tag : directory.getTags()) {
                            //                imgMetadata.put(tag.getTagName(),tag.getDescription());
                            //                        out.print(tag);
        %>--%>


                    <tr>
                        <td valign="top">
<%--                            <%

                                out.print(tag.getTagName());
                            %>--%>
                        </td>
                        <td>
<%--                            <%
                                out.print(tag.getDescription());
                            %>--%>

                        </td>
                    </tr>

<%--                    <%
                                        }
                                    }
                                } catch (ImageProcessingException e) {
                                    e.printStackTrace();
                                }
                            }
                            catch (IOException e) {
                                e.printStackTrace();
                            }

                            %>--%>

            </table>

        </div>

        <div class="showPrimaryImg" id="show_img">
            <img src="http://localhost:8080/i/img/${ph}" alt="Ballade" width="<%%>" height="80%">
        </div>

    <%
        }
    %>

<%--                    <%
                        }
    %>--%>

</div>

<div class="preImg" title="上一张">
    <%--<img src="../images/icons/pre_img-64.png" onclick="pre_img()">--%>
    <a href="/ShowImageDetail?change=pre&imgbelong=pub&from=allimages&imgId=${imgId}">
        <img src="../images/icons/pre_img-64.png">

    </a>


</div>
<div class="nextImg" title="下一张">

    <%--<img src="../images/icons/next_img-64.png" onclick="next_img()">--%>

    <a href="/ShowImageDetail?change=next&imgbelong=pub&from=allimages&imgId=${imgId}">
        <img src="../images/icons/next_img-64.png">
    </a>
</div>

<div>
    <p>
        相关推荐
    </p>
</div>



















<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

    alert('session' + <%
    session.getAttribute("metad");
    %>);

//    (function ($) {

/*        var str =${imgs};
        alert(str);

        var imgs=${imgs};


*/
        function next_img() {



/*
            var imgDiv = document.getElementById("show_img");

            var imgImg = document.createElement("img");

            imgImg.setAttribute("src","http://localhost:8080/i/img/007.jpg");
            imgImg.style.height="80%";

            imgImg.appendChild(imgImg);
*/

//            var imgItem = document.getElementById("img_show");
//            imgItem.setAttribute("src","http://localhost:8080/i/pub_img/201004155.jpg");

            var imgId = getParam("imgId");
//            alert(imgId);



            var imgs = '<%=session.getAttribute("result")%>';

            var jsonresult = JSON.parse(imgs);

            for(var re in jsonresult){

                if(re == imgId){

//                    alert("find it :" + re);
//                    alert("and :"+ --re);

                    window.location.href="http://localhost:8080/jsp/showImage.jsp?imgbelong=pub&from=allimages&imgId="+ (--re);


//                    alert(re + ":" + jsonresult[re])

                }
//                else alert("not");

            }


/*
            var ids = new Array();
            var paths = new Array();

            for(var iap in imgs){
                ids.push(iap);
                paths.push(imgs[iap]);
            }

            for(var i = 0;i<paths;i++){
                alert(paths[i])
            }
*/


//            alert(imgs)

/*
            for(var i = 0;i<ids.length;i++){
                alert(ids[i]);*/
            }


            function getParam(name) {
                var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
                var r = window.location.search.substr(1).match(reg);
                if(r!=null)return  decodeURI(r[2]); return null;

            }

/*

            alert('allimages' == getParam('from'));
            var imgIds = new Array();
            var imgPaths = new Array();




            for(var idAndName in imgIdsAndNames){
                imgIds.push(idAndName);
                imgPaths.push(imgIdsAndNames[idAndName]);
            }
            imgIds.reverse();
            imgPaths.reverse();

            for(var i=0;i<5;i++){
                alert(imgPaths[i]);
            }

            alert("over");

        }
        function getParam(name) {
            var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
            var r = window.location.search.substr(1).match(reg);
            if(r!=null)return  decodeURI(r[2]); return null;

        }
        function pre_img() {
            alert("pre");

        }
*/


//    })(jQuery);

</script>
<script type="text/javascript">
    /*绑定事件*/
    function addEvent(obj, sType, fn) {
        if (obj.addEventListener) {
            obj.addEventListener(sType, fn, false);
        } else {
            obj.attachEvent('on' + sType, fn);
        }
    }
    function removeEvent(obj, sType, fn) {
        if (obj.removeEventListener) {
            obj.removeEventListener(sType, fn, false);
        } else {
            obj.detachEvent('on' + sType, fn);
        }
    };
    function prEvent(ev) {
        var oEvent = ev || window.event;
        if (oEvent.preventDefault) {
            oEvent.preventDefault();
        }
        return oEvent;
    }
    /*添加滑轮事件*/
    function addWheelEvent(obj, callback) {
        if (window.navigator.userAgent.toLowerCase().indexOf('firefox') != -1) {
            addEvent(obj, 'DOMMouseScroll', wheel);
        } else {
            addEvent(obj, 'mousewheel', wheel);
        }
        function wheel(ev) {
            var oEvent = prEvent(ev),
                delta = oEvent.detail ? oEvent.detail > 0 : oEvent.wheelDelta < 0;
            callback && callback.call(oEvent, delta);
            return false;
        }
    };
    /*页面载入后*/
    window.onload = function() {
        var oImg = document.getElementById('oImg');
        /*拖拽功能*/
        (function() {
            addEvent(oImg, 'mousedown', function(ev) {
                var oEvent = prEvent(ev),
                    oParent = oImg.parentNode,
                    disX = oEvent.clientX - oImg.offsetLeft,
                    disY = oEvent.clientY - oImg.offsetTop,
                    startMove = function(ev) {
                        if (oParent.setCapture) {
                            oParent.setCapture();
                        }
                        var oEvent = ev || window.event,
                            l = oEvent.clientX - disX,
                            t = oEvent.clientY - disY;
                        oImg.style.left = l +'px';
                        oImg.style.top = t +'px';
                        oParent.onselectstart = function() {
                            return false;
                        }
                    }, endMove = function(ev) {
                        if (oParent.releaseCapture) {
                            oParent.releaseCapture();
                        }
                        oParent.onselectstart = null;
                        removeEvent(oParent, 'mousemove', startMove);
                        removeEvent(oParent, 'mouseup', endMove);
                    };
                addEvent(oParent, 'mousemove', startMove);
                addEvent(oParent, 'mouseup', endMove);
                return false;
            });
        })();
        /*以鼠标位置为中心的滑轮放大功能*/
        (function() {
            addWheelEvent(oImg, function(delta) {
                var ratioL = (this.clientX - oImg.offsetLeft) / oImg.offsetWidth,
                    ratioT = (this.clientY - oImg.offsetTop) / oImg.offsetHeight,
                    ratioDelta = !delta ? 1 + 0.1 : 1 - 0.1,
                    w = Math.max(10,parseInt(oImg.offsetWidth * ratioDelta)),

//                        Math.max(50, Math.min(800, myimage.width + (10 * delta)))

                    h = Math.max(10,parseInt(oImg.offsetHeight * ratioDelta)),
                    l = Math.round(this.clientX - (w * ratioL)),
                    t = Math.round(this.clientY - (h * ratioT));
                with(oImg.style) {
                    width = w +'px';
                    height = h +'px';
                    left = l +'px';
                    top = t +'px';
                }
            });
        })();
    };
</script>
</body>
</html>
