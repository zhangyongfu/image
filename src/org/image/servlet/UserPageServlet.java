package org.image.servlet;

import org.image.DAO.UserPageDao;
import org.image.model.User;
import org.image.model.UserInformation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet(name = "UserPageServlet",urlPatterns = {"/userinformation"})
public class UserPageServlet extends HttpServlet {
    User user=null;
    UserInformation userInformation=new UserInformation();
    UserPageDao userPageDao=new UserPageDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession httpSession=request.getSession();

        String name=request.getParameter("name");
        user.setName(name);
        httpSession.setAttribute("userName",user);

        userPageDao.setUserInformation(request,userInformation);

        request.setAttribute("userInformation",userInformation);
        request.getRequestDispatcher("jsp/userpage.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        HttpSession httpSession=request.getSession();
        user = (User)httpSession.getAttribute("userName");

        userInformation=userPageDao.getUserInformation(user,userInformation);

        httpSession.setAttribute("userInformation",userInformation);
        request.getRequestDispatcher("jsp/userpage.jsp").forward(request,response);
    }

}
