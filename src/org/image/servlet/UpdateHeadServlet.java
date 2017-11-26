package org.image.servlet;

import org.image.DAO.UserPageDao;
import org.image.model.UserInformation;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;

@WebServlet(name = "UpdateHeadServlet",urlPatterns = "/updatehead")
@MultipartConfig
public class UpdateHeadServlet extends HttpServlet {
    UserPageDao userPageDao=new UserPageDao();

    private String getFilename(Part part) {
        String contentDispositionHeader = part.getHeader("content-disposition");
        String[] elements = contentDispositionHeader.split(";");
        for(String element:elements){
            if (element.trim().startsWith("filename")) {
                return element.substring(element.indexOf('=')+1).trim().replace("\"","");
            }
        }
        return null;
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession httpSession=request.getSession();
        UserInformation userInformation=(UserInformation) httpSession.getAttribute("userInformation");

        Part part=request.getPart("updatename");
        String name=getFilename(part);
        String uploadPath = getServletContext().getRealPath("/")+"UserHead";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
        String path=uploadPath+File.separator+name;
        userInformation.setHead_img(path);
        httpSession.setAttribute("userInformation",userInformation);
        String belongid=request.getParameter("belongid");
        part.write(path);

        userPageDao.updateHead(belongid,path);

        request.getRequestDispatcher("jsp/userpage.jsp").forward(request,response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
