package org.image.model;

import org.image.DAO.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UploadPubImages {
    private DatabaseConnection databaseConnection = new DatabaseConnection();
    private Connection connection = null;




    public String addImageFilePath(String imagePath,String userName,String imgName,float fileSize) {


        try{
            connection = databaseConnection.getDbConnection();
            if(connection != null)
            {
                String sql = "insert into pubimages(pubimg_id,pubimg_path,img_upload_time,img_upload_user,img_name,img_size_MB) values(null,?,now(),?,?,?);";

//                connection.prepareStatement("create table if not exists pubimages(pubimg_id int(20) not null primary key auto_increment,pubimg_path varchar(255) not null,img_upload_time varchar(255) not null,img_upload_user varchar(255) not null,img_name varchar(255),img_size_MB float not null);");


                java.sql.PreparedStatement preparedStatement = connection.prepareStatement(sql);

                preparedStatement.setString(1,imagePath);

                preparedStatement.setString(2,userName);

                preparedStatement.setString(3,imgName);

                preparedStatement.setFloat(4,fileSize);

                preparedStatement.executeUpdate();
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        finally {
            try{
                closeConnection();
            }
            catch (Exception e){

            }
        }
        return null;
    }

    public List<String> getPubImgFilePath() {

        List<String> paths = new ArrayList<String>();

        try{
            connection = databaseConnection.getDbConnection();
            if(connection != null)
            {
                String sql = "select pubimg_id,pubimg_path from pubimages;";

//                connection.prepareStatement("create table if not exists pubimages(pubimg_id int(20) not null primary key auto_increment,pubimg_path varchar(255) not null,img_upload_time varchar(255) not null,img_upload_user varchar(255) not null,img_name varchar(255),img_size_MB float not null);");


                PreparedStatement preparedStatement = connection.prepareStatement(sql);

                ResultSet resultSet = preparedStatement.executeQuery();

                while (resultSet.next()){
                    paths.add(resultSet.getString("pubimg_path"));
                }

            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return paths;
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
