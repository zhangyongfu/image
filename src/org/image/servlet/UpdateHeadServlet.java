package org.image.servlet;

import org.image.DAO.DatabaseConnection;
import org.image.model.UserInformation;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "UpdateHeadServlet",urlPatterns = "/updatehead")
@MultipartConfig
public class UpdateHeadServlet extends HttpServlet {
    DatabaseConnection databaseConnection = new DatabaseConnection();
    Connection connection=null;
    PreparedStatement preparedStatement=null;


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

        try{
            connection = databaseConnection.getDbConnection();
            if (connection!=null){
                String sql="update selfinf set head_img=? where belonguserid=?";
                preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1,path);
                preparedStatement.setString(2,belongid);
                preparedStatement.executeUpdate();

                request.getRequestDispatcher("jsp/userpage.jsp").forward(request,response);
//                response.sendRedirect("jsp/userpage.jsp");
            }
        } catch (Exception e){
            e.printStackTrace();
        }finally {
            try{
                closeConnection();
            }
            catch (Exception e){

            }
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    private void closeConnection(){
        if(connection != null){
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            connection = null;
        }
    }

}
