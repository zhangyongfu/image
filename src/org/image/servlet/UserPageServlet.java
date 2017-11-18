package org.image.servlet;

import org.image.DAO.DatabaseConnection;
import org.image.model.User;
import org.image.model.UserInformation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "UserPageServlet",urlPatterns = {"/userinformation"})
public class UserPageServlet extends HttpServlet {
    DatabaseConnection databaseConnection = new DatabaseConnection();
    Connection connection=null;
    PreparedStatement preparedStatement=null;
    User user=null;
    UserInformation userInformation=new UserInformation();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession httpSession=request.getSession();

        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String year=request.getParameter("year");
        String month=request.getParameter("month");
        String day=request.getParameter("day");
        String birthday=year+"-"+month+"-"+day;
        String sex=request.getParameter("sex");
        String signature=request.getParameter("signature");
        String selfIntro=request.getParameter("selfIntro");

        user.setName(name);
        httpSession.setAttribute("userName",user);

        try{
            connection = databaseConnection.getDbConnection();
            if(connection!=null){
                String sql="update selfinf s,users u set u.username=?,s.email=?,s.birthday=?,s.sex=?,s.signature=?,s.selfintro=? where s.belonguserid=? and u.id=s.belonguserid";
                preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1,name);
                preparedStatement.setString(2,email);
                preparedStatement.setString(3,birthday);
                preparedStatement.setString(4,sex);
                preparedStatement.setString(5,signature);
                preparedStatement.setString(6,selfIntro);
                preparedStatement.setInt(7,userInformation.getBelonguserid());

                preparedStatement.executeUpdate();

                userInformation.setName(name);
                userInformation.setEmail(email);
                userInformation.setBirthday(birthday);
                userInformation.setSex(sex);
                userInformation.setSignature(signature);
                userInformation.setSelfintro(selfIntro);
            }
            request.setAttribute("userInformation",userInformation);
            request.getRequestDispatcher("jsp/userpage.jsp").forward(request,response);
        }catch (Exception e){
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


        HttpSession httpSession=request.getSession();
        user = (User)httpSession.getAttribute("userName");
        try{
            connection = databaseConnection.getDbConnection();
            if(connection!=null){
                String sql="select u.id,u.username,s.head_img,s.email,s.birthday,s.sex,s.signature,s.selfintro from selfinf s,users u where u.username=? and u.id=s.belonguserid";
                preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1,user.getName());
                ResultSet resultSet = preparedStatement.executeQuery();
                while (resultSet.next()){
                    userInformation.setBelonguserid(resultSet.getInt("id"));
                    userInformation.setName(resultSet.getString("username"));
                    userInformation.setHead_img(resultSet.getString("head_img"));
                    userInformation.setEmail(resultSet.getString("email"));
                    userInformation.setBirthday(resultSet.getString("birthday"));
                    userInformation.setSex(resultSet.getString("sex"));
                    userInformation.setSignature(resultSet.getString("signature"));
                    userInformation.setSelfintro(resultSet.getString("selfintro"));
                }
                httpSession.setAttribute("userInformation",userInformation);
                request.getRequestDispatcher("jsp/userpage.jsp").forward(request,response);
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            try{
                closeConnection();
            }
            catch (Exception e){

            }
        }
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
