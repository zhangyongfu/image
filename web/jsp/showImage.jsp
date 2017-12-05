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
        </div>
    </div>

</head>
<body>

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
        String imgId_str = request.getParameter("imgId");
        long imgId = Long.parseLong(imgId_str);

    //    request.setAttribute("imgId",imgId);

    //    Testt.getSelectImgId(imgId);
    //    out.print("img_id: " + imgId);

        UploadPubImages uploadPubImages = new UploadPubImages();

        if(imgId != -1){
            String imgPath = uploadPubImages.getPubImgFilePath(imgId);

            String[] strings = imgPath.split("/");
            String p = strings[strings.length - 1];
            request.setAttribute("ph", p);

            try {
                File imgFile = new File(imgPath);
                try {
                    Metadata metadata = ImageMetadataReader.readMetadata(imgFile);
                    for (Directory directory : metadata.getDirectories()) {
                        for (Tag tag : directory.getTags()) {
    //                imgMetadata.put(tag.getTagName(),tag.getDescription());
    //                        out.print(tag);
                            %>


                <tr>
                    <td valign="top">
                        <%

                            out.print(tag.getTagName());
                            %>
                    </td>
                        <td>
                    <%
                            out.print(tag.getDescription());
    %>

                </td>
                </tr>

    <%
                        }
                    }
                } catch (ImageProcessingException e) {
                    e.printStackTrace();
                }
            }
            catch (IOException e) {
                e.printStackTrace();
            }
        }
    %>

            </table>

        </div>

        <div class="showPrimaryImg">
            <img src="http://localhost:8080/i/pub_img/${ph}" alt="Ballade" width="<%%>" height="80%">

        </div>
    </div>



    <%--<div class="imgDetail">--%>

        <%--<p>--%>
            <%--关于这张图片..........blablablablablablabla--%>
        <%--</p>--%>
    <%--</div>--%>

</div>


<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">


</script>
</body>
</html>
