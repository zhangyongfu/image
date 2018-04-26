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
<%@ include file="topMenuHavenotSearchBar.jsp"%>

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
    <link rel="icon" href="../images/logo/logo-16.png" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/logo/logo-16.png" type="image/x-icon" />

    <title>图片</title>
    <link href="../css/showImage.css" rel="stylesheet" type="text/css" />

    <%--<link href="../css/topMenuStyle.css" rel="stylesheet" type="text/css" />--%>




    <style type="text/css">

        html,body{
            background-color: #FFFFFF;
        }

        .image_page{
            width:1280px;
            margin:0 auto;
        }

        .menus_right{
            position: relative;
            top:0;
        }

        .image_content{
            position: relative;
            top:0;
        }



        .imgAndMetaData{
            position: absolute;
            top:58px;
            padding-bottom: 50px;


        }
        .metaDataMassage{
            position: absolute;
            top:504px;
            left:0;
            overflow: auto;
            background-color: beige;
            height:auto;

            width: 988px;
        }

        .showPrimaryImg{
            position: relative;
            left:38px;
            margin:0;
            padding:0;
            /*top:60px;*/
            width:912px;
            height:500px;
            background-color: #dae0e5;
            text-align: center;
            display: table-cell;
            vertical-align: middle;
            overflow: hidden;
        }

        .showPrimaryImg img{

            /*padding: 40px 50px 40px 50px;*/
            position: relative;
            margin:auto;
            /*top:50%;*/

            /*left:0;*/
            /*width:90%;*/
            max-width:912px;
            max-height:500px;
            width:auto;
            height:auto;
            /*z-index: 2;*/

        }


        .metaDataTable,.metaDataTable td,.metaDataTable th{
            border:1px ridge blue;
        }

        .metaDataTable{
            position: relative;

            width:1050px;
            border-collapse: collapse;
            /*text-align: center;*/
            background-color: #707070;



        }

        .nextImg{
            /*z-index: 1;*/
            position:absolute;
            width:38px;
            top:0;
            display: block;
            background:#858585;

            height:500px;
            opacity: 0.6;


            color:blueviolet;
            z-index: 1;
            left:950px;
        }
        .nextImg a{
            display:block;
        }
        .nextImg:hover{
            opacity:1;
            cursor: pointer;
            background-color: #707070;
        }

        .preImg{
            position: absolute;
            width:38px;
            height:500px;
            background:#858585;



            top:0;

            opacity: 0.6;


            left:0;
            z-index: 1;
        }
        .preImg:hover{
            opacity:1;
            cursor: pointer;
            background-color: #707070;

        }



        .menus{
            position: relative;
            width:290px;
            overflow: auto;
            top:58px;
            left:990px;
            padding-bottom: 50px;
            /*background-color: red;*/
        }
        .menu_frame1{
            position: relative;
            /*top:70px;*/
            /*left:20px;*/
            float: left;
            width: 290px;
            /*margin-bottom:60px;*/
            padding: 0 2px 5px 2px;
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
            /*padding: 0;*/
            background: #FFFFFF;
            /*height:600px;*/
            border: 2px solid transparent;
            overflow: auto;

        }

        .frame_top{
            position: relative;
            top:0;
            height: 30px;
            margin-bottom: 4px;
            padding: 2px 5px 2px 5px;
            background: #555555;
            border: 1px solid #555555;
            /*letter-spacing: -.5px;*/
            color: #FFFFFF;
        }

        .frame_bottom{
            position: relative;
            /*top:0;*/
            height: auto;
            padding: 2px 2px 2px 2px;
            background: #555555;
            border: 1px solid #555555;
            /*letter-spacing: -.5px;*/
            color: #FFFFFF;
        }

        .top_title{
            height: 30px;
            margin-bottom: 3px;
            padding: 5px 0 2px 5px;
            text-align: center;
            color: #fff;
            list-style-type: none;
        }
        .view_more{
            display: block;
            height: 24px;
            /*margin-bottom: 3px;*/
            /*padding: 5px 0 2px 5px;*/
            text-align: center;
            color: #fff;
            list-style-type: none;
        }

        .inside_content .content_img{

            width:276px;
            height:auto;
            margin:2px 5px 2px 5px;

        }
        .inside_content li{
            list-style: none;
            text-align: center;
        }


    </style>

</head>
<body>

<div class="image_page">



    <div class="image_content">


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

            <div class="showPrimaryImg"  title="${imgName}">
                <img id="oImg" src="http://www.meiticoo.com/imagedata/pub_img/${imgName}" alt="图片无法显示" width="<%%>" height="80%">
                <%--<img id="oImg" src="http://localhost:8080/imagedata/pub_img/${imgName}" alt="图片无法显示" width="<%%>" height="80%">--%>
            </div>

            <%
            }else if("pri".equals(imgbelong)){
            %>
            <tr>
                <td valign="top">
                </td>
                <td>


                </td>
            </tr>

            </table>

        </div>

        <div class="showPrimaryImg" id="show_img">
            <img src="http://www.meiticoo.com/imagedata/img/${ph}" alt="图片无法显示" width="<%%>" height="80%">
        </div>

        <%
            }
        %>

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


    </div>
    <div class="menus_right">


        <div class="menus">
            <div class="menu_frame1">
                <div class="menu_content">
                    <div class="frame_top">

                        <li class="top_title">
                            相关图片
                        </li>
                    </div>
                    <div class="inside_content">
                        <img class="content_img" src="../images/content/photo.png">
                        <img class="content_img" src="../images/content/photo.png">
                        <img class="content_img" src="../images/content/photo.png">
                        <img class="content_img" src="../images/content/photo.png">
                        <img class="content_img" src="../images/content/photo.png">
                        <img class="content_img" src="../images/content/photo.png">
                    </div>
                    <div class="frame_bottom">

                        <a class="view_more" href="#">
                            查看更多
                        </a>
                    </div>
                </div>
            </div>
        </div>


    </div>




</div>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

    alert('session' + <%
    session.getAttribute("metad");
    %>);

        function next_img() {

            var imgId = getParam("imgId");



            var imgs = '<%=session.getAttribute("result")%>';

            var jsonresult = JSON.parse(imgs);

            for(var re in jsonresult){

                if(re == imgId){
                    window.location.href="http://localhost:8080/jsp/showImage.jsp?imgbelong=pub&from=allimages&imgId="+ (--re);

                }


            }
            }


            function getParam(name) {
                var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
                var r = window.location.search.substr(1).match(reg);
                if(r!=null)return  decodeURI(r[2]); return null;

            }
</script>
</body>
</html>
