package org.image.servlet;


import net.sf.json.JSONObject;
import org.image.DAO.UploadPriImageDaoImpl;
import org.image.model.UploadPubImages;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

@WebServlet("/QueryAllImagesServlet")
public class QueryAllImagesServlet extends HttpServlet {
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

        String classify = request.getParameter("classify");
        String currentPage = request.getParameter("pg");
        String belong = request.getParameter("belong");
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

            if("pub".equals(belong)){

                UploadPubImages uploadPubImages = new UploadPubImages();
                List<String> names = uploadPubImages.getPubImgFileNames();

//            List<String> names = getImgNameByPath(paths);

                long imgLength = names.size();
                request.setAttribute("len",imgLength);

                Collections.reverse(names);

                HashMap<String,String> idsAndNames = getImgIdsAndNames(names);

                JSONObject jsonObject = JSONObject.fromObject(idsAndNames);

                String jsonString = jsonObject.toString();


/*            HttpSession httpSession=request.getSession();
            if(jsonString != null){
                httpSession.setAttribute("result",jsonString);
            }*/


                request.setAttribute("idsAndPaths",jsonString);
                request.setAttribute("currentPage",currentPage);

//            System.out.println("hehehehe");

                request.getRequestDispatcher("jsp/showAllImages.jsp").forward(request,response);
//            response.sendRedirect("jsp/showAllImages.jsp.bak");
            } else if ("pri".equals(belong)) {

                UploadPubImages uploadPubImages = new UploadPubImages();
                List<String> names = uploadPubImages.getPubImgFileNames();

//            List<String> names = getImgNameByPath(paths);

                long imgLength = names.size();
                request.setAttribute("len",imgLength);

                Collections.reverse(names);

                HashMap<String,String> idsAndNames = getImgIdsAndNames(names);

                JSONObject jsonObject = JSONObject.fromObject(idsAndNames);

                String jsonString = jsonObject.toString();


/*            HttpSession httpSession=request.getSession();
            if(jsonString != null){
                httpSession.setAttribute("result",jsonString);
            }*/


                request.setAttribute("idsAndPaths",jsonString);
                request.setAttribute("currentPage",currentPage);

//            System.out.println("hehehehe");

                request.getRequestDispatcher("jsp/showpriimages.jsp").forward(request,response);
//            response.sendRedirect("jsp/showAllImages.jsp.bak");
            }


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

    private HashMap<String,String> getImgIdsAndNames(List<String> allNames){

        HashMap<String,String> result = new HashMap<String, String>();

        UploadPubImages uploadPubImages = new UploadPubImages();
        for(String name:allNames){

//            String imgPath = path;


            long imgId = uploadPubImages.getPubImgId("compressed_25_" + name);

            result.put(String.valueOf(imgId),name);
//            System.out.println("path:" + path);


        }

        return result;

    }
}
