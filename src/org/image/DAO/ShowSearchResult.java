package org.image.DAO;

import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ShowSearchResult {

    private DatabaseConnection databaseConnection = new DatabaseConnection();
    private Connection connection = null;

    public List<String> getSearchImages(String searchText) {

        List<String> paths = new ArrayList<String>();

        try{
            connection = databaseConnection.getDbConnection();
            if(connection != null)
            {
                String sql = "select pubimg_id,pubimg_path from pubimages where pubimg_path like ?;";

                PreparedStatement preparedStatement = connection.prepareStatement(sql);

                preparedStatement.setString(1,"%" + searchText + "%");


                ResultSet resultSet = preparedStatement.executeQuery();

                while (resultSet.next()){
                    paths.add(resultSet.getString("pubimg_path"));
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

            }
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
