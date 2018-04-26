<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 18-2-7
  Time: 下午9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style type="text/css">

        .myImgSearchImg{
            position: fixed;
            top:10px;
            left:130px;
            height:35px;
            border-radius:5px;
            background-color: beige;
            border:none;

            width:280px;
        }

        .goSearch{

            position: fixed;
            top:10px;
            left:420px;
            float: left;
            height:35px;
            background:beige;
            border:none;
            border-radius:5px;

        }
        .goSearch:hover{
            cursor: pointer;
            background-color: gainsboro;

        }

    </style>



</head>
<body>
<form class="searchBar" action="SearchImgPage" method="get">
    <input class="myImgSearchImg" type="search" name="searchText" placeholder="搜索图片.."
           onfocus="this.style.backgroundColor='gainsboro'"
           onblur="this.style.backgroundColor='beige'">
    <input class="goSearch" type="submit" value="搜索">
</form>
</body>
</html>
