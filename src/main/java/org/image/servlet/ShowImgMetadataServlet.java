package org.image.servlet;

import com.drew.imaging.ImageMetadataReader;
import com.drew.imaging.ImageProcessingException;
import com.drew.metadata.Directory;
import com.drew.metadata.Metadata;
import com.drew.metadata.Tag;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.image.model.UploadPubImages;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

@WebServlet("/ShowImageDetail")
public class ShowImgMetadataServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String change = request.getParameter("change");
        String imgId = request.getParameter("imgId");
        String imgbelong = request.getParameter("imgbelong");
        String from = request.getParameter("from");
        HttpSession httpSession = request.getSession();

        String imagePath = "/root/webdata/imagedata/";
//        String imagePath = "/home/zyj/IdeaProjects/image/i/imagedata/";

        Long imgNum = Long.parseLong(imgId);




        if("next".equals(change)){

            Map<String,String> metaData = new HashMap<String, String>();

            UploadPubImages uploadPubImages = new UploadPubImages();


            imgNum = imgNum - 1;

            String imgName = uploadPubImages.getPubImgFileName(imgNum);
            String imgPath = imagePath + "pub_img/" + imgName;



            metaData = getMetadataByPath(imgPath);


            JSONObject jsonObject = JSONObject.fromObject(metaData);

            String jsonStr = jsonObject.toString();

//            System.out.println("str---------" + jsonStr + "++++++");

            httpSession.setAttribute("metadata",jsonStr);
//            request.setAttribute("imgMeta",jsonStr);

            request.setAttribute("imgId",imgNum);
            request.setAttribute("imgName",imgName);
            request.setAttribute("imgPath",imgPath);

//            System.out.println("imgId : " + imgNum);

            request.getRequestDispatcher("jsp/showImage.jsp").forward(request,response);



        }
        else if("pre".equals(change)){

            Map<String,String> metaData = new HashMap<String, String>();

            UploadPubImages uploadPubImages = new UploadPubImages();

            imgNum = imgNum + 1;

            String imgName = uploadPubImages.getPubImgFileName(imgNum);

            String imgPath = imagePath + "pub_img/" + imgName;

            metaData = getMetadataByPath(imgPath);

            JSONObject jsonObject = JSONObject.fromObject(metaData);

            String jsonStr = jsonObject.toString();

            httpSession.setAttribute("metadata",jsonStr);


            request.setAttribute("metaMap",metaData);

//            request.setAttribute("metadata",metaData);

            request.setAttribute("imgId",imgNum);
            request.setAttribute("imgName",imgName);

            request.getRequestDispatcher("jsp/showImage.jsp").forward(request,response);

        }


        else {

            UploadPubImages uploadPubImages = new UploadPubImages();
            String imgName = uploadPubImages.getPubImgFileName(imgNum);

            String imgPath = imagePath + "pub_img/" + imgName;

            Map<String,String> metaData = getMetadataByPath(imgPath);

            JSONObject jsonObject = JSONObject.fromObject(metaData);

            String jsonStr = jsonObject.toString();

            httpSession.setAttribute("metadata",jsonStr);


            request.setAttribute("imgId",imgNum);
            request.setAttribute("imgName",imgName);

            request.getRequestDispatcher("jsp/showImage.jsp").forward(request,response);

        }
//        response.sendRedirect("jsp/showImage.jsp");




//        String jsonString = request.getParameter("imgsData");



/*        JSONObject jsonObject = JSONObject.fromObject(jsonString);

        if (jsonObject == null || jsonObject.isNullObject())
        {
            jsonObject = new JSONObject();
        }

        Iterator<String> sIterator = jsonObject.keys();
        while(sIterator.hasNext()){
            // 获得key
            String key = sIterator.next();
            // 根据key获得value, value也可以是JSONObject,JSONArray,使用对应的参数接收即可
            String value = jsonObject.getString(key);
            System.out.println("key: "+key+"<>value:"+value);
        }*/


//        request.setAttribute("imfsadfasdfgs",jsonString);
//        System.out.println(jsonString+ "-------");
//        request.getRequestDispatcher("jsp/showImage.jsp").forward(request,response);
//        response.sendRedirect("jsp/showImage.jsp");
    }

    private Map<String,String> getMetadataByPath(String imgPath){

        Map<String,String> metaData = new HashMap<String, String>();

        try {
            File imgFile = new File(imgPath);
            try {
                Metadata metadata = ImageMetadataReader.readMetadata(imgFile);
                for (Directory directory : metadata.getDirectories()) {
                    for (Tag tag : directory.getTags()) {

                        metaData.put(tag.getTagName(),tag.getDescription());

//                            System.out.println(tag.getTagName()+ ":" + tag.getDescription());

                        //                imgMetadata.put(tag.getTagName(),tag.getDescription());
                        //                        out.print(tag);

                    }
                }
            } catch (ImageProcessingException e) {
                e.printStackTrace();
            }
        }
        catch (IOException e) {
            e.printStackTrace();
        }

        return metaData;
    }


}
