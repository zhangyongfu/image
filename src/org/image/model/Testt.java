package org.image.model;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Testt {

    private long imgId;

    public long getSelectImgId(HttpServletRequest request){
        String n = request.getParameter("imgId");
//        System.out.print(Long.parseLong(n));

        long num = Long.parseLong(n);
        this.imgId = num;
        return num;
    }

    public Map<String,String> getNeedData(long id){
        ImageMetadata imageMetadata = new ImageMetadata();
        Map<String,String> datas = new HashMap<>();
        try{
            datas = imageMetadata.getAllMetadata(id);

        }catch (Exception e){
            e.printStackTrace();
        }

        return datas;
    }

    public static void main(String[] args){
//        UploadPubImages uploadPubImages = new UploadPubImages();
//
//        List<String> paths = uploadPubImages.getPubImgFilePath();
//
//        for(int i =0;i<5;i++) {
//
//            String imgPath = paths.get(i);
//
//            long imgId = uploadPubImages.getPubImgId(imgPath);
//
//            System.out.println("path: " + imgPath);
//            System.out.println("id: " + imgId);
//        }


        Testt testt = new Testt();


    }


}
