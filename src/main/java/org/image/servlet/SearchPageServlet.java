package org.image.servlet;

import com.google.gson.JsonArray;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.image.DAO.ShowSearchResult;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang3.StringEscapeUtils;
import org.image.search.ImageSearch;
import org.image.search.PixImageSearch;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;


@WebServlet("/SearchImgPage")
public class SearchPageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=gb2312");
        String IndexPageSearchText = request.getParameter("searchText");
        String pageNow = request.getParameter("pg");

        int pageNowNumber = Integer.parseInt(pageNow);

        String SearchPageSearchText = request.getParameter("searchPageImg");


        HttpSession searchSession = request.getSession();
//        searchSession.setAttribute("searchText",IndexPageSearchText);

        if (IndexPageSearchText != null && !"".equals(IndexPageSearchText)) {
            System.out.println("search success" + IndexPageSearchText   );

            ShowSearchResult searchResult = new ShowSearchResult();
            List<String> paths = searchResult.getSearchImages(IndexPageSearchText);
            searchSession.setAttribute("searchText", IndexPageSearchText);
            searchSession.setAttribute("result", paths);

            System.out.println("---------start------------");


            List<String> pixImages = PixImageSearch.searchImage(IndexPageSearchText,pageNowNumber);

            for(String str:pixImages){
                System.out.print(str);
            }

            System.out.println("---------end---------");


            String downloadPath = "./search_images";
            List<String> list = ImageSearch.nameList(IndexPageSearchText);

//            List<String> picturesUrl = ImageSearch.getPicturesUrl(list,1,downloadPath);

/*
            JSONArray jsonArray = JSONArray.fromObject(picturesUrl);

            String jsonString = jsonArray.toString();
*/


//            ImageSearch.getPictures(list,5,downloadPath); //1代表下载一页，一页一般有30张图片



//            System.out.println("test:" + IndexPageSearchText);
//            response.sendRedirect("/jsp/searchResult.jsp");

//            request.setAttribute("picturesUrl",jsonString);
            searchSession.setAttribute("picturesUrl",pixImages);
            searchSession.setAttribute("pageNowNumber",pageNowNumber);

//            ImageSearch.showUrl(picturesUrl);

            request.getRequestDispatcher("/jsp/searchResult.jsp").forward(request,response);

        } else {
            System.out.println("search fail");
            response.sendRedirect("/");

        }



    }


    public void SearchImg(){

    }
}
