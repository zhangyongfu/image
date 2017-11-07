package org.image.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class UploadImageDaoImpl implements ImageDao {


    private DatabaseConnection databaseConnection = new DatabaseConnection();
    private Connection connection = null;


    @Override
    public List<String> getImageFilePath(String username) {

        List<String> paths = new ArrayList<String>();

        try{
            connection = databaseConnection.getDbConnection();
            if(connection != null)
            {
                String sql = "select img_id,img_path,img_belong_user from images where img_belong_user=?;";

                PreparedStatement preparedStatement = connection.prepareStatement(sql);

                preparedStatement.setString(1,username);

                ResultSet resultSet = preparedStatement.executeQuery();

                while (resultSet.next()){
                    paths.add(resultSet.getString("img_path"));
                }

//                for(String path:paths){

//                    System.out.println("++++++" + path);
//                    String[] strings = path.split("/");
//                    System.out.println("======" + strings[strings.length-1]);
//                }


            }
        }catch (Exception e){
            e.printStackTrace();
        }



        return paths;
    }

    @Override
    public String addImageFilePath(String imagePath,String username) {


        try{
            connection = databaseConnection.getDbConnection();
            if(connection != null)
            {
                String sql = "insert into images values(null,?,?);";
                java.sql.PreparedStatement preparedStatement = connection.prepareStatement(sql);

                preparedStatement.setString(1,imagePath);
                preparedStatement.setString(2,username);

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
