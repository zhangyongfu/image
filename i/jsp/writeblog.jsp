<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 18-1-24
  Time: 下午8:11
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
<%--<%@ include file="topMenuHavenotSearchBar.jsp"%>--%>

<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8" />
    <title>Full example - Editor.md examples</title>
    <%--<link rel="stylesheet" href="css/style.css" />--%>
    <link rel="stylesheet" href="../editormd/css/editormd.css" />
    <style>
        /*.editormd-preview-theme-dark {
            color: #777;
            background:#2C2827;
        }

        .editormd-preview-theme-dark .editormd-toc-menu > .markdown-toc {
            background:#fff;
            border:none;
        }

        .editormd-preview-theme-dark .editormd-toc-menu > .markdown-toc h1{
            border-color:#ddd;
        }

        .editormd-preview-theme-dark .markdown-body h1,
        .editormd-preview-theme-dark .markdown-body h2,
        .editormd-preview-theme-dark .markdown-body hr {
            border-color: #222;
        }

        .editormd-preview-theme-dark .editormd-preview-container  blockquote {
            color: #555;
            border-color: #333;
            background: #222;
            padding: 0.5em;
        }

        .editormd-preview-theme-dark .editormd-preview-container abbr {
            background:#ff9900;
            color: #fff;
            padding: 1px 3px;
            border-radius: 3px;
        }

        .editormd-preview-theme-dark .editormd-preview-container code {
            background: #5A9600;
            color: #fff;
            border: none;
            padding: 1px 3px;
            border-radius: 3px;
        }

        .editormd-preview-theme-dark .editormd-preview-container table {
            border: none;
        }

        .editormd-preview-theme-dark .editormd-preview-container .fa-emoji {
            color: #B4BF42;
        }

        .editormd-preview-theme-dark .editormd-preview-container .katex {
            color: #FEC93F;
        }

        .editormd-preview-theme-dark [class*=editormd-logo] {
            color: #2196F3;
        }

        .editormd-preview-theme-dark .sequence-diagram text {
            fill: #fff;
        }

        .editormd-preview-theme-dark .sequence-diagram rect,
        .editormd-preview-theme-dark .sequence-diagram path {
            color:#fff;
            fill : #64D1CB;
            stroke : #64D1CB;
        }

        .editormd-preview-theme-dark .flowchart rect,
        .editormd-preview-theme-dark .flowchart path {
            stroke : #A6C6FF;
        }

        .editormd-preview-theme-dark .flowchart rect {
            fill: #A6C6FF;
        }

        .editormd-preview-theme-dark .flowchart text {
            fill: #5879B4;
        }*/
    </style>
</head>
<body>

<div id="top_bg">
    <div class="top">
        <a class="logo_l" href="/" title="返回首页">
            <img class="logo_img" src="images/logo/logo-200_55.png">
        </a>

        <nav class="top_menu">
            <ul class="primary_menu">
                <li class="menu_item"><a href="/">首页</a></li>
                <li class="menu_item"><a>图片</a>
                    <ul class="sub_menu">
                        <li class="sub_menu_item"> <a href="/PubImgListServlet?from=indexpage" title="公共图片">图片</a></li>
                        <%--<li class="sub_menu_item"> <a href="/jsp/test.jsp" target="_blank">公共图库</a></li>--%>
                        <li class="sub_menu_item"> <a href="jsp/mygallery.jsp" title="我的图片">我的图片</a></li>
                        <li class="sub_menu_item"> <a href="jsp/uploadImagesByWebuploader.jsp">上传图片</a></li>
                        <%--<li class="sub_menu_item"> <a href="jsp/uploadImagesByWebuploader.jsp">测试上传图片</a></li>--%>
                    </ul>
                </li>
                <li class="menu_item"><a >音乐</a>
                    <ul class="sub_menu">
                        <li class="sub_menu_item"> <a href="jsp/music.jsp">搜索</a></li>
                    </ul>
                    <%--            <ul class="sub_menu">
                                  <li class="sub_menu_item"> <a href="jsp/pubgallery.jsp" title="公共图库">公共图库</a></li>
                                  &lt;%&ndash;<li class="sub_menu_item"> <a href="/jsp/test.jsp" target="_blank">公共图库</a></li>&ndash;%&gt;
                                  <li class="sub_menu_item"> <a href="jsp/mygallery.jsp" title="私人图库">私人图库</a></li>
                                  <li class="sub_menu_item"> <a href="jsp/mygallery.jsp">创建图库</a></li>
                                </ul>--%>
                </li>
                <li class="menu_item"><a >视频</a>
                    <ul class="sub_menu">
                        <li class="sub_menu_item"> <a href="jsp/video.jsp">我的视频</a></li>
                        <li class="sub_menu_item"> <a href="jsp/video.jsp">搜索</a></li>
                    </ul>
                    <%--            <ul class="sub_menu">
                                  <li class="sub_menu_item"> <a href="jsp/pubgallery.jsp" title="公共图库">公共图库</a></li>
                                  &lt;%&ndash;<li class="sub_menu_item"> <a href="/jsp/test.jsp" target="_blank">公共图库</a></li>&ndash;%&gt;
                                  <li class="sub_menu_item"> <a href="jsp/mygallery.jsp" title="私人图库">私人图库</a></li>
                                  <li class="sub_menu_item"> <a href="jsp/mygallery.jsp">创建图库</a></li>
                                </ul>--%>
                </li>
                <li class="menu_item"><a>关于</a>
                    <ul class="sub_menu">
                        <li class="sub_menu_item"> <a
                                href="editor.md-master/examples/full.html"
                        >博客</a></li>
                        <li class="sub_menu_item"> <a
                        <%--href="jsp/webBuild.jsp"--%>
                        >网站</a></li>
                        <li class="sub_menu_item"> <a
                        <%--href="jsp/test2.jsp"--%>
                        >团队</a></li>
                        <li class="sub_menu_item"> <a
                        <%--href="websocket/chat.xhtml"--%>
                        >群聊</a></li>
                        <li class="sub_menu_item"> <a
                        <%--href="jsp/tt.html"--%>
                        >反馈</a></li>
                        <li class="sub_menu_item"> <a
                        <%--href="jsp/imagesearchtest.html"--%>
                        >搜索</a></li>
                        <li class="sub_menu_item"> <a
                        <%--href="jsp/testTopMenu.jsp"--%>
                        >联系我们</a></li>
                        <li class="sub_menu_item"> <a
                        <%--href="jsp/topMenuHavenotSearchBar.jsp"--%>
                        >test</a></li>
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
                <ul class="user_primary_menu">


                    <li class="user_menu_item">
                        <ul class="user_name">
                            <li>
                                <a class="show_user" href="/userinformation" title="<%=user.getName()%>">
                                    <%--<a class="menu_item" href="/userinformation" title="<%=user.getName()%>">--%>
                                    <%
                                        out.print(user.getName());
                                    %>
                                </a>
                            </li>
                        </ul>
                        <ul class="user_sub_menu">
                            <li class="user_sub_menu_item"> <a href="/userinformation">个人中心</a></li>
                            <li class="user_sub_menu_item"> <a href="#">我的图库</a></li>
                            <li class="user_sub_menu_item"> <a href="/userinformation">设置</a></li>
                            <li class="user_sub_menu_item"> <a href="/loginout">注销</a></li>
                            <%--<li class="user_sub_menu_item"> <a href="jsp/testTopMenu.jsp">联系我们</a></li>--%>
                        </ul>
                    </li>

                </ul>

            </li>
        </ul>
        <%--<form id="loginout" action="/loginout" method="post">--%>
        <%--<input type="submit" title="注销" value="注销">--%>
        <%--</form>--%>

        <%
        }
        else{
        %>
        <ul>
            <li id="top_login">
                <a id="login" href="./jsp/login.jsp">登录</a>
                |
                <a id="register" href="./jsp/goregister.jsp">注册</a>
            </li>
        </ul>
        <%
            }
        %>
        <div>

        </div>

    </div>
</div>



<div id="layout">
    <header>
        <h1>完整示例</h1>
        <p>Full example</p>
        <ul style="margin: 10px 0 0 18px;">
            <li>Enable HTML tags decode</li>
            <li>Enable TeX, Flowchart, Sequence Diagram, Emoji, FontAwesome, Task lists</li>
            <li>Enable Image upload</li>
            <li>Enable [TOCM], Search Replace, Code fold</li>
        </ul>
    </header>
    <div class="btns">
        <button id="goto-line-btn">Goto line 90</button>
        <button id="show-btn">Show editor</button>
        <button id="hide-btn">Hide editor</button>
        <button id="get-md-btn">Get Markdown</button>
        <button id="get-html-btn">Get HTML</button>
        <button id="watch-btn">Watch</button>
        <button id="unwatch-btn">Unwatch</button>
        <button id="preview-btn">Preview HTML (Press Shift + ESC cancel)</button>
        <button id="fullscreen-btn">Fullscreen (Press ESC cancel)</button>
        <button id="show-toolbar-btn">Show toolbar</button>
        <button id="close-toolbar-btn">Hide toolbar</button>
        <button id="toc-menu-btn">ToC Dropdown menu</button>
        <button id="toc-default-btn">ToC default</button>
    </div>
    <div id="test-editormd"></div>
</div>
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../editormd.js"></script>
<script type="text/javascript">
    var testEditor;

    $(function() {

        $.get('test.md', function(md){
            testEditor = editormd("test-editormd", {
                width: "90%",
                height: 740,
                path : '../lib/',
                theme : "dark",
                previewTheme : "dark",
                editorTheme : "pastel-on-dark",
                markdown : md,
                codeFold : true,
                //syncScrolling : false,
                saveHTMLToTextarea : true,    // 保存 HTML 到 Textarea
                searchReplace : true,
                //watch : false,                // 关闭实时预览
                htmlDecode : "style,script,iframe|on*",            // 开启 HTML 标签解析，为了安全性，默认不开启
                //toolbar  : false,             //关闭工具栏
                //previewCodeHighlight : false, // 关闭预览 HTML 的代码块高亮，默认开启
                emoji : true,
                taskList : true,
                tocm            : true,         // Using [TOCM]
                tex : true,                   // 开启科学公式TeX语言支持，默认关闭
                flowChart : true,             // 开启流程图支持，默认关闭
                sequenceDiagram : true,       // 开启时序/序列图支持，默认关闭,
                //dialogLockScreen : false,   // 设置弹出层对话框不锁屏，全局通用，默认为true
                //dialogShowMask : false,     // 设置弹出层对话框显示透明遮罩层，全局通用，默认为true
                //dialogDraggable : false,    // 设置弹出层对话框不可拖动，全局通用，默认为true
                //dialogMaskOpacity : 0.4,    // 设置透明遮罩层的透明度，全局通用，默认值为0.1
                //dialogMaskBgColor : "#000", // 设置透明遮罩层的背景颜色，全局通用，默认为#fff
                imageUpload : true,
                imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
                imageUploadURL : "./php/upload.php",
                onload : function() {
                    console.log('onload', this);
                    //this.fullscreen();
                    //this.unwatch();
                    //this.watch().fullscreen();

                    //this.setMarkdown("#PHP");
                    //this.width("100%");
                    //this.height(480);
                    //this.resize("100%", 640);
                }
            });
        });

        $("#goto-line-btn").bind("click", function(){
            testEditor.gotoLine(90);
        });

        $("#show-btn").bind('click', function(){
            testEditor.show();
        });

        $("#hide-btn").bind('click', function(){
            testEditor.hide();
        });

        $("#get-md-btn").bind('click', function(){
            alert(testEditor.getMarkdown());
        });

        $("#get-html-btn").bind('click', function() {
            alert(testEditor.getHTML());
        });

        $("#watch-btn").bind('click', function() {
            testEditor.watch();
        });

        $("#unwatch-btn").bind('click', function() {
            testEditor.unwatch();
        });

        $("#preview-btn").bind('click', function() {
            testEditor.previewing();
        });

        $("#fullscreen-btn").bind('click', function() {
            testEditor.fullscreen();
        });

        $("#show-toolbar-btn").bind('click', function() {
            testEditor.showToolbar();
        });

        $("#close-toolbar-btn").bind('click', function() {
            testEditor.hideToolbar();
        });

        $("#toc-menu-btn").click(function(){
            testEditor.config({
                tocDropdown   : true,
                tocTitle      : "目录 Table of Contents",
            });
        });

        $("#toc-default-btn").click(function() {
            testEditor.config("tocDropdown", false);
        });
    });
</script>
</body>
</html>

<%--<html xmlns="http://www.w3.org/1999/xhtml" >--%>
<%--<head runat="server">--%>
    <%--<title>利用层模拟在textarea表单中插入图片</title>--%>

<%--</head>--%>
<%--<body>--%>

<%--</body>--%>
<%--</html>--%>