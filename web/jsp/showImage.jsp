<%@ page import="java.util.Map" %>
<%@ page import="org.image.model.ImageMetadata" %>
<%@ page import="java.io.File" %>
<%@ page import="org.image.test.Test" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.URLConnection" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.util.List" %>
<%@ page import="org.image.model.UploadPubImages" %>
<%@ page import="org.image.model.Testt" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%--
  Created by IntelliJ IDEA.
  User: zyj
  Date: 17-11-27
  Time: 下午3:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%

    String imgId_str = request.getParameter("imgId");
    long imgId = Long.parseLong(imgId_str);

//    request.setAttribute("imgId",imgId);

//    Testt tt = new Testt();
//    tt.getSelectImgId(request);
//    out.print("img_id: " + imgId);

    UploadPubImages uploadPubImages = new UploadPubImages();

    if(imgId != -1){
//        try{
//            Map<String,String> data = new ImageMetadata().getAllMetadata(imgId);
//
//            for(Map.Entry<String,String> entry:data.entrySet()){
//                out.println(entry.getKey() + ":" + entry.getValue());
//
//            }
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//
//            Testt t = new Testt();
//            try {
//                Map<String, String> data = t.getNeedData(208);
//                for (Map.Entry<String, String> entry : data.entrySet()) {
//                    out.println(entry.getKey() + ":" + entry.getValue());
//
//                }
//            }catch (Exception e){
//                e.printStackTrace();
//            }


        String imgPath = uploadPubImages.getPubImgFilePath(imgId);


        String[] strings = imgPath.split("/");
        String p = strings[strings.length - 1];
        request.setAttribute("ph", p);
    }

%>
<img src="http://localhost:8080/i/pub_img/${ph}" alt="Ballade" width="70%" height="80%">

</body>
</html>
