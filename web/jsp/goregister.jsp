<%@ page import="org.image.DAO.DatabaseConnection" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.image.model.User" %><%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-10-28
  Time: 下午4:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <link href="/css/loginandregister.css" rel="stylesheet" type="text/css" />

<%--    <script type="text/javascript">

        function checkBlur(inputName) {
            var checkText = document.getElementById("checkText");
//            var inputName = document.getElementById("name").value;

            if(inputName == ""){
                checkText.innerHTML("<font color='red'>用户名不能为空</font>");
            }else if(inputName.length < 6 || inputName.length > 15){
                checkText.innerHTML("<font color='red'>用户名长度必须在6-15之间</font>");
            }
            else {
                checkText.innerHTML("");
            }
        }
        function checkFocus() {
            var checkText = document.getElementById("checkText");
            var inputName = document.getElementById("name");

            checkText.innerHTML("");

        }
    </script>--%>

</head>
<body>
<div class="goregister">
    <form id="registerform" action="/register" method="post">
        <h2>IMAGE VIEWER</h2>
        <%--邮箱：--%>
        <input type="text" id="email" name="email" placeholder="email"/><br/>
        <%--姓名：--%>
        <input type="text" id="name" name="name" placeholder="name"
        <%--onblur="checkBlur(this.value);" onfocus="checkFocus();"--%>
        /><br/>
        <%--<span id="checkText"></span><br/>--%>
        <%--密码：--%>
        <input type="password" id="password" name="password" placeholder="password"/><br/>
        <input id="register" type="submit" value="注册"/><br/>
        <span id="cannotlogin"><a href="help.jsp">无法注册？</a> </span>
    </form>
</div>


</body>
</html>
