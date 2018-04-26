<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 18-2-7
  Time: 下午4:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="org.image.model.UploadPubImages" %>
<%@ page import="java.util.List" %>
<%@ page import="org.image.model.User" %>
<%@ page import="java.util.Collections" %>
<%@ page import="org.image.DAO.PageBeanDaoImpl" %>
<%@ page import="org.image.DAO.ImageHeart" %>
<%@ page import="org.image.DAO.UploadPriImageDaoImpl" %>
<%@ page import="java.io.File" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="topMenuHavenotSearchBar.jsp"%>
<!DOCTYPE html>
<html>
<head>

    <link rel="icon" href="../images/logo/logo-16.png" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/logo/logo-16.png" type="image/x-icon" />

    <title>我的图片</title>


    <%--<link href="../css/topMenuStyle.css" rel="stylesheet" type="text/css" />--%>



    <style type="text/css">
        html {
            margin: 0 auto;
            background: url(../images/background/0336.jpg) fixed #ffffff;
            width: 100%;
        }


        .index_div_title{

            position: relative;
            top:0;
            height: 30px;
            margin-bottom: 10px;
            padding: 2px 5px 5px 5px;
            background: #707070;
            border: 1px solid #707070;
            /*letter-spacing: -.5px;*/
            color: #FFFFFF;
        }
        .all_img_title{
            height: 30px;
            margin-bottom: 3px;
            padding: 5px 0 2px 5px;
            text-align: center;
            color: #fff;
            list-style-type: none;
        }
        .index_beauty_img{

            position: relative;
            /*left:13px;*/
            /*width:1030px;*/
        }

        #img_id{
            padding: 2px;
            display: flex;
            flex-wrap: wrap;
            position: relative;
            background-color: #007bff;
            /*left:13px;*/
            /*width:1300px;*/
        }
        #img_id::after{

            /*content: '';*/
            content: normal;


            flex-grow: 999999999;
        }

        #img_id div{
            margin: 2px;
            position: relative;
            height: 200px;
            flex-grow: 1;
            background-color: gainsboro;
        }
        #img_id .img_div .a_img img{
            max-width: 100%;
            min-width: 100%;
            height: 200px;
            object-fit: cover;
            opacity:0.1;
            vertical-align: bottom;
        }



        #img_id .img_div .func_imgs .func_a_img img{
            width:32px;
            height:32px;
            /*display: none;*/
            position: absolute;
            right:2px;
            top:2px;
            z-index: 99;
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
            margin-bottom: 10px;
            padding: 2px 5px 5px 5px;
            background: #707070;
            border: 1px solid #707070;
            /*letter-spacing: -.5px;*/
            color: #FFFFFF;
        }

        .top_title{
            height: 30px;
            margin-bottom: 3px;
            padding: 5px 0 2px 5px;
            text-align: center;
            color: #000;
            list-style-type: none;
        }

        .inside_content li{
            list-style: none;
            text-align: center;
        }

        .img_div:hover .func_imgs{
            /*display: inline-block;*/
            display: none;

        }

        /*
                #img_id:hover .func_imgs{
                    !*cursor: pointer;*!
                    !*background-color: #e0a800;*!
                    display: inline-block;

                }

                .func_imgs{
                    width:106px;
                    height:32px;
                    display: none;
                    position: absolute;
                    right:2px;
                    top:2px;
                    z-index: 9999999;
                }
                */

        .t{
            width:1200px;
            margin:0 auto;
        }
        .index_div{
            position: absolute;
            top:70px;
            left:50px;
            float: left;
            /*width: 1280px;*/
            padding: 0;
        }
        .index_img{
            position: relative;
            color: deepskyblue;


            margin-bottom: 20px;
            padding: 0;
            background: #FFFFFF;
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
            border: 1px solid #707070;
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
            /*left:13px;*/
            width:1280px;
            margin-bottom: 20px;
        }

        .index_beauty_img::after {//处理最后一行
            /*content: '';*/
        content: normal;
            flex-grow: 999999999;

        }
        .img{
            margin: 2px;
            position: relative;
            height: 200px;
            flex-grow: 1;
            background-color: white;
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
            max-width: 100%;
            min-width: 100%;
            height: 200px;
            background: url("../images/content/photo.png") #ffffff;

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
            /*opacity:0.83;*/
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


            /*width:40px;*/
            /*height:40px;*/
            /*margin: 50px auto;*/
            cursor: pointer;
            /*font-size: 12px;*/
            /*text-align:center;*/

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

            text-align: center;
        }


        .paging_bar{

            margin-bottom:12px;
            text-align: center;
        }





        .praise{
            width:40px;
            height:40px;
            margin: 50px auto;
            cursor: pointer;
            font-size: 12px;
            text-align:center;
            position: relative;
        }
        .praisess{
            display:block;
            width:40px;
            height:40px;
            margin:0 auto;
        }
        .praise-txtss{
            height:25px;
            line-height:25px;
            display: block;
        }
        .praise img{
            width:40px;
            height:40px;
            display:block;
            margin: 0 auto;
        }

        .add-num{
            display:none;
        }
        .add-num .add-animation{
            color: #000;
            position:absolute;
            top:-15px;
            left: 10px;
            font-size: 15px;
            opacity: 0;
            filter: Alpha(opacity=0);
            -moz-opacity:0;
            animation: mypraise 0.5s ;
            -moz-animation: mypraise 0.5s ;
            -webkit-animation: mypraise 0.5s ;
            -o-animation: mypraise 0.5s ;
            font-style:normal;
        }
        .praise .hover , .add-num .add-animation.hover , .praise-txtss.hover{
            color: #EB4F38;
        }
        @keyframes mypraise
        {
            0%{
                top:-15px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
            25%{
                top:-20px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            50%{
                top:-25px;
                opacity: 1;
                filter: Alpha(opacity=100);
                -moz-opacity:1;
            }
            75%{
                top:-30px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            100% {
                top:-35px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
        }
        @-moz-keyframes mypraise
        {
            0%{
                top:-15px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
            25%{
                top:-20px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            50%{
                top:-25px;
                opacity: 1;
                filter: Alpha(opacity=100);
                -moz-opacity:1;
            }
            75%{
                top:-30px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            100% {
                top:-35px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
        }
        @-webkit-keyframes mypraise
        {
            0%{
                top:-15px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
            25%{
                top:-20px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            50%{
                top:-25px;
                opacity: 1;
                filter: Alpha(opacity=100);
                -moz-opacity:1;
            }
            75%{
                top:-30px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            100% {
                top:-35px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
        }
        @-o-keyframes mypraise
        {
            0%{
                top:-15px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
            25%{
                top:-20px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            50%{
                top:-25px;
                opacity: 1;
                filter: Alpha(opacity=100);
                -moz-opacity:1;
            }
            75%{
                top:-30px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            100% {
                top:-35px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
        }
    </style>
</head>
<body>







<%--<div class="menus">--%>
    <%--<div class="menu_frame1">--%>
        <%--<div class="menu_content">--%>
            <%--<div class="frame_top">--%>

                <%--<li class="top_title">--%>
                    <%--相关推荐1--%>
                <%--</li>--%>
            <%--</div>--%>
            <%--<div class="inside_content">--%>
                <%--<li class="a6">--%>
                    <%--lasjflask--%>
                    <%--asdfljkas;dfj--%>
                    <%--asdllfjkas;dfj--%>
                    <%--asdflasjd;fljasdf--%>
                    <%--asdf;asjd;fjasd'fads--%>
                    <%--fladskjf;aowjf--%>
                <%--</li>--%>
                <%--<li class="a6">--%>
                    <%--lasjflask--%>
                    <%--asdfljkas;dfj--%>
                    <%--asdllfjkas;dfj--%>
                    <%--asdflasjd;fljasdf--%>
                    <%--asdf;asjd;fjasd'fads--%>
                    <%--fladskjf;aowjf--%>
                <%--</li>--%>
                <%--<li class="a6">--%>
                    <%--lasjflask--%>
                    <%--asdfljkas;dfj--%>
                    <%--asdllfjkas;dfj--%>
                    <%--asdflasjd;fljasdf--%>
                    <%--asdf;asjd;fjasd'fads--%>
                    <%--fladskjf;aowjf--%>
                <%--</li>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<div class="menu_frame2">--%>
        <%--<div class="menu_content">--%>
            <%--<div class="frame_top">--%>

                <%--<li class="top_title">--%>
                    <%--相关推荐2--%>
                <%--</li>--%>
            <%--</div>--%>
            <%--<div class="inside_content">--%>
                <%--<li class="a6">--%>
                    <%--lasjflask--%>
                    <%--asdfljkas;dfj--%>
                    <%--asdllfjkas;dfj--%>
                    <%--asdflasjd;fljasdf--%>
                    <%--asdf;asjd;fjasd'fads--%>
                    <%--fladskjf;aowjf--%>
                <%--</li>--%>
                <%--<li class="a6">--%>
                    <%--lasjflask--%>
                    <%--asdfljkas;dfj--%>
                    <%--asdllfjkas;dfj--%>
                    <%--asdflasjd;fljasdf--%>
                    <%--asdf;asjd;fjasd'fads--%>
                    <%--fladskjf;aowjf--%>
                <%--</li>--%>
                <%--<li class="a6">--%>
                    <%--lasjflask--%>
                    <%--asdfljkas;dfj--%>
                    <%--asdllfjkas;dfj--%>
                    <%--asdflasjd;fljasdf--%>
                    <%--asdf;asjd;fjasd'fads--%>
                    <%--fladskjf;aowjf--%>

                <%--</li>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<div class="menu_frame3">--%>
        <%--<div class="menu_content">--%>
            <%--<div class="frame_top">--%>

                <%--<li class="top_title">--%>
                    <%--相关推荐3--%>
                <%--</li>--%>
            <%--</div>--%>
            <%--<div class="inside_content">--%>
                <%--<li class="a6">--%>
                    <%--lasjflask--%>
                    <%--asdfljkas;dfj--%>
                    <%--asdllfjkas;dfj--%>
                    <%--asdflasjd;fljasdf--%>
                    <%--asdf;asjd;fjasd'fads--%>
                    <%--fladskjf;aowjf--%>
                <%--</li>--%>
                <%--<li class="a6">--%>
                    <%--lasjflask--%>
                    <%--asdfljkas;dfj--%>
                    <%--asdllfjkas;dfj--%>
                    <%--asdflasjd;fljasdf--%>
                    <%--asdf;asjd;fjasd'fads--%>
                    <%--fladskjf;aowjf--%>
                <%--</li>--%>
                <%--<li class="a6">--%>
                    <%--lasjflask--%>
                    <%--asdfljkas;dfj--%>
                    <%--asdllfjkas;dfj--%>
                    <%--asdflasjd;fljasdf--%>
                    <%--asdf;asjd;fjasd'fads--%>
                    <%--fladskjf;aowjf--%>
                <%--</li>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<div class="menu_frame4">--%>
        <%--<div class="menu_content">--%>
            <%--<div class="frame_top">--%>

                <%--<li class="top_title">--%>
                    <%--相关推荐4--%>
                <%--</li>--%>
            <%--</div>--%>
            <%--<div class="inside_content">--%>
                <%--<li class="a6">--%>
                    <%--lasjflask--%>
                    <%--asdfljkas;dfj--%>
                    <%--asdllfjkas;dfj--%>
                    <%--asdflasjd;fljasdf--%>
                    <%--asdf;asjd;fjasd'fads--%>
                    <%--fladskjf;aowjf--%>
                <%--</li>--%>
                <%--<li class="a6">--%>
                    <%--lasjflask--%>
                    <%--asdfljkas;dfj--%>
                    <%--asdllfjkas;dfj--%>
                    <%--asdflasjd;fljasdf--%>
                    <%--asdf;asjd;fjasd'fads--%>
                    <%--fladskjf;aowjf--%>
                <%--</li>--%>
                <%--<li class="a6">--%>
                    <%--lasjflask--%>
                    <%--asdfljkas;dfj--%>
                    <%--asdllfjkas;dfj--%>
                    <%--asdflasjd;fljasdf--%>
                    <%--asdf;asjd;fjasd'fads--%>
                    <%--fladskjf;aowjf--%>

                <%--</li>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>


<div class="index_div">





    <div class="index_img">
        <div class="index_div_title">
            <div class="index_div_title">
                <li class="all_img_title">
                    我的照片--最近上传
                </li>
            </div>
        </div>
        <div class="new_img">
        </div>
        <%--<section>--%>
        <div class="index_beauty_img">
            <%
/*                String belong = request.getParameter("belong");

                System.out.print(belong);

                UploadPriImageDaoImpl uploadPriImageDao = new UploadPriImageDaoImpl();

                int pageNow = Integer.valueOf(request.getAttribute("currentPage").toString());
                long imgId = 0;

                PageBeanDaoImpl pageBeanDao = new PageBeanDaoImpl();
                int pageCount = new Long(pageBeanDao.getPageCount()).intValue()/100;
//                List<String> paths = uploadPubImages.getPubImgFilePath();
                List<String> needPaths = uploadPriImageDao.getNeedPagePriImgFilePath(pageNow);
//                Collections.reverse(paths);
                Collections.reverse(needPaths);


*//*
        JSONObject jsonObject = JSONObject.fromObject(paths);
        String jsonString = jsonObject.toString();
        request.setAttribute("fromIndexPage",jsonString);

        *//*
                if(null !=needPaths && needPaths.size() != 0){





                    for(int i =0;i<needPaths.size();i++) {

                        String imgPath = needPaths.get(i);
                        imgId = uploadPriImageDao.getPriImgId(imgPath);

                        ImageHeart imageHeart = new ImageHeart();

                        int imgHeartNum = imageHeart.getImageHeartNumberById(imgId);
//                        System.out.println("h:" + imgHeartNum);



                        String[] strings = needPaths.get(i).split("/");
                        String p = strings[strings.length - 1];
                        request.setAttribute("ph", p);*/


                UploadPriImageDaoImpl uploadImage = new UploadPriImageDaoImpl();
                List<String> paths = uploadImage.getImageFilePath(user.getName());


                if(null != paths && paths.size() != 0){

                    Collections.reverse(paths);
                    for(int i =0;i<paths.size();i++) {

                        String imgPath = paths.get(i);
                        long imgId = uploadImage.getPriImgId(imgPath);

                        String[] strings = imgPath.split("/");
                        String p = strings[strings.length - 1];
                        String path = user.getName() + File.separator + p;
                        request.setAttribute("ph", path);

            %>

            <div class="img" title="${ph}">
                <a href="/ShowImageDetail?imgbelong=pub&from=allimages&imgId=<%=imgId%>" target="_blank">
                    <img class="my_img" src="http://www.meiticoo.com/imagedata/img/${ph}" alt="图片无法显示">
                </a>

                <div class="func_imgs" onmousemove="func1();" onmouseleave="func2()">
                    <a href="/ImageDownloadServlet?filename=${ph}" title="下载图片">
                        <img class="func_area" src="../images/icons/download/1343438-32.png">
                    </a>
                    <%--<a class="praisess">--%>
                    <%--<img src="../images/icons/heart/173032-32-blue.png" class="praise-img" />--%>
                    <%--</a>--%>

                    <%--<span class="add-num"><em>+1</em></span>--%>
                    <%--                    <div class="praise">
                                            <span id="praise">
                                                <img class="func_area" src="../images/icons/heart/173032-32-blue.png" id="praise-img" />
                                            </span>
                                            <span id="praise-txt">342</span>
                                            <span id="add-num"><em>+1</em></span>
                                        </div>--%>



                    <%--<a href="#" title="分享图片">--%>
                    <%--<img class="func_area" src="../images/icons/share/227561-32.png">--%>
                    <%--</a>--%>
                </div>


                <%--<div class="hearts">--%>
                <%--<span class="praise-txtss"><%=imgHeartNum%></span>--%>



                <%--<div class="praise">--%>
                <%--<a class="praisess">--%>
                <%--<img src="../images/icons/heart/173032-32-blue.png" class="praise-img" />--%>
                <%--</a>--%>
                <%--&lt;%&ndash;<span class="praise-txtss">342</span>&ndash;%&gt;--%>
                <%--<span class="add-num">+1</span>--%>
                <%--</div>--%>







                <%--&lt;%&ndash;<img class="func_area" src="../images/icons/heart/173032-20-blue.png">&ndash;%&gt;--%>
                <%--</div>--%>
            </div>

            <%



                        request.removeAttribute("ph");
                    }
                }
            %>
            <%--</section>--%>
            <%--       <div class="paging_bar">
                        <span>当前页:<%=pageNow+1%></span>
                        <span>总页数:<%=pageCount+1%></span>

                        <a href="/QueryAllImagesServlet?classify=fromLastMonth&pg=0">首页</a>
                        <a href="/QueryAllImagesServlet?classify=fromLastMonth&pg=<%=pageNow-1%>">上一页</a>
                        <a href="/QueryAllImagesServlet?classify=fromLastMonth&pg=<%=pageNow+1%>">下一页</a>
                        <a href="/QueryAllImagesServlet?classify=fromLastMonth&pg=<%=pageCount%>">尾页</a>
                        <%
                            /*                out.print("id: " + imgId);
                                            imgId -= 100;
                                            out.print("current: " + request.getAttribute("currentPage"));*/

                        %>
                    </div>--%>

        </div>



    </div>
    <div class="copyright_text">
        <p>
            Copyright © 2017 Image group. All rights reserved
        </p>

    </div>
</div>


<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script>
    /* @author:Romey
     * 动态点赞
     * 此效果包含css3，部分浏览器不兼容（如：IE10以下的版本）
    */
    $(function(){
        var num=0;
        var imgid=664;

        $(".praisess").click(function(){
            var praise_img = $(".praise-img");
            var text_box = $(".add-num");
            var praise_txt = $(".praise-txtss");

            num=parseInt(praise_txt.text());
            alert(praise_txt.text());

            if(praise_img.attr("src") == ("../images/icons/heart/173032-32-red.png")){
                $(this).html("<img src='../images/icons/heart/173032-32-blue.png' class='praise-img' id='animation' />");
                praise_txt.removeClass("hover");
                text_box.show().html("<span class='add-animation'>-1</span>");
                $(".add-animation").removeClass("hover");
                num -=1;
                praise_txt.text(num)
            }else{
                $(this).html("<img src='../images/icons/heart/173032-32-red.png' class='praise-img' id='animation' />");
                praise_txt.addClass("hover");
                text_box.show().html("<span class='add-animation'>+1</span>");
                $(".add-animation").addClass("hover");
                num +=1;
                praise_txt.text(num)
            }
            sendJsonData();
        });


        function sendJsonData() {

            $.ajax({
                type:"post",
                url:"/GiveImgHeartServlet",
                dataType:"text",
                data:{"heartNum":JSON.stringify(num)},
                success:function () {
//                    alert("yes");

                },
                error:function () {

//                    alert("error");
                }
            });
        }
    })

</script>


<%--

<div class="all_img_div">
    <div class="all_img">
        <div class="index_div_title">
            <li class="all_img_title">
                最近上传
            </li>
        </div>
        <div class="new_img">
        </div>
        <div class="index_beauty_img" id="all_images">
            <%
                UploadPubImages uploadPubImages = new UploadPubImages();
                List<String> paths = uploadPubImages.getPubImgFilePath();
                int index = 0;
                if(null !=paths && paths.size() != 0){
                    for(int i = index;i<index + 20;i++) {
                        String imgPath = paths.get(i);
                        long imgId = uploadPubImages.getPubImgId(imgPath);
                        String[] strings = paths.get(i).split("/");
                        String p = strings[strings.length - 1];
                        request.setAttribute("ph", p);
            %>
            &lt;%&ndash;<div class="img" title="${ph}">&ndash;%&gt;
            <div id="img_id">
                &lt;%&ndash;<a href="../jsp/showImage.jsp?imgId=<%=imgId%>" target="_blank">&ndash;%&gt;
                &lt;%&ndash;
                                        <img src="http://www.meiticoo.com/imagedata/pub_img/7.jpg" alt="图片无法显示" width="250" height="170px">
                                    &lt;%&ndash;</a>&ndash;%&gt;
                                        <img src="http://www.meiticoo.com/imagedata/pub_img/7.jpg" alt="图片无法显示" width="250" height="170px">
                                        <img src="http://www.meiticoo.com/imagedata/pub_img/7.jpg" alt="图片无法显示" width="250" height="170px">
                                        <img src="http://www.meiticoo.com/imagedata/pub_img/7.jpg" alt="图片无法显示" width="250" height="170px">
                &ndash;%&gt;


                &lt;%&ndash;<div class="parent_div">&ndash;%&gt;
                &lt;%&ndash;<ul id="my_list">&ndash;%&gt;
                &lt;%&ndash;<li>This is list item origin.</li>&ndash;%&gt;
                &lt;%&ndash;</ul>&ndash;%&gt;
                &lt;%&ndash;</div>&ndash;%&gt;
            </div>
            <div class="more_imgs">
            </div>
            <%
                    request.removeAttribute("ph");
                }
            %>
            <%
                }
            %>
        </div>
    </div>
</div>
--%>

<%--<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
    (function ($) {


        var pos = 0;
        var LIST_ITEM_SIZE = 60;
        var imgIdsAndNames=${idsAndPaths};
        var index = 0;
        //滚动条距底部的距离
        var BOTTOM_OFFSET = 0;
        createListItems();
//            sendJsonData();
        $(document).ready(function () {
            $(window).scroll(function () {
                var $currentWindow = $(window);
                //当前窗口的高度
                var windowHeight = $currentWindow.height();
                console.log("current widow height is " + windowHeight);
                //当前滚动条从上往下滚动的距离
                var scrollTop = $currentWindow.scrollTop();
                console.log("current scrollOffset is " + scrollTop);
                //当前文档的高度
                var docHeight = $(document).height();
                console.log("current docHeight is " + docHeight);

                //当 滚动条距底部的距离 + 滚动条滚动的距离 >= 文档的高度 - 窗口的高度
                //换句话说：（滚动条滚动的距离 + 窗口的高度 = 文档的高度）  这个是基本的公式
                if ((BOTTOM_OFFSET + scrollTop) >= docHeight - windowHeight) {
                    createListItems();
                }
            });
        });

        function sendJsonData() {

            $.ajax({
                type:"post",
                url:"/ShowImageDetail",
                dataType:"text",
                data:{"imgsData":JSON.stringify(imgIdsAndNames)},
                success:function () {
                    alert("yes");

                },
                error:function () {

                    alert("error");
                }
            });
        }


        function createListItems() {

            var imgLength = ${len};
            var mydocument = document;

            var imgIds = new Array();
            var imgPaths = new Array();


            var mylist = mydocument.getElementById("img_id");
            var docFragments = mydocument.createDocumentFragment();
            &lt;%&ndash;var pathsList=${allpaths};&ndash;%&gt;



            for(var idAndName in imgIdsAndNames){
                imgIds.push(idAndName);
                imgPaths.push(imgIdsAndNames[idAndName]);
            }
            imgIds.reverse();
            imgPaths.reverse();

            for (var i = pos; i < pos + LIST_ITEM_SIZE; ++i) {

                if(i<imgPaths.length){

//                        var show_img='<a class="i"/>';

                    var divItem = mydocument.createElement("div");
                    var funcDivItem = mydocument.createElement("div");
                    funcDivItem.className="func_imgs";









                    /*
                                            var addCssRule = function() {
                                                // 创建一个 style， 返回其 stylesheet 对象
                                                // 注意：IE6/7/8中使用 style.stylesheet，其它浏览器 style.sheet
                                                function createStyleSheet() {
                                                    var head = document.head || document.getElementsByTagName('head')[0];
                                                    var style = document.createElement('style');
                                                    style.type = 'text/css';
                                                    head.appendChild(style);
                                                    console.dir(style);
                                                    return style.sheet ||style.styleSheet;
                                                }

                                                // 创建 stylesheet 对象
                                                var sheet = createStyleSheet();

                                                // 返回接口函数
                                                return function(selector, rules, index) {
                                                    index = index || 0;
                                                    if (sheet.insertRule) {
                                                        sheet.insertRule(selector + "{" + rules + "}", index);
                                                    } else if (sheet.addRule) {
                                                        sheet.addRule(selector, rules, index);
                                                    }
                                                }
                                            }();

                                            addCssRule('.func_imgs',
                                                'width:106px;height:32px;display: none;position: absolute;right:2px;top:2px;');
                                            addCssRule('#img_id:hover .func_imgs', 'display: inline-block;');


                    */
















                    divItem.className="img_div";

                    var aItem = mydocument.createElement("a");
                    aItem.className="a_img";
                    var funcAItem = mydocument.createElement("a");
                    funcAItem.className="func_a_img";
                    aItem.setAttribute("target","_blank");
                    aItem.setAttribute("href","/ShowImageDetail?imgbelong=pub&from=allimages&imgId=" + imgIds[i]);
//                        aItem.setAttribute("href","/ShowImageDetail");

                    var imgItem = mydocument.createElement("img");
                    var funcImgItem = mydocument.createElement("img");
                    funcImgItem.setAttribute("src","../images/icons/download/1343438-32.png");
                    funcImgItem.className="func_area";


//                        imgItem.className="a_img";
                    imgItem.setAttribute("src","http://www.meiticoo.com/imagedata/pub_img/"+imgPaths[i]);


//                    liItem.innerHTML = "This is item " + i;
//                        docFragments.innerHTML=show_img;

                    funcAItem.appendChild(funcImgItem);
                    funcDivItem.appendChild(funcAItem);

                    aItem.appendChild(imgItem);

                    divItem.appendChild(aItem);
                    divItem.appendChild(funcDivItem);
//                        docFragments.appendChild(imgItem);


                    docFragments.appendChild(divItem);
                }
            }
            pos += LIST_ITEM_SIZE;
            mylist.appendChild(docFragments);
        }
    })(jQuery);






</script>--%>

<%--返回顶部--%>
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



<%--<script type="javascript">

    //获取浏览器页面可见高度和宽度
    var _PageHeight = document.documentElement.clientHeight,
        _PageWidth = document.documentElement.clientWidth;
    //计算loading框距离顶部和左部的距离（loading框的宽度为215px，高度为61px）
    var _LoadingTop = _PageHeight > 61 ? (_PageHeight - 61) / 2 : 0,
        _LoadingLeft = _PageWidth > 215 ? (_PageWidth - 215) / 2 : 0;
    //在页面未加载完毕之前显示的loading Html自定义内容
    var _LoadingHtml = '<div id="loadingDiv" style="position:absolute;left:0;width:100%;height:' + _PageHeight + 'px;top:0;background:#f3f8ff;opacity:0.8;filter:alpha(opacity=80);z-index:10000;"><div style="position: absolute; cursor1: wait; left: ' + _LoadingLeft + 'px; top:' + _LoadingTop + 'px; width: auto; height: 57px; line-height: 57px; padding-left: 50px; padding-right: 5px; background: #fff url(/Content/loading.gif) no-repeat scroll 5px 10px; border: 2px solid #95B8E7; color: #696969; font-family:\'Microsoft YaHei\';">页面加载中，请等待...</div></div>';
    //呈现loading效果
    document.write(_LoadingHtml);

    //window.onload = function () {
    //    var loadingMask = document.getElementById('loadingDiv');
    //    loadingMask.parentNode.removeChild(loadingMask);
    //};

    //监听加载状态改变
    document.onreadystatechange = completeLoading;

    //加载状态为complete时移除loading效果
    function completeLoading() {
        if (document.readyState == "complete") {
            var loadingMask = document.getElementById('loadingDiv');
            loadingMask.parentNode.removeChild(loadingMask);
        }
    }
</script>--%>


</body>
</html>
