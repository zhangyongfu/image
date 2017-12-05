package org.image.servlet;


import com.drew.imaging.ImageMetadataReader;
import com.drew.imaging.ImageProcessingException;
import com.drew.metadata.Directory;
import com.drew.metadata.Metadata;
import com.drew.metadata.Tag;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.HashMap;
import java.util.Map;

public class TestServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        Map<String,String> alldata = new HashMap<String, String>();
//
//        File jpegFile = new File("/home/zyj/IdeaProjects/i/img/" + "zhang" + File.separator + "57.jpg");
//        try {
//            Metadata metadata = ImageMetadataReader.readMetadata(jpegFile);
//            for (Directory directory : metadata.getDirectories()) {
//                for (Tag tag : directory.getTags()) {
//                    alldata.put(tag.getTagName(),tag.getDescription());
//                }
//            }
//        } catch (ImageProcessingException e) {
//            e.printStackTrace();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        for(Map.Entry<String,String> entry:alldata.entrySet()){
//            System.out.println(entry.getKey() + "+++" + entry.getValue());
//        }



        System.out.print("ldsjafalkjsd");
        response.setContentType("image/jpeg");
        File file = new File("/home/zyj/IdeaProjects/i/img/" + "zhang" + File.separator + "57.jpg");
        if(file.exists()){
            InputStream in = new FileInputStream("/home/zyj/IdeaProjects/i/img/" + "zhang" + File.separator + "57.jpg");
            OutputStream os = response.getOutputStream();

            byte[] b = new byte[1024];
            while (in.read(b) != -1){
                os.write(b);
            }
            in.close();
            os.flush();
            os.close();
        }


    }


    @RequestMapping("getImg")
    protected void getImg(HttpServletRequest request, HttpServletResponse response) throws Exception{

        System.out.print("ldsjafalkjsd");
        response.setContentType("image/jpeg");
        File file = new File("/home/zyj/IdeaProjects/i/img/" + "zhang" + File.separator + "57.jpg");
        if(file.exists()){
            InputStream in = new FileInputStream("/home/zyj/IdeaProjects/i/img/" + "zhang" + File.separator + "57.jpg");
            OutputStream os = response.getOutputStream();

            byte[] b = new byte[1024];
            while (in.read(b) != -1){
                os.write(b);
            }
            in.close();
            os.flush();
            os.close();
        }

    }
}
