<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>jQuery+CSS3文章点赞功能代码</title>
    <style type="text/css">
        body{
            margin:0;
            padding:0;
        }
        .text-content{
            min-width:1180px;
            border-bottom: 1px solid #e7e7e7;
            border-top: 1px solid #e7e7e7;
            background: #f4f4f4;
        }
        .text-content h1{
            text-align:center;
            font-size: 20px;
            padding-top: 50px;
            color: #EB4F38;
        }
        .text-content p{
            padding: 10px 100px 40px 100px;
            clear: both;
            color: #333;
            display: block;
            font-family: "Microsoft Yahei","Helvetica Neue",Helvetica,Arial,sans-serif;
            font-size: 16px;
            line-height: 1.6;
            margin: 0 auto;
            outline: medium none;
            position: relative;
            width: 900px;
            word-wrap: break-word;
        }
        .praise{
            width:40px;
            height:40px;
            margin: 50px auto;
            cursor: pointer;
            font-size: 12px;
            text-align:center;
            position: relative;
        }
        #praise{
            display:block;
            width:40px;
            height:40px;
            margin:0 auto;
        }
        #praise-txt{
            height:25px;
            line-height:25px;
            display: block;
        }
        .praise img{
            width:40px;
            height:40px;
            display:block;
            margin: 0 auto;
        }
        .praise img.animation{
            animation: myfirst 0.5s;
            -moz-animation: myfirst 0.5s;
            -webkit-animation: myfirst 0.5s;
            -o-animation: myfirst 0.5s;
        }
        #add-num{
            display:none;
        }
        /*#add-num .add-animation{*/
            /*color: #000;*/
            /*position:absolute;*/
            /*top:-15px;*/
            /*left: 10px;*/
            /*font-size: 15px;*/
            /*opacity: 0;*/
            /*filter: Alpha(opacity=0);*/
            /*-moz-opacity:0;*/
            /*animation: mypraise 0.5s ;*/
            /*-moz-animation: mypraise 0.5s ;*/
            /*-webkit-animation: mypraise 0.5s ;*/
            /*-o-animation: mypraise 0.5s ;*/
            /*font-style:normal;*/
        /*}*/
        .praise .hover , #add-num .add-animation.hover , #praise-txt.hover{
            color: #EB4F38;
        }
        @keyframes myfirst
        {
            0%{
                width:32px;
                height:32px;
            }
            50%{
                width:38px;
                height:38px;
            }
            100% {
                width:32px;
                height:32px;
            }
        }
        @-moz-keyframes myfirst
        {
            0%{
                width:32px;
                height:32px;
            }
            50%{
                width:38px;
                height:38px;
            }
            100% {
                width:32px;
                height:32px;
            }
        }
        @-webkit-keyframes myfirst
        {
            0%{
                width:32px;
                height:32px;
            }
            50%{
                width:38px;
                height:38px;
            }
            100% {
                width:32px;
                height:32px;
            }
        }
        @-o-keyframes myfirst
        {
            0%{
                width:32px;
                height:32px;
            }
            50%{
                width:38px;
                height:38px;
            }
            100% {
                width:32px;
                height:32px;
            }
        }







        @keyframes mypraise
        {
            0%{
                top:-15px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
            25%{
                top:-20px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            50%{
                top:-25px;
                opacity: 1;
                filter: Alpha(opacity=100);
                -moz-opacity:1;
            }
            75%{
                top:-30px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            100% {
                top:-35px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
        }
        @-moz-keyframes mypraise
        {
            0%{
                top:-15px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
            25%{
                top:-20px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            50%{
                top:-25px;
                opacity: 1;
                filter: Alpha(opacity=100);
                -moz-opacity:1;
            }
            75%{
                top:-30px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            100% {
                top:-35px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
        }
        @-webkit-keyframes mypraise
        {
            0%{
                top:-15px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
            25%{
                top:-20px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            50%{
                top:-25px;
                opacity: 1;
                filter: Alpha(opacity=100);
                -moz-opacity:1;
            }
            75%{
                top:-30px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            100% {
                top:-35px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
        }
        @-o-keyframes mypraise
        {
            0%{
                top:-15px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
            25%{
                top:-20px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            50%{
                top:-25px;
                opacity: 1;
                filter: Alpha(opacity=100);
                -moz-opacity:1;
            }
            75%{
                top:-30px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            100% {
                top:-35px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
        }
    </style>
    <script type="text/javascript" src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
</head>
<body>
<!--动态点赞开始-->
<div class="praise">
  <span id="praise">
    <img src="../images/icons/heart/173032-32-blue.png" id="praise-img" />
  </span>
    <span id="praise-txt">145</span>
    <span id="add-num"><em>+1</em></span>
</div>
<!--动态点赞结束-->
<script>
    /* @author:Romey
     * 动态点赞
     * 此效果包含css3，部分浏览器不兼容（如：IE10以下的版本）
    */
    $(function(){
        $("#praise").click(function(){
            var praise_img = $("#praise-img");
            alert(praise_img);
            var text_box = $("#add-num");
            var praise_txt = $("#praise-txt");
            var num=parseInt(praise_txt.text());
            if(praise_img.attr("src") == ("../images/icons/heart/173032-32-red.png")){
                $(this).html("<img src='../images/icons/heart/173032-32-blue.png' id='praise-img' class='animation' />");
                praise_txt.removeClass("hover");
                text_box.show().html("<em class='add-animation'>-1</em>");
                $(".add-animation").removeClass("hover");
                num -=1;
                praise_txt.text(num)
            }else{
                $(this).html("<img src='../images/icons/heart/173032-32-red.png' id='praise-img' class='animation' />");
                praise_txt.addClass("hover");
                text_box.show().html("<em class='add-animation'>+1</em>");
                $(".add-animation").addClass("hover");
                num +=1;
                praise_txt.text(num)
            }
        });
    })
</script>
</body>
</html>