package org.image.model;

import com.drew.imaging.ImageMetadataReader;
import com.drew.imaging.ImageProcessingException;
import com.drew.metadata.Directory;
import com.drew.metadata.Metadata;
import com.drew.metadata.Tag;
import org.image.DAO.ImageDao;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ImageMetadata {

    public ImageMetadata(){
    }

    public Map<String,String> getAllMetadata(long imgId) throws ImageProcessingException, IOException{

        Map<String,String> imgMetadata = new HashMap<String, String>();

        UploadPubImages uploadPubImages = new UploadPubImages();
        String imgPath = uploadPubImages.getPubImgFilePath(imgId);

//        String[] strings = paths.get(i).split("/");
//        String p = strings[strings.length - 1];
//        request.setAttribute("ph", p);



//        File imgFile = new File("/home/zyj/IdeaProjects/i/img/zhang/008.jpg");
        File imgFile = new File(imgPath);
        try {
            Metadata metadata = ImageMetadataReader.readMetadata(imgFile);
            for (Directory directory : metadata.getDirectories()) {
                for (Tag tag : directory.getTags()) {
                    imgMetadata.put(tag.getTagName(),tag.getDescription());
//                    System.out.println(tag);
                }
            }
        } catch (ImageProcessingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return imgMetadata;
    }














    /**
     * 图片数据元提取
     */
    public static void metadataExtractor(){
        File jpegFile = new File("11.jpg");
        try {
            Metadata metadata = ImageMetadataReader.readMetadata(jpegFile);
            for (Directory directory : metadata.getDirectories()) {
                for (Tag tag : directory.getTags()) {
                    System.out.println(tag);
                }
            }
        } catch (ImageProcessingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) throws Exception {

//        metadataExtractor();


//        ImageMetadata i = new ImageMetadata();
//
//        i.getAllMetadata(216);

        Map<String,String> data = new ImageMetadata().getAllMetadata(206);

        for(Map.Entry<String,String> entry:data.entrySet()){
            System.out.println(entry.getKey() + ";;;;" + entry.getValue());

        }
    }
}

