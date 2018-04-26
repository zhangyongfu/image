<%@ page import="org.image.model.UserInformation" %>
<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-11-1
  Time: 下午8:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="icon" href="../images/logo/logo-16.png" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/logo/logo-16.png" type="image/x-icon" />


    <title>个人中心</title>
    <script type="text/javascript" src="../js/userInf.js"></script>
    <link href="../css/userInf.css" rel="stylesheet" type="text/css" />


</head>
<body>

<%
    HttpSession httpSession=request.getSession();
    UserInformation userInformation = (UserInformation) httpSession.getAttribute("userInformation");
    String userHeadpath=userInformation.getHead_img();
    String[] headpath=userHeadpath.split("/");
    String headPath="http://localhost:8080/i/UserHead/"+headpath[headpath.length-1];
%>

<div class="main">
    <div class="test">
        <div class="areas a">
            <div> <img src="<%out.print(headPath); %>" id="userhead" alt="头像" width="80px" height="80px" onclick="editHead(this)"></div>
            <div class="leftdiv" id="tagbut">
                <button class="on" type="button">基本信息</button><br/>
                <button class="off" type="button">帐&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;户</button>
                <button class="off" type="button">设&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;置</button>
            </div>
            </ul>
        </div>
        <div class="areas b">
            <div class="aa">
                <ul class="topul">
                    <li class="topli">
                    <a href="/" target="main">前台首页</a>
                </li>
                    <li class="topli">
                    <a href="/jsp/mygallery.jsp">我的图库</a>
                </li>
                    <li class="topli">
                    <a href="/jsp/about.jsp">注销帐号</a>
                </li>
                </ul>
            </div>
            <div id="tagdiv">
            <nav class="ab">
                <div id="infor" class="show">
                    <input class="alterbut" type="button" value="修改" onclick="changeinfo(this)"/><br/>
                    <table id="userinformationtable">
                        <tr>
                            <td class="textpad">姓名</td>
                            <td>
                                <%
                                    out.print(userInformation.getName());
                                %>
                            </td>
                        </tr>
                        <tr>
                            <td class="textpad">电子邮箱</td>
                            <td>
                                <%
                                    out.print(userInformation.getEmail());
                                %>
                            </td>
                        </tr>
                        <tr>
                            <td class="textpad">出生时间</td>
                            <td>
                                <%
                                    out.print(userInformation.getBirthday());
                                %>
                            </td>
                        </tr>
                        <tr>
                            <td class="textpad">性别</td>
                            <td>
                                <%
                                    out.print(userInformation.getSex());
                                %>
                            </td>
                        </tr>
                        <tr>
                            <td class="textpad">签名</td>
                            <td>
                                <%
                                out.print(userInformation.getSignature());
                                %>
                            </td>
                        </tr>
                        <tr>
                            <td class="textpad">自我介绍</td>
                            <td>
                                <%
                                    out.print(userInformation.getSelfintro());
                                %>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="alterinfor" class="hide">
                    <h3>基本信息</h3>
                    <form id="alterinformation" action="/userinformation" method="post">
                        <table>
                            <tr>
                                <td class="textpad">姓名</td>
                                <td>
                                    <input class="in" type="text" name="name" maxlength="20" value="<%out.print(userInformation.getName());%>"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="textpad">电子邮箱</td>
                                <td>
                                    <input class="in" type="email" name="email" value="<%out.print(userInformation.getEmail());%>"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="textpad">出生时间</td>
                                <td>
                                    <%--这里需要写一个js获取当前年份,输入时间要用js来判断--%>
                                    <input class="intime" type="number" name="year" value="1970" oninput="limitYear(this)">
                                    <input class="intime" type="number" name="month" value="1" oninput="limitMonth(this)">
                                    <input class="intime" type="number" name="day" value="1" oninput="limitDay(this)">

                                </td>
                            </tr>
                            <tr>
                                <td class="textpad">性别</td>
                                <td>
                                    <input class="sex" type="radio" name="sex" value="male" />男
                                    <input class="sex" type="radio" name="sex" value="female"/>女
                                    <input class="sex" type="radio" name="sex" value="secrecy" checked/>保密
                                </td>
                            </tr>
                            <tr>
                                <td class="textpad">签名</td>
                                <td>
                                    <input class="in" type="text" name="signature" value="<%out.print(userInformation.getSignature());%>" maxlength="20" />
                                </td>
                            </tr>
                            <tr>
                                <td class="textpad">自我介绍</td>
                                <td>
                                    <textarea class="intro" name="selfIntro"><%out.print(userInformation.getSelfintro().trim());%></textarea>
                                </td>
                            </tr>
                        </table>
                        <input type="button" value="返回" onclick="backinfor(this)" style="margin-right: 60px"/>
                        <input type="submit" value="提交" style="margin-top:25px"/>
                    </form>
                </div>

            </nav>
            <nav id="account" class="hide">
                <div class="alteraccount">
                    <div class="leftposi">
                        <p>修改密码</p><hr class="h"/>
                        <dl>
                            <dt>旧密码</dt>
                            <dd><input class="in" type="password"></dd>
                        </dl>
                        <dl>
                            <dt>新密码</dt>
                            <dd><input class="in" type="password"></dd>
                        </dl>
                        <dl>
                            <dt>确认新密码</dt>
                            <dd><input class="in" type="password"></dd>
                        </dl>
                        <p>
                            <input type="submit" value="提交">
                            <a href="/resetpas">忘记密码</a>
                        </p>
                    </div>
                    <div class="leftposi margintop">
                        <p class="warn">永久删除帐户</p><hr class="h"/>
                        <p>一旦你删除了此帐号就无法找回，请确认是否删除。</p><br/>
                        <input type="button" value="删除帐户"/>
                    </div>
                </div>
            </nav>
            <nav class="ab hide">假装有设置</nav>
        </div>
        </div>
    </div>

    <div id="headid" class="headarea">
        <form action="/updatehead" enctype="multipart/form-data" method="post">
            <div class="changeheadtop">
                <span>修改图片</span>
                <img src="../images/arrow-back.png" width="20px" height="20px" class="arrow" onclick="cancalhead()"/>
            </div>
            <div id="testa">
                <img src="<%out.print(headPath); %>" id="changehead" alt="head" width="100px" height="100px" style="margin-top: 10px">
            </div>
            <dl>
                <dt style="margin-top: 10px">选择图片</dt>
                <dd style="margin-top: 5px">
                    <input type="file" accept="image/*" id="updatehead" name="updatename" onchange="ichangehead()"/>
                    <input type="text" name="belongid" class="hide" value="<%out.print(userInformation.getBelonguserid());%>"/>
                </dd>
            </dl>
            <input type="submit" value="提交" style="margin-top: 5px"/>
    </div>
    </from>
</div>

<script>
    function ichangehead() {
        var test=document.getElementById("testa");
        var img=test.querySelector('img');
        var input_file=document.querySelector('input[type=file]').files[0];
        var reader=new FileReader();
        reader.addEventListener("load", function () {
            img.src = reader.result;
        }, false);

        if (input_file) {
            reader.readAsDataURL(input_file);
        }
    }

</script>

<%--隐藏背景--%>
<div id="hidebgid" class="hidebg"></div>

</body>
</html>
