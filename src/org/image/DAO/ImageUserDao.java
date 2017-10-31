package org.image.DAO;

import org.image.model.User;

/**
 *
 * Dao接口，内部声明增、删、改、查基本方法，方法实现由其实现类完成。
 *
 */

public interface ImageUserDao {

    //实现增删改查
    void addImageUser(User user);
    User deleteImageUser(User user);
    User findImageUser(String name,String password);
    User findImageUser(String name);
}
