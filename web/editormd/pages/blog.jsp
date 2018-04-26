<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 18-4-22
  Time: 下午9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ include file="/jsp/topMenuHavenotSearchBar.jsp"%>--%>



<!DOCTYPE html>

<html lang="zh">
<head>
    <meta charset="utf-8" />
    <title>Full example - Editor.md examples</title>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="../css/editormd.css" />
    <link rel="shortcut icon" href="../images/logo/logo-16.png" type="image/x-icon" />
    <style>

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
                                href="editormd/pages/blog.html"
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
    </header>
    <div id="test-editormd"></div>
</div>
<script src="js/jquery.min.js"></script>
<script src="../editormd.js"></script>
<script type="text/javascript">
    var testEditor;
    $(function(){
        testEditor = editormd("test-editormd",{

            width: 1280,
            height: 520,
            // syncScrolling: "single",
            syncScrolling:false,
            path : '../lib/',
            saveHTMLTOTextarea: true,
            codeFold : true,
            searchReplace : true,
            watch : true,
            tex : true,
            flowChart : true,
            sequenceDiagram : true,
            imageUpload : true,
            imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
            imageUploadURL : "/FileUploadServlet"

            /*                    width: 1280,
                                // theme : "dark",
                                // previewTheme : "dark",
                                // editorTheme : "pastel-on-dark",
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
                                }*/

        })
    });
</script>
</body>
</html>
