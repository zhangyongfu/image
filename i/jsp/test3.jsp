<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 18-1-18
  Time: 下午5:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <style type="text/css">

        .imgs{
            width:500px;
            background-color: #28a745;
            position: relative;
        }
        .my_img{
            width:400px;
            height:auto;
        }
        .imgs:hover .func_imgs{
            /*cursor: pointer;*/
            background-color: #e0a800;
            display: inline-block;

        }
        .imgs:hover .hearts{
            /*cursor: pointer;*/
            background-color: #e83e8c;
            display: inline-block;

        }
        .func_imgs{
            width:202px;
            height:64px;
            display: none;
            position: absolute;
            right:2px;
            top:2px;
        }
        .hearts{
            width:202px;
            height:36px;
            display: none;
            position: absolute;
            left:2px;
            top:2px;
        }
        .hearts span{
            position: relative;
            margin:0 2px 2px 2px;
            top:2px;
        }
        .hearts img{
            position: relative;
            top:8px;
        }

    </style>
</head>
<body>
<div class="img">



    <div class="imgs">
        <img class="my_img" src="http://localhost:8080/i/pub_img/11.jpg" alt="图片无法显示"
             onmousemove="displayfunction();"
             onmouseleave="fun1();"
        >
        <div class="func_imgs" onmousemove="func1();" onmouseleave="func2()">
            <a href="blog.jsp">
                <img class="func_area" src="../images/icons/download/1343438-64.png">
            </a>
            <a href="registfail.jsp">
                <img class="func_area" src="../images/icons/heart/173032-64.png">
            </a>
            <a href="#">
                <img class="func_area" src="../images/icons/share/227561-64.png">
            </a>

        </div>
        <div class="hearts">
            <span><b>837428</b>个</span>
            <img class="func_area" src="../images/icons/heart/173032-24.png">
        </div>

    </div>

</div>


<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
    <%--function displayfunction() {--%>
<%--//        document.getElementById('download_img').style.display="inline-block";--%>
<%--//        document.getElementById('heart_img').style.display="inline-block";--%>
<%--//        document.getElementById('share_img').style.display="inline-block";--%>
        <%--var es=document.getElementsByClassName('func_area');--%>
        <%--for(var i=0;i<es.length;i++){--%>
            <%--es[i].style.display="inline-block";--%>
        <%--}--%>

    <%--}--%>
    <%--function fun1() {--%>
<%--//        document.getElementById('download_img').style.display="none";--%>
<%--//        document.getElementById('heart_img').style.display="none";--%>
<%--//        document.getElementById('share_img').style.display="none";--%>
<%--//        document.getElementsByClassName('func_area').style.display="none";--%>
        <%--var es=document.getElementsByClassName('func_area');--%>
        <%--for(var i=0;i<es.length;i++){--%>
            <%--es[i].style.display="none";--%>
        <%--}--%>
    <%--}--%>

    <%--function func1() {--%>

<%--//        document.getElementById('download_img').style.display="inline-block";--%>
<%--//        document.getElementById('heart_img').style.display="inline-block";--%>
<%--//        document.getElementById('share_img').style.display="inline-block";--%>

        <%--var es=document.getElementsByClassName('func_area');--%>
        <%--for(var i=0;i<es.length;i++){--%>
            <%--es[i].style.display="inline-block";--%>
        <%--}--%>

<%--//        document.getElementsByClassName('my_img').style.opacity=0.8;--%>

<%--//        document.getElementById('func_area').style.display="block";--%>

    <%--}--%>
    <%--function func2() {--%>

<%--//        document.getElementById('download_img').style.display="inline-block";--%>
<%--//        document.getElementById('heart_img').style.display="inline-block";--%>
<%--//        document.getElementById('share_img').style.display="inline-block";--%>

        <%--var es=document.getElementsByClassName('func_area');--%>
        <%--for(var i=0;i<es.length;i++){--%>
            <%--es[i].style.display="none";--%>
        <%--}--%>

<%--//        document.getElementsByClassName('my_img').style.opacity=0.8;--%>

<%--//        document.getElementById('func_area').style.display="block";--%>

    <%--}--%>
<%--//    function func2() {--%>
<%--//--%>
<%--//        document.getElementById('download_img').style.display="none";--%>
<%--//        document.getElementById('heart_img').style.display="none";--%>
<%--//        document.getElementById('share_img').style.display="none";--%>
<%--////        document.getElementById('func_area').style.display="none";--%>
<%--//--%>
<%--//    }--%>
    <%----%>
</script>

<style>
    #test{animation:change 10s linear 0s infinite;font-size:30px;font-weight:700;}
    @keyframes change{0%   {color:#333;}25%{color:#ff0;}50%{color:#f60;}75%{color:#cf0;}100% {color:#f00;}}
</style>
<div id="test">这里是内容</div>
</body>
</html>
