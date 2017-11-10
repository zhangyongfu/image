




<html>
<head>

</head>

<body>


<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>

<script>
    $(document).ready(function(){
        $("img").click(function(){
            $(".div1").fadeToggle();
        });
    });
</script>




<p>演示带有不同参数的 fadeToggle() 方法。</p>
<img src="../images/list/3.jpg" style="width: 100px;height: 100px;">点击这里，使三个矩形淡入淡出</img>
<br><br>
<img src="../images/list/3.jpg" class="div1" style="position: fixed;top:10px;left: 100px;display: none;" />
<br>
<%--
<div id="div2" style="width:80px;height:80px;background-color:green;"></div>
<br>
<div id="div3" style="width:80px;height:80px;background-color:blue;"></div>
--%>


</body>
</html>



<%--


<html>
<head>
    <script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="../js/content_zoom.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('div.small_pic a').fancyZoom({scaleImg: true, closeOnClick: true});
            $('#zoom_word_1').fancyZoom({width:400, height:200});
            $('#zoom_word_2').fancyZoom();
            $('#zoom_flash').fancyZoom();
        });
    </script>
</head>

<body>
<div class="zxx_out_box">
    <div class="zxx_in_box">
        <div class="zxx_header">
        </div>
        <div class="zxx_main_con fix mb20">
            <div class="zxx_zoom_left">
                <div class="small_pic">
                    <a href="#pic_one">
                        <img src="http://image.zhangxinxu.com/image/study/s/s128/mm1.jpg" />
                    </a>
                </div>
                <div class="small_pic">
                    <a href="#pic_two">
                        <img src="http://image.zhangxinxu.com/image/study/s/s128/mm2.jpg" />
                    </a>
                </div>
                <div class="small_pic">
                    <a href="#pic_three">
                        <img src="http://image.zhangxinxu.com/image/study/s/s128/mm3.jpg" />
                    </a>
                </div>
                <div class="small_pic">
                    <a href="#pic_four">
                        <img src="http://image.zhangxinxu.com/image/study/s/s128/mm4.jpg" />
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 要放大显示的div -->
<div id="pic_one" style="display:none;">
    <img src="http://image.zhangxinxu.com/image/study/s/s512/mm1.jpg" />
</div>
<div id="pic_two" style="display:none;">
    <img src="http://image.zhangxinxu.com/image/study/s/s512/mm2.jpg" />
</div>
<div id="pic_three" style="display:none;">
    <img src="http://image.zhangxinxu.com/image/study/s/s512/mm3.jpg" />
</div>
<div id="pic_four" style="display:none;">
    <img src="http://image.zhangxinxu.com/image/study/s/s512/mm4.jpg" />
</div>

</body>
</html>













&lt;%&ndash;


<!DOCTYPE html>
<html lang="zh-CN">
<head><meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
        点击图片全屏显示代码
    </title>
    <script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    &lt;%&ndash;<script src="<%=request.getContextPath()%>/js/jquery-3.2.1.min.js"></script>&ndash;%&gt;
    <script>
        function imgShow(outerdiv, innerdiv, bigimg, _this){
            var src = _this.attr("src");
            $(bigimg).attr("src", src);
            $("<img/>").attr("src", src).load(function(){
                var windowW = $(window).width();
                var windowH = $(window).height();
                var realWidth = this.width;
                var realHeight = this.height;
                var imgWidth, imgHeight;
                var scale = 0.8;
                if(realHeight>windowH*scale) {
                    imgHeight = windowH*scale;
                    imgWidth = imgHeight/realHeight*realWidth;
                    if(imgWidth>windowW*scale) {
                        imgWidth = windowW*scale;
                    }
                } else if(realWidth>windowW*scale) {
                    imgWidth = windowW*scale;
                    imgHeight = imgWidth/realWidth*realHeight;
                } else {
                    imgWidth = realWidth;
                    imgHeight = realHeight;
                }
                $(bigimg).css("width",imgWidth);
                var w = (windowW-imgWidth)/2;
                var h = (windowH-imgHeight)/2;
                $(innerdiv).css({"top":h, "left":w});
                $(outerdiv).fadeIn("fast");
            });
            $(outerdiv).click(function(){
                $(this).fadeOut("fast");
            });
        }
    </script>
</head>
<body style="background-color: #eeeeee;">
<div class="col-md-6 col-xs-12">
    <img class="pimg"  src="http://xiejiaming.com/wp-content/uploads/2014/08/jd5.png"  style="width:45%;" alt="...">
    <img class="pimg"  src="http://xiejiaming.com/wp-content/uploads/2014/10/10.png"  style="width:45%;" alt="...">
</div>
<script>

    $(function(){

        $(".pimg").click(function(){

            var _this = $(this);

            imgShow("#outerdiv", "#innerdiv", "#bigimg", _this);
        });
    });
</script>
<div id="outerdiv" style="position:fixed;top:0;left:0;background:rgba(0,0,0,0.8);z-index:100;width:100%;height:100%;display:none;"><div id="innerdiv" style="position:absolute;"><img id="bigimg" style="border:5px solid #fff;" src="" /></div></div>
</body>
</html>
















&lt;%&ndash;
&lt;%&ndash;
&lt;%&ndash;
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-11-2
  Time: 下午9:41
  To change this template use File | Settings | File Templates.
&ndash;%&gt;
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link href="../css/test.css" rel="stylesheet" type="text/css"/>

    <script type="text/javascript">

        function priUpload(){
            document.upload_form.method= "post";
            document.upload_form.action= "UploadPriImgServlet";
            document.upload_form.submit();
            return true;
        }
        function pubUpload(){
            document.upload_form.method= "post";
            document.upload_form.action= "UploadPubImgServlet";
            document.upload_form.submit();
            return true;
        }

    </script>
</head>
<body>


<p>
<div class="cancelupload" title="取消">
    <a href="mygallery.jsp">
        &lt;%&ndash;<input type="button" value="取消上传">&ndash;%&gt;
        <img src="../images/icons/cancel_upload.png">
    </a>
</div>
<h2>
    选择你要上传的图片
</h2>
<hr/>
</p>



&lt;%&ndash;<form method="post" action="UploadPriImgServlet" enctype="multipart/form-data">&ndash;%&gt;
<form name="upload_form" enctype="multipart/form-data">

    <div class="choose_img">
        <input class="img_input" type="file" name="selectedImage" multiple="multiple" title="选择图片"/>
        <div class="img_button">
        </div>
    </div>
    <div class="selected_img" title="点击左边图标选择图片">
    </div>

    <div  class="sureupload" title="上传到私人图库">
    <input type="submit" name="uploadImg" value="toPri" onclick="priUpload()" />
    <div class="img_upload">
        <img src="../images/icons/upload_pri.svg"/>
    </div>
    </div>
    <div  class="suretopub" title="上传到公共图库">
    <input type="submit" name="uploadImg" value="toPub" onclick="pubUpload()" />
    <div class="img_upload">
        <img src="../images/icons/upload_pub.svg"/>
    </div>
    </div>
</form>



<script>
    var img_input=document.getElementsByClassName("img_input")[0];
    //    触发事件用的是change，因为files是数组，需要添加下标
    img_input.addEventListener("change",function(){
        var img=this;
        var img_name=this.files[0].name;
        var img_length=img.files.length;


        for(var i=0;i<img_length;i++)
        {
            if(!(/image\/\w+/).test(img.files[i].type))
            {
                alert("上传的图片格式错误，请上传图片");
                return false;
            }
            var reader = new FileReader();
            reader.onload = function(e){
                var show_img='<img class="image" src="'+e.target.result+'"/>';
                var img_div=document.createElement("div");
                var imgname_p=document.createElement("p");
                if(document.getElementsByClassName("selected_img")[0].children.length<100)
                {
                    img_div.innerHTML=show_img;
                    img_div.appendChild(imgname_p);
//                    imgname_p.innerHTML=img_name;
                    img_div.className="img-div";
                    document.getElementsByClassName("selected_img")[0].appendChild(img_div);
                }else{
                    alert("一次最多只能上传100张图片");
                }
            };
            reader.readAsDataURL(img.files[i]);
        }
    });
</script>
</body>
</html>

&ndash;%&gt;
&ndash;%&gt;
--%>
