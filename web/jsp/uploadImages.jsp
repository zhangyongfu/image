<%--
&lt;%&ndash;
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-11-2
  Time: 下午9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link href="../css/uploadimages.css" rel="stylesheet" type="text/css"/>

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
        <%--<input type="button" value="取消上传">--%>
        <img src="../images/icons/cancel_upload.png">
    </a>
</div>
<h2>
    选择你要上传的图片
</h2>
<hr/>
</p>



<%--<form method="post" action="UploadPriImgServlet" enctype="multipart/form-data">--%>
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

