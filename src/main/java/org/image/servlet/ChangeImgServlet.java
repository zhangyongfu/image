package org.image.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ChangeImg")
public class ChangeImgServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        String change = request.getParameter("change");

        System.out.print(request.getParameter("imgId"));

        if("next".equals(change)){

            request.setAttribute("imgName","007.jpg");

        }
//        response.sendRedirect("jsp/showImage.jsp");

        request.getRequestDispatcher("jsp/showImage.jsp").forward(request,response);


    }
}
