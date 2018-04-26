package org.image.servlet;

import org.image.DAO.ImageHeart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/GiveImgHeartServlet")
public class GiveImgHeartServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String heartNum = request.getParameter("heartNum").replace("\"","");

        String[] heartAndId = heartNum.split(";");

        System.out.println("heart--------" + heartAndId[0]);
        System.out.println("id--------" + heartAndId[1]);

        ImageHeart imageHeart = new ImageHeart();



    }

}
