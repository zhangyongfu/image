package org.image.servlet;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.image.model.UploadPubImages;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

@WebServlet("/QueryAllImagesServlet")
public class QueryAllImagesServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter printWriter = response.getWriter();

//        response.setCharacterEncoding("gbk");
//        response.setContentType("text/html;charset=gbk");

        String classify = request.getParameter("classify");
/*
        int index = 0;
        if(null !=paths && paths.size() != 0) {
            for (int i = index; i < index + 20; i++) {
                String imgPath = paths.get(i);
                long imgId = uploadPubImages.getPubImgId(imgPath);
                String[] strings = paths.get(i).split("/");
                String p = strings[strings.length - 1];
                request.setAttribute("ph", p);
            }
        }*/

        if("fromLastMonth".equals(classify)){

            UploadPubImages uploadPubImages = new UploadPubImages();
            List<String> paths = uploadPubImages.getPubImgFilePath();

//            List<String> names = getImgNameByPath(paths);

            long imgLength = paths.size();
            request.setAttribute("len",imgLength);

            Collections.reverse(paths);

            HashMap<Long,String> idsAndNames = getImgIdsAndNames(paths);

/*
            int index = 0;
            if(null !=paths && paths.size() != 0) {
                for (int i = index; i < index + 20; i++) {
                    String imgPath = paths.get(i);
                    long imgId = uploadPubImages.getPubImgId(imgPath);
                    strings = paths.get(i).split("/");
                    String p = strings[strings.length - 1];
                    request.setAttribute("ph", p);
                }
            }*/






/*
            JSONArray jsonArray = JSONArray.fromObject(names);
            String jsonString = jsonArray.toString();


            request.setAttribute("allpaths",jsonString);
            request.setAttribute("allpaths",jsonString);
*/

            JSONObject jsonObject = JSONObject.fromObject(idsAndNames);
            String jsonString = jsonObject.toString();
            request.setAttribute("idsAndPaths",jsonString);

            request.getRequestDispatcher("jsp/showAllImages.jsp").forward(request,response);
//            response.sendRedirect("jsp/showAllImages.jsp");

        }
        else             printWriter.println("error");


    }

    private List<String> getImgNameByPath(List<String> allpaths){
        List<String> allNames = new ArrayList<String>();



        int index = 0;
            if(null !=allpaths && allpaths.size() != 0) {
                for (int i = index; i < allpaths.size(); i++) {
                    String imgPath = allpaths.get(i);
                    String[] strings = allpaths.get(i).split("/");
                    String p = strings[strings.length - 1];
                    allNames.add(p);
                }
            }

        return allNames;


    }

    private HashMap<Long,String> getImgIdsAndNames(List<String> allpaths){

        HashMap<Long,String> result = new HashMap<Long, String>();

        UploadPubImages uploadPubImages = new UploadPubImages();
        for(String path:allpaths){

//            String imgPath = path;

            String[] strings = path.split("/");
            String p = strings[strings.length - 1];

            long imgId = uploadPubImages.getPubImgId(path);

            result.put(imgId,p);

        }

        return result;

    }
}
