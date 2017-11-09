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




    public String addImageFilePath(String imagePath) {


        try{
            connection = databaseConnection.getDbConnection();
            if(connection != null)
            {
                String sql = "insert into pubimages(pubimg_id,pubimg_path) values(null,?);";
                java.sql.PreparedStatement preparedStatement = connection.prepareStatement(sql);

                preparedStatement.setString(1,imagePath);

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
