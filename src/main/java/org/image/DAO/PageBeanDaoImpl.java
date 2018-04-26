package org.image.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PageBeanDaoImpl implements AllImgPageBeanDao{



    private DatabaseConnection databaseConnection = new DatabaseConnection();
    private Connection connection = null;




    @Override
    public int getCurrentPage() {






        return 0;
    }

    @Override
    public long getPageCount() {

        long pageCount = -1;

        try{
            connection = databaseConnection.getDbConnection();
            if(connection != null)
            {

                String sql = "select count(pubimg_id) from pubimages;";

//                connection.prepareStatement("create table if not exists pubimages(pubimg_id int(20) not null primary key auto_increment,pubimg_path varchar(255) not null,img_upload_time varchar(255) not null,img_upload_user varchar(255) not null,img_name varchar(255),img_size_MB float not null);");

                PreparedStatement preparedStatement = connection.prepareStatement(sql);

                ResultSet resultSet = preparedStatement.executeQuery();

                while (resultSet.next()){
                    pageCount = resultSet.getLong("count(pubimg_id)");

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







        return pageCount;
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
