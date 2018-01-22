
package org.image.model;



import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.image.model.User;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class UserTest {
//    @Test
    public void find(){
        try {
            //加载mybatis的配置文件
            InputStream inputStream = Resources.getResourceAsStream("resources/mybatis-config.xml");
            //通过sqlSession工厂创建者build出一个数据库会话工程
            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
            //打开一个数据库会话
            SqlSession session = sqlSessionFactory.openSession();
            //将pojo映射文件中的id写入，即可找到相应的sql语句，执行语句并获取fanhuizhi
            List<User> list = session.selectList("User.getUser");
            //打印返回值信息
            for (User user : list) {
                System.out.println(user.toString());
            }
            //提交会话
            session.commit();
            //关闭会话
            session.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void main(String [] args){
        new UserTest().find();
    }
}