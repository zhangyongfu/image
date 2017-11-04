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


</head>
<body>


<div class="main">
    <div class="areas a">
        <div> <img src="../images/head.png" alt="头像" width="80px" height="80px"></div>
    </div>
    <div class="areas b">
        <div class="aa">

            <ul>
                <li>
                    <a href="/" target="main">前台首页</a>
                </li>
                <li>
                    <a href="/jsp/mygallery.jsp">我的图库</a>
                </li>
                <li>
                    <a href="/jsp/about.jsp">修改密码</a>
                </li>
                <li>
                    <a href="/jsp/about.jsp">安全退出</a>
                </li>
            </ul>

        </div>
        <div class="ab">
            <h3>基本信息</h3>
            <table>
                <tr>
                    <td class="textpad">姓名</td>
                    <td>
                        <input class="in" type="text" name="姓名" maxlength="20"/>
                    </td>
                </tr>
                <tr>
                    <td class="textpad">电子邮箱</td>
                    <td>
                        <input class="in" type="email" name="email"/>
                    </td>
                </tr>
                <tr>
                    <td class="textpad">出生时间</td>
                    <td>
                        <%--这里需要写一个js获取当前年份,输入时间要用js来判断--%>
                        <input class="intime" type="number" name="quantity" value="1970" oninput="limitYear(this)">
                        <input class="intime" type="number" name="quantity" value="1" oninput="limitMonth(this)">
                        <input class="intime" type="number" name="quantity" value="1" oninput="limitDay(this)">

                    </td>
                </tr>
                <tr>
                    <td class="textpad">性别</td>
                    <td>
                        <input class="sex" type="radio" name="sex" value="male" />男
                        <input class="sex" type="radio" name="sex" value="female"/>女
                        <input class="sex" type="radio" name="sex" value="null" checked/>保密
                    </td>
                </tr>
                <tr>
                    <td class="textpad">签名</td>
                    <td>
                        <input class="in" type="text" name="签名" value="" maxlength="20" />
                    </td>
                </tr>
                <tr>
                    <td class="textpad">自我介绍</td>
                    <td>
                        <textarea class="intro" name="selfIntro" id="selfIntro" maxlength="200" cols="30" rows="3"></textarea>
                    </td>
                </tr>
            </table>
            <input type="submit" value="登录" style="margin-top:60px"/>
            <button type="button" onclick="alert('hello world')" style="margin-left: 60px">返回</button>
        </div>
    </div>
</div>
</body>
</html>
