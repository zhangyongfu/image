package org.image.test;

import com.drew.imaging.ImageMetadataReader;
import com.drew.imaging.ImageProcessingException;
import com.drew.metadata.Directory;
import com.drew.metadata.Metadata;
import com.drew.metadata.Tag;
import org.image.model.User;
import org.python.util.PythonInterpreter;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


public class Test {

    Map<String,String> alldata = new HashMap<String, String>();

    /**
     * 图片数据元提取
     */
    public Map<String,String> metadataExtractor(String p){


        File jpegFile = new File(p);
        try {
            Metadata metadata = ImageMetadataReader.readMetadata(jpegFile);
            for (Directory directory : metadata.getDirectories()) {
                for (Tag tag : directory.getTags()) {
                    alldata.put(tag.getTagName(),tag.getDescription());
                }
            }
        } catch (ImageProcessingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return alldata;
    }



    public static void main(String[] args) {

//        String path = "/home/zyj/IdeaProjects/i/img/zhang/57.jpg";
        String path = "/home/zyj/IdeaProjects/i/img/" + "zhang" + File.separator + "57.jpg";
        Map<String,String> datas = new Test().metadataExtractor(path);

        for(Map.Entry<String,String> entry:datas.entrySet()){
            System.out.println(entry.getKey() + "+++" + entry.getValue());
        }
    }
}