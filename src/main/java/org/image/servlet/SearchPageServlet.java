package org.image.servlet;

import org.image.DAO.ShowSearchResult;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/SearchImgPage")
public class SearchPageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setCharacterEncoding("UTF-8");
        String IndexPageSearchText = request.getParameter("searchText");
        String SearchPageSearchText = request.getParameter("searchPageImg");

        HttpSession searchSession = request.getSession();
//        searchSession.setAttribute("searchText",IndexPageSearchText);

        if (IndexPageSearchText != null && !"".equals(IndexPageSearchText)) {
            System.out.println("search success");

            ShowSearchResult searchResult = new ShowSearchResult();
            List<String> paths = searchResult.getSearchImages(IndexPageSearchText);
            searchSession.setAttribute("searchText", IndexPageSearchText);
            searchSession.setAttribute("result", paths);


            for (String path : paths) {
                System.out.print(path);
//                String[] strings = path.split("/");
//                String p = strings[strings.length - 1];
//                request.setAttribute("ph", p);
            }

            System.out.println("test:" + IndexPageSearchText);
            response.sendRedirect("/jsp/searchResult.jsp");

        } else {
            System.out.println("search fail");
            response.sendRedirect("../index.jsp");

        }

    }

    public void SearchImg(){

    }
}
