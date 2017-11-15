package org.image.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class UploadPriImageDaoImpl implements ImageDao {


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


/*

    public List<String> getImagesUploadTime() {

        List<String> paths = new ArrayList<String>();

        try{
            connection = databaseConnection.getDbConnection();
            if(connection != null)
            {
                String sql = "select img_id,img_path,priimg_upload_time from images order by priimg_upload_time desc;";

                PreparedStatement preparedStatement = connection.prepareStatement(sql);

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

*/

/*

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
*/

    @Override
    public String addImageFilePath(String imagePath,String username,String imgName,float imgSize) {


        try{
            connection = databaseConnection.getDbConnection();
            if(connection != null)
            {
                String sql = "insert into images values(null,?,?,now(),?,?);";

//                connection.prepareStatement("create table if not exists images(img_id int(20) not null primary key auto_increment,img_path varchar(255) not null,img_belong_user varchar(255) not null,priimg_upload_time varchar(255) not null,priimg_name varchar(255),priimg_size_MB float not null);");


                java.sql.PreparedStatement preparedStatement = connection.prepareStatement(sql);

                preparedStatement.setString(1,imagePath);
                preparedStatement.setString(2,username);
                preparedStatement.setString(3,imgName);
                preparedStatement.setFloat(4,imgSize);

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
