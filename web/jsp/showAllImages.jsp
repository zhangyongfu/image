<%@ page import="org.image.model.UploadPubImages" %>
<%@ page import="java.util.List" %>


<%@ page import="org.image.model.User" %><%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-12-1
  Time: 下午3:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>


    <link href="../css/topMenuStyle.css" rel="stylesheet" type="text/css" />



    <style type="text/css">
        .show_more{

            position: relative;
            top:10px;
            width:120px;
            height:120px;
            text-align: center;
            background-color: #5CB542;
        }
        .all_img_div{
            position: relative;
            top:70px;
            left:220px;
            float: left;
            width: 1050px;
            /*margin-bottom:60px;*/
            padding: 0;

        }

        .all_img{
            position: relative;
            color: deepskyblue;


            margin-bottom: 0;
            padding: 0;
            background: #FFFFFF;
            /*height:600px;*/
            border: 2px solid #D6E6CC;
            overflow: auto;
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
        .all_img_title{
            height: 30px;
            margin-bottom: 3px;
            padding: 5px 0px 2px 5px;
            text-align: center;
            color: #000;
            list-style-type: none;
        }
        .index_beauty_img{

            position: relative;
            left:13px;
            width:1030px;
        }

/*        .img a{

            !*height:auto;*!
            !*width:246px;*!
            margin-bottom: 6px;
            margin-right: 6px;
            float:left;

            position: relative;
            padding:0;
            !*left:20px;*!
            !*top:60px;*!
            width:246px;
            height:170px;
            background-color: transparent;
            text-align: center;
            display: table-cell;
            vertical-align: middle;
        }
        .img img{
            !*padding: 40px 50px 40px 50px;*!
            position: relative;
            margin:auto;
            !*top:50%;*!

            !*left:0;*!
            !*width:90%;*!
            max-width:246px;
            max-height:170px;
            width:auto;
            height:auto;
        }*/

        .img_div{

            height:auto;
            width:246px;
            margin-bottom: 6px;
            margin-right: 6px;
            float:left;
        }

        .img_div a{
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

        .img_div a img{

            /*padding: 40px 50px 40px 50px;*/
            position: relative;
            margin:auto;
            /*top:50%;*/

            /*left:0;*/
            /*width:90%;*/
            max-width:246px;
            max-height:170px;
            width:auto;
            height:auto;
        }

    </style>
</head>
<body>

    <div id="top_bg">
        <div class="top">
            <a class="logo_l" href="/" title="返回首页">
                <img class="logo_img" src="../images/logo/logo-64.png">
            </a>

            <nav class="top_menu">
                <ul class="primary_menu">
                    <li class="menu_item"><a href="/">首页</a></li>
                    <li class="menu_item"><a>图库</a>
                        <ul class="sub_menu">
                            <li class="sub_menu_item"> <a href="../jsp/pubgallery.jsp" target="_blank" title="公共图库">公共图库</a></li>
                            <%--<li class="sub_menu_item"> <a href="/jsp/test.jsp" target="_blank">公共图库</a></li>--%>
                            <li class="sub_menu_item"> <a href="../jsp/mygallery.jsp" target="_blank" title="私人图库">私人图库</a></li>
                            <li class="sub_menu_item"> <a href="../jsp/mygallery.jsp" target="_blank">创建图库</a></li>
                        </ul>
                    </li>
                    <li class="menu_item"><a>关于</a>
                        <ul class="sub_menu">
                            <li class="sub_menu_item"> <a href="../jsp/webBuild.jsp" target="_blank">网站</a></li>
                            <li class="sub_menu_item"> <a href="../jsp/about.jsp" target="_blank">团队</a></li>
                            <li class="sub_menu_item"> <a href="../jsp/about.jsp" target="_blank">反馈</a></li>
                            <li class="sub_menu_item"> <a href="../jsp/about.jsp" target="_blank">联系我们</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div>

            </div>

        </div>
    </div>


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
                <%--<div class="img" title="${ph}">--%>
                <div id="img_id">
                    <%--<a href="../jsp/showImage.jsp?imgId=<%=imgId%>" target="_blank">--%>
<%--
                        <img src="http://localhost:8080/i/pub_img/7.jpg" alt="Ballade" width="250" height="170px">
                    &lt;%&ndash;</a>&ndash;%&gt;
                        <img src="http://localhost:8080/i/pub_img/7.jpg" alt="Ballade" width="250" height="170px">
                        <img src="http://localhost:8080/i/pub_img/7.jpg" alt="Ballade" width="250" height="170px">
                        <img src="http://localhost:8080/i/pub_img/7.jpg" alt="Ballade" width="250" height="170px">
--%>


                        <%--<div class="parent_div">--%>
                            <%--<ul id="my_list">--%>
                                <%--<li>This is list item origin.</li>--%>
                            <%--</ul>--%>
                        <%--</div>--%>
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
    <script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        (function ($) {
            var pos = 0;
            var LIST_ITEM_SIZE = 60;

            var index = 0;
            //滚动条距底部的距离
            var BOTTOM_OFFSET = 0;
            createListItems();
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
            function createListItems() {

                var imgLength = ${len};
                var mydocument = document;

                var imgIds = new Array();
                var imgPaths = new Array();


                var mylist = mydocument.getElementById("img_id");
                var docFragments = mydocument.createDocumentFragment();
                <%--var pathsList=${allpaths};--%>
                var imgIdsAndNames=${idsAndPaths};


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
                        divItem.className="img_div";

                        var aItem = mydocument.createElement("a");
                        aItem.setAttribute("target","_blank");
                        aItem.setAttribute("href","../jsp/showImage.jsp?imgId=" + imgIds[i]);

                        var imgItem = mydocument.createElement("img");
//                        imgItem.className="a_img";
                        imgItem.setAttribute("src","http://localhost:8080/i/pub_img/"+imgPaths[i]);


//                    liItem.innerHTML = "This is item " + i;
//                        docFragments.innerHTML=show_img;
                        aItem.appendChild(imgItem);

                        divItem.appendChild(aItem);
//                        docFragments.appendChild(imgItem);
                        docFragments.appendChild(divItem);
                    }
                }
                pos += LIST_ITEM_SIZE;
                mylist.appendChild(docFragments);
            }
        })(jQuery);

    </script>

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
            right:100px; height:48px;cursor:pointer;display:none;
            background:url(../images/icons/back_to_top-48.png) no-repeat;}
    </style>
</body>
</html>
