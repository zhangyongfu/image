<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 18-2-23
  Time: 下午7:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <link rel="icon" href="../images/logo/logo-16.png" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/logo/logo-16.png" type="image/x-icon" />


    <meta charset="UTF-8">
    <title>滚动至顶部后固定</title>
    <style type="text/css">
        .wrapper{width:1000px;height:2000px;margin-left:auto;margin-right:auto;}
        .header{height:58px;}
        #nav_keleyi_com{padding:10px;position:relative;top:0;background:#125430;width:1000px;}
        a{display:inline-block;margin:0 10px;*display:inline;zoom:1;color:white;}
    </style>
</head>
<body>
<div class="wrapper">

    <div id="nav_keleyi_com">
</div>
<script type="text/javascript" >
    function menuFixed(id){
        var obj = document.getElementById(id);
        var _getHeight = obj.offsetTop;

        window.onscroll = function(){
            changePos(id,_getHeight);
        }
    }
    function changePos(id,height){
        var obj = document.getElementById(id);
        var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
        if(scrollTop < height){
            obj.style.position = 'relative';
        }else{
            obj.style.position = 'fixed';
        }
    }
</script>
<script type="text/javascript">
    window.onload = function(){
        menuFixed('nav_keleyi_com');
    }
</script>
</body>
</html>