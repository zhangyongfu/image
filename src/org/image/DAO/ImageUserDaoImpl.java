package org.image.DAO;

import org.image.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


/**
 *
 * ImageUserDao接口的实现类，重写了接口中的各个方法，以实现对数据库的操作。
 *
 *
 */

public class ImageUserDaoImpl implements ImageUserDao {

    DatabaseConnection databaseConnection = new DatabaseConnection();

    ArrayList users = new ArrayList();
    Connection connection = null;


    public String getUserName(User user){


        try{
            connection = databaseConnection.getDbConnection();
            if(connection != null){
                String sql = "select id,tel,username from users where username=? and email=?";

                PreparedStatement preparedStatement = connection.prepareStatement(sql);

                preparedStatement.setString(1,user.getName());

//                System.out.println("username:" + user.getName());

                preparedStatement.setString(2,user.getTel());
//                System.out.println("email:" + user.getEmail());


//                preparedStatement.setString(2,user.getEmail());

                ResultSet resultSet = preparedStatement.executeQuery();

                while (resultSet.next()){
//                    user.setId(resultSet.getInt("id"));
                    user.setName(resultSet.getString("username"));
                }

            }
        }catch (Exception e){
            e.printStackTrace();
        }




//        System.out.println("username:"+ user.getName());
        return user.getName();


    }



    /**
     * findImageUser 方法，通过name，password返回与之匹配的用户。用于在登录界面的判断，
     * 如：当所传参数返回的用户与数据库中的用户匹配时，刚返回此用户，并同意登录。（在数据库中查询）
     *
     *
     * @param name name参数指定一个用户的姓名。
     * @param password password参数指定些用户的密码。
     * @return 返回与姓名与密码相匹配的用户User。
     */
    @Override
    public User findImageUser(String name, String password) {

        User user = null;

        try{
            connection = databaseConnection.getDbConnection();
            if(connection != null){
                user = new User();
                String sql = "select id,tel,username,userpassword from users where username=? and userpassword=?";
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1,name);
                preparedStatement.setString(2,password);
                ResultSet resultSet = preparedStatement.executeQuery();

                while (resultSet.next()){
//                    user.setEmail(resultSet.getString("email"));
                    user.setName(resultSet.getString("username"));
                    user.setPassword(resultSet.getString("userpassword"));
//                    System.out.print(resultSet.getString("username") == "zyj");Y
                }
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        finally {
            closeConnection();
        }
        if(user != null){
            return user;
        }
        return null;
    }

    /**
     *
     * deleteImageUser方法，用于从数据库中删除指定用户，个人认为一般情况不要轻易执行此操作。
     *
     * @param user user参数指定需要删除的用户。
     * @return 返回被删除的用户。
     */
    @Override
    public User deleteImageUser(User user) {
        return null;
    }



    /**
     *
     * 此方法通过指定用户名查找所属的用户。（即在数据库中用户应唯一）
     *
     * @param name name参数指定需要查找的用户姓名。
     * @return 返回通过指定用户姓名所查找到的用户。
     */
    @Override
    public User findImageUser(String name) {
/*        User user = null;

        try{
            connection = databaseConnection.getDbConnection();
            if(connection != null){
                user = new User();
                String sql = "select id,email,username from users where username=" + name;
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                ResultSet resultSet = preparedStatement.executeQuery();

                while (resultSet.next()){
                    user.setEmail(resultSet.getString("email"));
                    user.setName(resultSet.getString("username"));
                }
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        finally {
            closeConnection();
        }
        if(user != null){
            return user;
        }
       */
        return null;
    }


    /**
     *
     *
     * 此方法用于向数据库中添加指定的用户，此方法用于用户注册页面，当有一个用户注册之后，
     * 将此用户的信息（email,name,password)存入数据库表中。此方法无返回值。
     *
     *
     * @param user user为所需要添加的用户，即要加入数据库的用户。
     */
    @Override
    public void addImageUser(User user) {
        try {
            connection = databaseConnection.getDbConnection();

            if(connection != null){
//                String sql = "select * from users";
                String tel = user.getTel();
                String name = user.getName();
                String password = user.getPassword();
                String sql = "insert into users(tel,username,userpassword) values(?,?,?)";

                PreparedStatement preparedStatement =connection.prepareStatement(sql);
                preparedStatement.setString(1,tel);
                preparedStatement.setString(2,name);
                preparedStatement.setString(3,password);
                if(tel != null && name != null && password != null){
                    preparedStatement.executeUpdate();
                }
            }
            else {
                System.out.println("connection fail!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            try{
                closeConnection();
            }
            catch (Exception e){

            }
        }
    }

    /**
     *
     * 关闭数据库连接。
     *
     */
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
