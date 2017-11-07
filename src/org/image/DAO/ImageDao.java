package org.image.DAO;

import java.util.List;

public interface ImageDao {


    String addImageFilePath(String imagePath,String username);

    List<String> getImageFilePath(String username);




}
