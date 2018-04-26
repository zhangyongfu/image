package org.image.DAO;

import org.image.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ImageHeart {

    DatabaseConnection databaseConnection = new DatabaseConnection();

    Connection connection = null;


    public int getImageHeartNumberById(long pubImgId){
        int imgHeartNum = -1;

        try{
            connection = databaseConnection.getDbConnection();
            if(connection != null)
            {

                String sql = "select img_hearts from pubimages where pubimg_id=?;";

//                connection.prepareStatement("create table if not exists pubimages(pubimg_id int(20) not null primary key auto_increment,pubimg_path varchar(255) not null,img_upload_time varchar(255) not null,img_upload_user varchar(255) not null,img_name varchar(255),img_size_MB float not null);");

                PreparedStatement preparedStatement = connection.prepareStatement(sql);

                preparedStatement.setLong(1,pubImgId);

                ResultSet resultSet = preparedStatement.executeQuery();

                while (resultSet.next()){
                    imgHeartNum = resultSet.getInt("img_hearts");

                }

            }
        }catch (Exception e){
            e.printStackTrace();
        }
        finally {
            try{
                closeConnection();
            }
            catch (Exception e){

                e.printStackTrace();
            }
        }
        return imgHeartNum;
    }


    public boolean isUploadedImageHeartNumberById(long pubImgId,int newHeartNum){

        try{
            connection = databaseConnection.getDbConnection();
            if(connection != null)
            {

                String sql = "upload pubimages set img_hearts=? where pubimg_id=?;";

//                connection.prepareStatement("create table if not exists pubimages(pubimg_id int(20) not null primary key auto_increment,pubimg_path varchar(255) not null,img_upload_time varchar(255) not null,img_upload_user varchar(255) not null,img_name varchar(255),img_size_MB float not null);");

                PreparedStatement preparedStatement = connection.prepareStatement(sql);

                preparedStatement.setLong(1,newHeartNum);
                preparedStatement.setLong(2,pubImgId);

                preparedStatement.executeUpdate();

                return true;

            }
        }catch (Exception e){
            e.printStackTrace();
        }
        finally {
            try{
                closeConnection();
            }
            catch (Exception e){

                e.printStackTrace();
            }
        }
        return false;
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
