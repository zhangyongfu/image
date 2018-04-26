<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-11-12
  Time: 下午6:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="org.image.model.User" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.List" %>
<%@ page import="org.image.model.UploadPubImages" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Collections" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ include file="../topMenuHavenotSearchBar.jsp"%>--%>

<!DOCTYPE html>
<html>
<head>

    <%--<%@include file="topmenu.jsp"%>--%>


    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1"  />
    <title>Meiticoo</title>
    <%--<link href="../css/style.css" rel="stylesheet" type="text/css" />--%>
    <%--<link href="css/topMenuStyle.css" rel="stylesheet" type="test/css" />--%>

    <%--<div id="top_bg">--%>
    <%--<div class="top">--%>
    <%--<div class="logo_area">--%>
    <%--<a class="logo_l" href="/" title="返回首页">--%>
    <%--<img class="logo_img" src="../images/logo/logo-64.png">--%>

    <%--</a>--%>
    <%--</div>--%>
    <%--<form class="searchBar" action="SearchImgPage" method="get">--%>
    <%--<input class="searchImg" type="search" name="searchText" placeholder="搜索图片.."--%>
    <%--onfocus="this.style.backgroundColor='gainsboro'"--%>
    <%--onblur="this.style.backgroundColor='beige'">--%>
    <%--<input class="goSearch" type="submit" value="搜索">--%>
    <%--</form>--%>


    <%--<nav class="top_menu">--%>
    <%--<ul class="primary_menu">--%>
    <%--<li class="menu_item"><a href="/">首页</a></li>--%>
    <%--<li class="menu_item"><a style="color:white">图库</a>--%>
    <%--<ul class="sub_menu">--%>
    <%--<li class="sub_menu_item"> <a href="pubgallery.jsp" target="_blank" title="公共图库">公共图库</a></li>--%>
    <%--<li class="sub_menu_item"> <a href="mygallery.jsp" target="_blank" title="私人图库">私人图库</a></li>--%>
    <%--<li class="sub_menu_item"> <a href="mygallery.jsp" target="_blank">创建图库</a></li>--%>
    <%--</ul>--%>
    <%--</li>--%>
    <%--<li class="menu_item"><a>关于</a>--%>
    <%--<ul class="sub_menu">--%>
    <%--<li class="sub_menu_item"> <a href="about.jsp" target="_blank">网站</a></li>--%>
    <%--<li class="sub_menu_item"> <a href="about.jsp" target="_blank">团队</a></li>--%>
    <%--<li class="sub_menu_item"> <a href="about.jsp" target="_blank">反馈</a></li>--%>
    <%--</ul>--%>
    <%--</li>--%>
    <%--</ul>--%>
    <%--</nav>--%>

    <%--<%--%>
    <%--HttpSession httpSession = request.getSession();--%>
    <%--User user = (User)httpSession.getAttribute("userName");--%>
    <%--if(user != null){--%>
    <%--%>--%>
    <%--<ul id="">--%>
    <%--<li id="top_login_success">--%>
    <%--<a class="show_user" href="/userinformation" title="<%=user.getName()%>">--%>
    <%--<%--%>
    <%--out.print(user.getName());--%>
    <%--%>--%>
    <%--</a>--%>
    <%--</li>--%>
    <%--<form id="loginout" action="/loginout" method="post">--%>
    <%--<input type="submit" title="注销" value="注销">--%>

    <%--</form>--%>
    <%--</ul>--%>
    <%--<%--%>
    <%--}--%>
    <%--else{--%>
    <%--%>--%>
    <%--<ul>--%>
    <%--<li id="top_login">--%>
    <%--<a id="login" href="/jsp/login.jsp">登录</a>--%>
    <%--|--%>
    <%--<a id="register" href="/jsp/goregister.jsp">注册</a>--%>
    <%--</li>--%>
    <%--</ul>--%>
    <%--<%--%>
    <%--}--%>
    <%--%>--%>
    <%--<div>--%>

    <%--</div>--%>

    <%--</div>--%>
    <%--</div>--%>

    <%--
        <style>
          .max{
            width:100%;
            height:auto;}
          .min{
            width:300px;
            height:auto;
          }
        </style>



        <script defer="defer" language="JavaScript">
            $(function () {
                $('.pub_img').click(function () {
                    $(this).toggleClass('min');
                    $(this).toggleClass('max');

                });

            });
        </script>

    --%>


    <style type="text/css">

        html {
            margin: 0 auto;
            /*background: url(../../images/background/0336.jpg) fixed #ffffff;*/
            width: 100%;
        }

        .pubgallery_page{
            width:1200px;
            margin:0 auto;
        }

        .t{
            /*width:1200px;*/
            /*margin:0 auto;*/
            position: relative;
            float: left;
            /*top:70px;*/

            background-color: transparent;
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
            width:300px;
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


        .show_img_list{
            position: absolute;
            left:210px;
            top:70px;

            /*float: left;*/
            /*width: 670px;*/
            /*padding: 0;*/
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
            width:990px;
            height:auto;

            margin-bottom: 25px;
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
            margin-bottom: 10px;
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


        .menus{
            position: relative;
            width:204px;
            overflow: auto;
            top:70px;
            /*left:20px;*/
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


        .copyright_bar{
            text-align: center;
        }


    </style>

    <style>
        #back_to_top {position: fixed;width:48px;bottom:100px;
            right:100px; height:48px;cursor:pointer;display:none;
            background:url(../../images/icons/back_to_top-48.png) no-repeat;}
    </style>









        <title>完整demo</title>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
        <script type="text/javascript" charset="utf-8" src="ueditor.config.js"></script>
        <script type="text/javascript" charset="utf-8" src="ueditor.all.min.js"> </script>
        <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
        <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
        <script type="text/javascript" charset="utf-8" src="lang/zh-cn/zh-cn.js"></script>

        <style type="text/css">
            div{
                width:100%;
            }
            #btns{
                display: none;
            }
        </style>



</head>
<body>

<div class="pubgallery_page">

    <div class="t">

        <div class="menus">
            <div class="menu_frame1">
                <div class="menu_content">
                    <div class="frame_top">

                        <li class="top_title">
                            相关推荐1
                        </li>
                    </div>
                    <div class="inside_content">
                        <li class="a6">
                            lasjflask
                            asdfljkas;dfj
                            asdllfjkas;dfj
                            asdflasjd;fljasdf
                            asdf;asjd;fjasd'fads
                            fladskjf;aowjf
                        </li>
                        <li class="a6">
                            lasjflask
                            asdfljkas;dfj
                            asdllfjkas;dfj
                            asdflasjd;fljasdf
                            asdf;asjd;fjasd'fads
                            fladskjf;aowjf
                        </li>
                        <li class="a6">
                            lasjflask
                            asdfljkas;dfj
                            asdllfjkas;dfj
                            asdflasjd;fljasdf
                            asdf;asjd;fjasd'fads
                            fladskjf;aowjf
                        </li>
                    </div>
                </div>
            </div>
        </div>



        <%--  <div class="leftmenu">
            <div class="leftmunubar">
              <div class="leftmunubarline"></div>
              <dl class="system_log">
                <dt onClick="changeImage()">菜单1<img src="images/left/select_xl01.png"></dt>
                <dd class="first_dd"><a href="#">菜单1-1</a></dd>
                <dd><a href="#">菜单1-2</a></dd>
                <dd><a href="#">菜单1-3</a></dd>
              </dl>
              <dl class="custom">
                <dt onClick="changeImage()">菜单2<img src="images/left/select_xl01.png"></dt>
                <dd class="first_dd"><a href="#">菜单2-1</a></dd>
                <dd><a href="#">菜单2-2</a></dd>
                <dd><a href="#">菜单2-3</a></dd>
              </dl>
              <dl class="channel">
                <dt>菜单3<img src="images/left/select_xl01.png"></dt>
                <dd class="first_dd"><a href="#">菜单3-1</a></dd>
                <dd><a href="#">菜单3-2</a></dd>
                <dd><a href="#">菜单3-3</a></dd>
              </dl>
              <dl class="app">
                <dt onClick="changeImage()">菜单4<img src="images/left/select_xl01.png"></dt>
                <dd class="first_dd"><a href="#">菜单4-1</a></dd>
                <dd><a href="#">菜单4-2</a></dd>
                <dd><a href="#">菜单4-3</a></dd>
              </dl>
              <dl class="cloud">
                <dt>菜单4<img src="images/left/select_xl01.png"></dt>
                <dd class="first_dd"><a href="#">菜单4-1</a></dd>
                <dd class="first_dd"><a href="#">菜单4-2</a></dd>
                <dd class="first_dd"><a href="#">菜单4-3</a></dd>
              </dl>
              <dl class="syetem_management">
                <dt>菜单5<img src="images/left/select_xl01.png"></dt>
                <dd class="first_dd"><a href="#">菜单5-1</a></dd>
                <dd><a href="#">菜单5-2</a></dd>
                <dd><a href="#">菜单5-3</a></dd>
              </dl>
            </div>
          </div>--%>
        <%--
          <script type="test/javascript" src="js/jquery.js"></script>
          <script type="test/javascript">
              $(".leftmunubar dt").css({"background-color":"slategray"});
              $(".leftmunubar dt img").attr("src","images/left/select_xl01.png");
              $(function(){
                  $(".leftmunubar dt").click(function(){
                      //每次点击都把所有“dt”设置为"#3b3b3b"颜色
                      $(".leftmunubar dt").css({"background-color":"slategray"});
                      //把本次点击的对象设置为"midnightblue"颜色
                      $(this).css({"background-color": "gray"});
                      $(this).parent().find('dd').removeClass("chioced_menu");
                      $(".leftmunubar dt img").attr("src","images/left/select_xl01.png");
                      $(this).parent().find('img').attr("src","images/left/select_xl.png");
                      $(".chioced_menu").slideUp();
                      $(this).parent().find('dd').slideToggle();
                      $(this).parent().find('dd').addClass("chioced_menu");
                  });
              })
          </script>
        --%>


        <div class="show_img_list">
            <div class="list">

                <div class="allImgs">

                    <div>
                        <script id="editor" type="text/plain" style="width:980px;height:350px;z-index: 0;"></script>
                        </div>
                        <div id="btns">
                            <div>
                            <button onclick="getAllHtml()">获得整个html的内容</button>
                            <button onclick="getContent()">获得内容</button>
                            <button onclick="setContent()">写入内容</button>
                            <button onclick="setContent(true)">追加内容</button>
                            <button onclick="getContentTxt()">获得纯文本</button>
                            <button onclick="getPlainTxt()">获得带格式的纯文本</button>
                            <button onclick="hasContent()">判断是否有内容</button>
                            <button onclick="setFocus()">使编辑器获得焦点</button>
                            <button onmousedown="isFocus(event)">编辑器是否获得焦点</button>
                            <button onmousedown="setblur(event)" >编辑器失去焦点</button>

                            </div>
                            <div>
                            <button onclick="getText()">获得当前选中的文本</button>
                            <button onclick="insertHtml()">插入给定的内容</button>
                            <button id="enable" onclick="setEnabled()">可以编辑</button>
                            <button onclick="setDisabled()">不可编辑</button>
                            <button onclick=" UE.getEditor('editor').setHide()">隐藏编辑器</button>
                            <button onclick=" UE.getEditor('editor').setShow()">显示编辑器</button>
                            <button onclick=" UE.getEditor('editor').setHeight(300)">设置高度为300默认关闭了自动长高</button>
                            </div>

                            <div>
                            <button onclick="getLocalData()" >获取草稿箱内容</button>
                            <button onclick="clearLocalData()" >清空草稿箱</button>
                            </div>

                            </div>
                            <div>
                            <button onclick="createEditor()">
                            创建编辑器</button>
                            <button onclick="deleteEditor()">
                            删除编辑器</button>
                            </div>

                            <script type="text/javascript">

                        //实例化编辑器
                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                        var ue = UE.getEditor('editor');


                        function isFocus(e){
                            alert(UE.getEditor('editor').isFocus());
                            UE.dom.domUtils.preventDefault(e)
                        }
                        function setblur(e){
                            UE.getEditor('editor').blur();
                            UE.dom.domUtils.preventDefault(e)
                        }
                        function insertHtml() {
                            var value = prompt('插入html代码', '');
                            UE.getEditor('editor').execCommand('insertHtml', value)
                        }
                        function createEditor() {
                            enableBtn();
                            UE.getEditor('editor');
                        }
                        function getAllHtml() {
                            alert(UE.getEditor('editor').getAllHtml())
                        }
                        function getContent() {
                            var arr = [];
                            arr.push("使用editor.getContent()方法可以获得编辑器的内容");
                            arr.push("内容为：");
                            arr.push(UE.getEditor('editor').getContent());
                            alert(arr.join("\n"));
                        }
                        function getPlainTxt() {
                            var arr = [];
                            arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
                            arr.push("内容为：");
                            arr.push(UE.getEditor('editor').getPlainTxt());
                            alert(arr.join('\n'))
                        }
                        function setContent(isAppendTo) {
                            var arr = [];
                            arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
                            UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
                            alert(arr.join("\n"));
                        }
                        function setDisabled() {
                            UE.getEditor('editor').setDisabled('fullscreen');
                            disableBtn("enable");
                        }

                        function setEnabled() {
                            UE.getEditor('editor').setEnabled();
                            enableBtn();
                        }

                        function getText() {
                            //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
                            var range = UE.getEditor('editor').selection.getRange();
                            range.select();
                            var txt = UE.getEditor('editor').selection.getText();
                            alert(txt)
                        }

                        function getContentTxt() {
                            var arr = [];
                            arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
                            arr.push("编辑器的纯文本内容为：");
                            arr.push(UE.getEditor('editor').getContentTxt());
                            alert(arr.join("\n"));
                        }
                        function hasContent() {
                            var arr = [];
                            arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
                            arr.push("判断结果为：");
                            arr.push(UE.getEditor('editor').hasContents());
                            alert(arr.join("\n"));
                        }
                        function setFocus() {
                            UE.getEditor('editor').focus();
                        }
                        function deleteEditor() {
                            disableBtn();
                            UE.getEditor('editor').destroy();
                        }
                        function disableBtn(str) {
                            var div = document.getElementById('btns');
                            var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
                            for (var i = 0, btn; btn = btns[i++];) {
                                if (btn.id == str) {
                                    UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
                                } else {
                                    btn.setAttribute("disabled", "true");
                                }
                            }
                        }
                        function enableBtn() {
                            var div = document.getElementById('btns');
                            var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
                            for (var i = 0, btn; btn = btns[i++];) {
                                UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
                            }
                        }

                        function getLocalData () {
                            alert(UE.getEditor('editor').execCommand( "getlocaldata" ));
                        }

                        function clearLocalData () {
                            UE.getEditor('editor').execCommand( "clearlocaldata" );
                            alert("已清空草稿箱")
                        }
                        </script>

                </div>
            </div>
            <div class="copyright_bar">
                <p>
                    Copyright © 2017 Image group. All rights reserved.
                </p>
            </div>
        </div>


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

    </div>

</div>

</body>
</html>
