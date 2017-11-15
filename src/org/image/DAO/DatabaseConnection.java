package org.image.DAO;

import java.sql.*;

/**
 * 数据库链接类，有一个获取数据库链接方法，创建对象并调用方法后返回一个Connection对象。
 *
 * 方法没有参数。
 *
 */


public class DatabaseConnection {

    public Connection getDbConnection() throws Exception{
        Connection connection = null;
        try{
            String dbUrl = "jdbc:mysql://localhost:3306/user";
            String name = "root";
            String password = "271035";
//            String password = "634626";
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(dbUrl,name,password);
        }
        catch (Exception e){
            e.printStackTrace();
        }
        if(connection != null)
            return connection;
        return null;
    }
}
