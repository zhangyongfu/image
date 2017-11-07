<%--
&lt;%&ndash;
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-11-4
  Time: 下午5:12
  To change this template use File | Settings | File Templates.
&ndash;%&gt;
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <style>

        body{
            background-color: #00b3ee;
        }
        .selected_img{
            position: absolute;
            top:150px;
            left:200px;
            background-color: beige;
            width:962px;
        }


        .selected_img .img-div{
            position: relative;
            /*left:240px;*/
            padding: 5px 10px 5px 10px;
            /*top:180px;*/
            float:left;
            /*width:800px;*/
            overflow: hidden;
            text-align: center;
        }
        .image{
            width: 300px;
            height: 200px;
        }
        .choose_img{
            position: absolute;
            top:240px;
            /*left:100px;*/
            /*width:900px;*/
        }
        .choose_img input{
            /*opacity: 0;*/
            margin:0;
            padding:0;
            /*display: block;*/
            position: absolute;
            top: 0;
            left: 0;
            height: 100px;
            width: 1000px;
        }
        .choose_img .img_button{
            width: 100px;
            height: 100px;
            background-image: url(../i/background2.jpg);
        }
    </style>
</head>
<body>

<form action="/UpLoad" method="post"  enctype="multipart/form-data">

    <div class="choose_img">
        <input class="img_input" name="filename" type="file" multiple/>
        <div class="img_button">
        </div>
    </div>
    <div class="selected_img">
    </div>
        <input type="submit" value="点我">


</form>



<%
    String filename = request.getParameter("filename");
    System.out.println(filename);
%>


<script>
    var img_input=document.getElementsByClassName("img_input")[0];
    //    触发事件用的是change，因为files是数组，需要添加下标
    img_input.addEventListener("change",function(){
        var img=this;
        var img_name=this.files[0].name;
        var img_length=img.files.length;

        var img_ids=new Array(1);
        var imglen=0;


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
                    imgname_p.innerHTML=img_name;
                    img_div.className="img-div";

                    var img_id=new Date().getTime();
                    img_div.id=img_id;
//                    newlength=img_ids.push(img_id);
                    img_ids[imglen]=img_id;
                    imglen=imglen+1;
                    img_ids.length=1;
                    document.getElementsByClassName("selected_img")[0].appendChild(img_div);

                }else{
                    alert("最多上传100张图片");
                }
            };
            reader.readAsDataURL(img.files[i]);

        }

//        alert(document.getElementsByClassName("image").src);

        for(var i=0;i<img_ids.length;i++){
            alert(img_ids[i]);
        }
//        alert(newlength);

    });


    function getimages() {
//        var images = document.getElementsByClassName("selected_img");
        var image = document.getElementsByClassName("img-div");
        for(var i=0;i<image.length;i++){
            alert(image[i].src);
        }

    }
</script>



</body>
</html>

--%>



<html>
<head>
    <%--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
    <title>here</title>
</head>
<body>
<h1>dsfasfdsfsdaf</h1>
<form method="post" action="UploadImageServlet" enctype="multipart/form-data">
    选择一个文件：
    <input type="file" name="selectImage" multiple />
    <br/><br/>
    <input type="submit" value="go" />
</form>
</body>
</html>