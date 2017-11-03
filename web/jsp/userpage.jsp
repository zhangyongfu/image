<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-11-1
  Time: 下午8:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <script type="text/javascript" src="../js/userInf.js"></script>
    <link href="../css/userInf.css" rel="stylesheet" type="text/css" />


    <div id="top_bg">
        <div class="top">
            <a class="logo_l" href="/" title="返回首页"></a>
            <div class="nav_z">
                <ul id="navul" class="cl">
                    <li id="start">
                        <a href="/" target="main">首页</a>
                    </li>
                    <li id="view">
                        <a href="/jsp/mygallery.jsp">图库</a>
                    </li>
                    <li id="about">
                        <a href="/jsp/about.jsp">关于</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

</head>
<body>
<div id="tit">个人信息</div>
<div> <img src="../images/head.png" alt="头像" width="80px" height="80px"></div>
<table id="info">
    <tr>
        <td class="textpad">姓名</td>
        <td>
            <input class="in" type="text" name="姓名" maxlength="20"/>
        </td>
    </tr>
    <tr>
        <td>邮箱</td>
        <td>
            <input class="in" type="text" name="email"/>
        </td>
    </tr>
    <tr>
        <td>生日</td>
        <td>
            <%--这里需要写一个js获取当前年份,输入时间要用js来判断--%>
            <input class="intime" type="number" name="quantity" value="1970" oninput="limitYear(this)">
            <input class="intime" type="number" name="quantity" value="1" oninput="limitMonth(this)">
            <input class="intime" type="number" name="quantity" value="1" oninput="limitDay(this)">

        </td>
    </tr>
    <tr>
        <td>性别</td>
        <td>
            <input class="sex" type="radio" name="sex" value="male" />男
            <input class="sex" type="radio" name="sex" value="female"/>女
            <input class="sex" type="radio" name="sex" value="null" checked/>保密
        </td>
    </tr>
    <tr>
        <td>签名</td>
        <td>
            <input class="in" type="text" name="签名" value="" maxlength="20" />
        </td>
    </tr>
    <tr>
        <td>简介</td>
        <td>
            <textarea class="in" name="selfIntro" id="selfIntro" maxlength="200" cols="30" rows="3"></textarea>
        </td>
    </tr>
</table>
</body>
</html>
