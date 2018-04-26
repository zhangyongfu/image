package org.image.servlet;

import net.coobird.thumbnailator.Thumbnails;
import net.sf.json.JSONObject;
import org.image.model.UploadPubImages;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

@WebServlet("/PubImgListServlet")
public class PubImgListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        request.setCharacterEncoding("utf-8");

        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");

        PrintWriter printWriter = response.getWriter();

//        response.setCharacterEncoding("gbk");
//        response.setContentType("text/html;charset=gbk");


        UploadPubImages uploadPubImages = new UploadPubImages();
        List<String> imgNames = uploadPubImages.getPubImgFileNames();

//            List<String> names = getImgNameByPath(paths);

        long imgLength = imgNames.size();
        request.setAttribute("len",imgLength);

        Collections.reverse(imgNames);

        HashMap<String,String> idsAndNames = getImgIdsAndNames(imgNames);

        JSONObject jsonObject = JSONObject.fromObject(idsAndNames);

        String jsonString = jsonObject.toString();


/*            HttpSession httpSession=request.getSession();
            if(jsonString != null){
                httpSession.setAttribute("result",jsonString);
            }*/


        request.setAttribute("idsAndPaths",jsonString);
//        request.setAttribute("currentPage",currentPage);

//            System.out.println("hehehehe");

        request.getRequestDispatcher("jsp/pubgallery.jsp").forward(request,response);

    }

    private HashMap<String,String> getImgIdsAndNames(List<String> allNames){

        HashMap<String,String> result = new HashMap<String, String>();

        UploadPubImages uploadPubImages = new UploadPubImages();
        for(String name:allNames){
            long imgId = uploadPubImages.getPubImgId("compressed_25_" + name);
            result.put(String.valueOf(imgId),name);
        }

        return result;

    }
}
