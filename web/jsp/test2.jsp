<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-12-6
  Time: 下午4:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <style>
        section {
            padding: 2px;
            display: flex;
            flex-wrap: wrap;
        }

        section::after {//处理最后一行
        /*content: 'clear';*/
            content: normal;
            flex-grow: 999999999;

        }
        div {
            margin: 2px;
            position: relative;
            height: 200px;
            flex-grow: 1;
            background-color: gainsboro;
        }
        img {
            max-width: 100%;
            min-width: 100%;
            height: 200px;
            object-fit: cover;
            vertical-align: bottom;
        }

    </style>
    <script src="http://cdn.static.runoob.com/libs/angular.js/1.4.6/angular.min.js"></script>

</head>
<body ng-controller="ImageLayout">
<section>
    <div>
<%--    <div ng-repeat="img in imgs" style="width:{{img.width*200/img.height}}px;flex-grow: {{img.width*200/img.height}}">
        <i style="padding-bottom: {{img.height/img.width*100}}%"></i>--%>
        <img src="http://localhost:8080/i/pub_img/6.jpg" alt="">
    </div>
    <div>

        <img src="http://localhost:8080/i/pub_img/7.jpg" alt="">
    </div>
    <div>
        <img src="http://localhost:8080/i/pub_img/8.jpg" alt="">
    </div>
    <div>
        <img src="http://localhost:8080/i/pub_img/8.jpg" alt="">
    </div>
    <div>
        <img src="http://localhost:8080/i/pub_img/8.jpg" alt="">
    </div>
    <div>
        <img src="http://localhost:8080/i/pub_img/7.jpg" alt="">
    </div>
    <div>
    <img src="http://localhost:8080/i/pub_img/6.jpg" alt="">
    </div>
    <div>
        <img src="http://localhost:8080/i/pub_img/7.jpg" alt="">
    </div>
    <div>
        <img src="http://localhost:8080/i/pub_img/8.jpg" alt="">
    </div>
    <div>
        <img src="http://localhost:8080/i/pub_img/8.jpg" alt="">
    </div>
    <div>
        <img src="http://localhost:8080/i/pub_img/8.jpg" alt="">
    </div>
    <div>
        <img src="http://localhost:8080/i/pub_img/7.jpg" alt="">
    </div>
    <div>
    <img src="http://localhost:8080/i/pub_img/6.jpg" alt="">
    </div>
    <div>
        <img src="http://localhost:8080/i/pub_img/7.jpg" alt="">
    </div>
    <div>
        <img src="http://localhost:8080/i/pub_img/8.jpg" alt="">
    </div>
    <div>
        <img src="http://localhost:8080/i/pub_img/8.jpg" alt="">
    </div>
    <div>
        <img src="http://localhost:8080/i/pub_img/8.jpg" alt="">
    </div>
    <div>
        <img src="http://localhost:8080/i/pub_img/7.jpg" alt="">

    </div>
</section>



</body>
</html>
