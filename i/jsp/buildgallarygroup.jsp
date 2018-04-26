<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 18-4-25
  Time: 下午8:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="topMenuHavenotSearchBar.jsp"%>
<html>
<head>
    <title>创建图片组</title>
    <style>

        .build{
            width:1280px;
            margin:0 auto;
        }
        .build_body{
            position: relative;
            top:58px;

        }
        .form_title{
            position: relative;
            font-size: 25px;
            color:#3b3b3b;
            top:30px;
            left:70px;
        }
        .upload_images{
            position: relative;
            color:#3b3b3b;
            top:30px;
            left:660px;
        }

        .build_form{
            position: relative;;
            background: blue;
            left:150px;
            top:50px;
            width: 980px;


        }
        .build_form_content{
            /*float: left;*/
        }
        .form_table{
            position: relative;

            float: left;

        }
        .form_table tr,td{

            text-align: center;


        }
        .group_name, .group_type, .group_describe{
            left: 100px;
            width:560px;
            height: 80px;
            resize: none;
        }
        .commit_form{
            position: relative;
            top:120px;
            right:30px;
        }
        .commit_desc{
            position: relative;
            top:120px;
            left:30px;
        }

    </style>
</head>
<body>

<div class="build">
    <div class="build_body">

        <span class="form_title">
            创建一个图片组

        </span>
        <span class="upload_images">
            太麻烦了，以后再创建，直接<a href="../jsp/uploadImagesByWebuploader.jsp"><button>上传图片</button></a>
        </span>

        <div class="build_form">
            <form class="build_form_content">

                <table class="form_table">


                    <tr>
                        <td>
                            名称:
                        </td>
                        <td>
                            <textarea rows="3" cols="20" class="group_name"></textarea>
<%--                            <span>
                                名称是整个图片组的名字，别人可以通过这个名字搜索到这个组里的所有图片。
                            </span>--%>
                        </td>
                        <td style="color:#555555;">
                            名称是整个图片组的名字，别人可以通过这个名字搜索到这个组里的所有图片。
                        </td>

                    </tr>
                    <tr>

                        <td>
                            类型：
                        </td>
                        <td>
                            <textarea type="text" class="group_type"></textarea>
                            <span></span>
                        </td>
                        <td style="color:#555555;">
                            图片类型是指图片属于什么类型，如风景，人物等。
                        </td>
                    </tr>

                    <tr>

                        <td>
                            图片描述：
                        </td>
                        <td>
                            <textarea type="text" class="group_describe"></textarea>
                            <span></span>
                        </td>
                        <td style="color:#555555;">
                            对图片的一些简单描述，可以方便以后回忆。
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <input class="commit_desc" type="button" name="commit_form" value="仅提交图组">
                        </td>
                        <td>
                        </td>
                        <td>
                            <input class="commit_form" type="button" name="commit_form" value="提交并上传图片">
                        </td>
                    </tr>



                </table>



            </form>




        </div>



    </div>
</div>


</body>
</html>
