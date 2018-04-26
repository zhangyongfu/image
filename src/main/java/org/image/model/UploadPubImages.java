package org.image.model;

import net.coobird.thumbnailator.Thumbnails;
import org.apache.catalina.filters.RequestFilter;
import org.image.DAO.DatabaseConnection;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UploadPubImages {
    private DatabaseConnection databaseConnection = new DatabaseConnection();
    private Connection connection = null;




    public String addImageFilePath(String imagePath,String imgName,float fileSize,String compressImgName) {


        try{
            connection = databaseConnection.getDbConnection();
            if(connection != null)
            {
                String sql = "insert into pubimages(pubimg_id,pubimg_path,img_upload_time,img_upload_user,img_name,img_size_MB,compress_img_name) values(null,?,now(),null,?,?,?);";

//                connection.prepareStatement("create table if not exists pubimages(pubimg_id int(20) not null primary key auto_increment,pubimg_path varchar(255) not null,img_upload_time varchar(255) not null,img_upload_user varchar(255) not null,img_name varchar(255),img_size_MB float not null);");


                java.sql.PreparedStatement preparedStatement = connection.prepareStatement(sql);

                preparedStatement.setString(1,imagePath);

//                preparedStatement.setString(2,userName);

                preparedStatement.setString(2,imgName);

                preparedStatement.setFloat(3,fileSize);
                preparedStatement.setString(4,compressImgName);

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

                e.printStackTrace();
            }
        }
        return null;
    }

    public List<String> getPubImgFileNames() {

        List<String> paths = new ArrayList<String>();

        try{
            connection = databaseConnection.getDbConnection();
            if(connection != null)
            {
                String sql = "select pubimg_id,img_name from pubimages;";

//                connection.prepareStatement("create table if not exists pubimages(pubimg_id int(20) not null primary key auto_increment,pubimg_path varchar(255) not null,img_upload_time varchar(255) not null,img_upload_user varchar(255) not null,img_name varchar(255),img_size_MB float not null);");


                PreparedStatement preparedStatement = connection.prepareStatement(sql);

                ResultSet resultSet = preparedStatement.executeQuery();

                while (resultSet.next()){
                    paths.add(resultSet.getString("img_name"));
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

        return paths;
    }

    public List<String> getNeedPagePubImgFileNames(int currentPage) {

        List<String> names = new ArrayList<String>();

        List<String> allImagesNames = getPubImgFileNames();


        if((allImagesNames.size()-currentPage*100)<100){
            names.addAll(allImagesNames);
            return names;
        }else {
            for(int num =currentPage*100;num<currentPage+100;num++){
                String imgPath = allImagesNames.get(num);
//                System.out.println("i:" + imgPath);

                names.add(imgPath);
            }
        }



/*
        try{
            connection = databaseConnection.getDbConnection();
            if(connection != null)
            {
                String sql = "select pubimg_id,pubimg_path from pubimages limit ?,?;";

//                connection.prepareStatement("create table if not exists pubimages(pubimg_id int(20) not null primary key auto_increment,pubimg_path varchar(255) not null,img_upload_time varchar(255) not null,img_upload_user varchar(255) not null,img_name varchar(255),img_size_MB float not null);");


                PreparedStatement preparedStatement = connection.prepareStatement(sql);


                preparedStatement.setLong(1,currentPage * 100);
                preparedStatement.setLong(2,99);

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

                e.printStackTrace();
            }
        }
*/

        return names;
    }

    public String getPubImgFileName(long pubId) {

        String pubImgPath = null;

        try{
            connection = databaseConnection.getDbConnection();
            if(connection != null)
            {
                String sql = "select pubimg_id,img_name from pubimages where pubimg_id=?;";

//                connection.prepareStatement("create table if not exists pubimages(pubimg_id int(20) not null primary key auto_increment,pubimg_path varchar(255) not null,img_upload_time varchar(255) not null,img_upload_user varchar(255) not null,img_name varchar(255),img_size_MB float not null);");


                PreparedStatement preparedStatement = connection.prepareStatement(sql);

                preparedStatement.setLong(1,pubId);
                ResultSet resultSet = preparedStatement.executeQuery();

                while (resultSet.next()){
                    pubImgPath = resultSet.getString("img_name");
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

        return pubImgPath;
    }

    public long getPubImgId(String PubImgName){


        long imgId = -1;

        try{
            connection = databaseConnection.getDbConnection();
            if(connection != null)
            {

                String sql = "select pubimg_id from pubimages where img_name=?;";

//                connection.prepareStatement("create table if not exists pubimages(pubimg_id int(20) not null primary key auto_increment,pubimg_path varchar(255) not null,img_upload_time varchar(255) not null,img_upload_user varchar(255) not null,img_name varchar(255),img_size_MB float not null);");

                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1,PubImgName);

                ResultSet resultSet = preparedStatement.executeQuery();

                while (resultSet.next()){
                    imgId = resultSet.getLong("pubimg_id");

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

        return imgId;

//        PubImg pubImg = new PubImg();
//        pubImg.setPubImagePath(pubImgPath);
//        return pubImg.getPubImageId();
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







    public List<String> getCompressedPubImgFilePaths() {




        List<String> names = new ArrayList<String>();
        List<String> compressedPaths = new ArrayList<String>();
        String imagePath = "/root/webdata/imagedata/";
//        String imagePath = "/home/zyj/IdeaProjects/image/i/imagedata/";
        final String UPLOAD_DIRECTORY = "pub_img";


        try{
            connection = databaseConnection.getDbConnection();
            if(connection != null)
            {
                String sql = "select pubimg_id,img_name from pubimages;";

//                connection.prepareStatement("create table if not exists pubimages(pubimg_id int(20) not null primary key auto_increment,pubimg_path varchar(255) not null,img_upload_time varchar(255) not null,img_upload_user varchar(255) not null,img_name varchar(255),img_size_MB float not null);");


                PreparedStatement preparedStatement = connection.prepareStatement(sql);

                ResultSet resultSet = preparedStatement.executeQuery();

                while (resultSet.next()){
                    names.add(resultSet.getString("img_name"));
                }

                for(String imgName:names){



                    String uploadPath = imagePath + UPLOAD_DIRECTORY;

                    String compressionFileName = "compressed_25_" + imgName;
                    String compressionFilePath = uploadPath + "/" + compressionFileName;
//                    System.out.println(compressImgPath);
//                    File storeFile = new File(filePath);

//                    Thumbnails.of(imagePath + "pub_img/" + imgName).scale(1f).outputQuality(0.25f).toFile(new File(compressionFilePath));
                    compressedPaths.add(compressionFilePath);

//                    System.out.println(compressionFilePath);

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
        return compressedPaths;

    }

//    public String getRealImagepathByCompressImagepath(String compressImagepath){

//        StringBuilder realImagepath = new StringBuilder();

//        String[] pathSplit = compressImagepath.split("/");
//        String compressImgName = pathSplit[pathSplit.length-1];
//        String realImgName = compressImgName.substring(13);

//        for(int i = 0;i<pathSplit.length-1;i++){
//            realImagepath.append(pathSplit[i]);
//        }
//        realImagepath.append(realImgName);
//
//        System.out.println("real: " + realImagepath.toString());
//        return realImagepath.toString();

//    }

}
