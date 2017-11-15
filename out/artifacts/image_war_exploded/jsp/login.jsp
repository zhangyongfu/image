<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-10-28
  Time: 下午5:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link href="../css/loginandregister.css" rel="stylesheet" type="text/css" />
    <%--<link href="../css/style.css" rel="stylesheet" type="text/css" />--%>
    <link href="../css/topMenuStyle.css" rel="stylesheet" type="text/css" />

    <div id="top_bg">
        <div class="top">
            <a class="logo_l" href="/" title="返回首页"></a>

            <form class="searchBar" action="SearchImgPage" method="get">
                <input class="searchImg" type="search" name="searchText" placeholder="搜索图片.."
                       onfocus="this.style.backgroundColor='gainsboro'"
                       onblur="this.style.backgroundColor='beige'">
                <input class="goSearch" type="submit" value="搜索">
            </form>


            <nav class="top_menu">
                <ul class="primary_menu">
                    <li class="menu_item"><a href="/">首页</a></li>
                    <li class="menu_item"><a>图库</a>
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

<script type="text/javascript">
    function checkName() {
        var name = document.getElementById("name").value;
        if(name == null || name == "") return false;
        else return true;
    }
    function checkPasswd() {
        var passwd = document.getElementById("password").value;
        if(passwd == null || passwd == "") return false;
        else return true;
    }
    function checkLogin() {
        if(checkName() && checkPasswd()) return true;
        else return false;

    }

</script>

<div class="gologin">
    <form id="loginform" action="/login" method="post" onsubmit="return checkLogin();">
        <h3>登录</h3>
        <input type="text" id="name" name="name" placeholder="用户名"><br/>
        <span id="login_name" style="color:red;display: none;font-size: 13px;">
            请输入用户名
        </span>
        <input type="password" id="password" name="password" placeholder="密码" style="margin:12px 0 12px 0px;">
        <a href="/">忘记密码</a><br/>
        <span>还没有帐号？</span>
        <a href="goregister.jsp" >注册一个</a><br/>
        <input id="login" type="submit" value="登录"/>
    </form>
</div>
</body>
</html>