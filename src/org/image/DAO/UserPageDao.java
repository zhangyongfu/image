package org.image.DAO;

import org.image.model.User;
import org.image.model.UserInformation;

import javax.servlet.http.HttpServletRequest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserPageDao {
    DatabaseConnection databaseConnection = new DatabaseConnection();
    Connection connection=null;
    PreparedStatement preparedStatement=null;

    public UserInformation getUserInformation(User user,UserInformation userInformation){
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
        return userInformation;
    }

    public void setUserInformation(HttpServletRequest request,UserInformation userInformation){
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String year=request.getParameter("year");
        String month=request.getParameter("month");
        String day=request.getParameter("day");
        String birthday=year+"-"+month+"-"+day;
        String sex=request.getParameter("sex");
        String signature=request.getParameter("signature");
        String selfIntro=request.getParameter("selfIntro");
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

    public void updateHead(String belongid,String path){
        try{
            connection = databaseConnection.getDbConnection();
            if (connection!=null){
                String sql="update selfinf set head_img=? where belonguserid=?";
                preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1,path);
                preparedStatement.setString(2,belongid);
                preparedStatement.executeUpdate();


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
