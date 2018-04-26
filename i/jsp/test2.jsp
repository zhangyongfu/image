<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title></title>
    <script type="text/javascript" src="js/centerJs.js" ></script>
    <style>
        .parent {
            position: absolute;
            width: 500px;
            height: 300px;
            border: 3px solid red;
            margin:0 auto;
        }
        .child {
            width: 100px;
            height: 100px;
            position: absolute;
            border: 2px solid black;
        }
        #p {
            position: absolute;
            width: 300px;
            height: 300px;
            border: 1px solid blue;
        }
        #c {
            position: absolute;
            border: 1px solid green;
        }

         .mydiv{
                   margin:0 auto;
                   width:300px;
             background-color: yellow;
                   height:200px;
               }
    </style>

</head>

<body>


<div class="mydiv">
    <p>ldaskjfasldjfaslkjdflksajdfk</p>
    
</div>

<script>
    $(function(){
             $(window).resize();
         });

    $(window).resize(function(){
        $(".mydiv").css({
            position: "absolute",
            left: ($(window).width() - $(".mydiv").outerWidth())/2,
            top: ($(window).height() - $(".mydiv").outerHeight())/2
        });
    });
</script>

</body>

</html>