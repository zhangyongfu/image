package org.image.search;

import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

public class PixImageSearch {

    public static void main(String[] args) throws Exception{
//        getPixabayImagesUrlJson("https://pixabay.com/api/?key=8423738-affef36dd72f8dad521db3183&q=yellow+flowers&image_type=photo");
//        showUrls();

        searchImage("cat",1);

    }

    public static List<String> searchImage(String q,int page){

        String searchUrl = "https://pixabay.com/api/?key=8423738-affef36dd72f8dad521db3183&q=" + q + "&per_page=40&page=" +page + "&hp=&image_type=all&order=popular&cat=&min_width=&min_height=&lang=zh";

        List<String> searchResult = new ArrayList<>();

        try{
            searchResult = getPixabayImagesUrlJson(searchUrl);

        }catch (Exception e){
            e.printStackTrace();
        }


        return searchResult;
    }




    public static List<String> getPixabayImagesUrlJson(String url) throws Exception {


        List<String> urls = new ArrayList<String>();

        try{

            URL myurl = new URL(url);


            HttpURLConnection connection = (HttpURLConnection) myurl.openConnection();
            connection.connect();
            InputStream inputStream = connection.getInputStream();
            //对应的字符编码转换
            Reader reader = new InputStreamReader(inputStream, "UTF-8");
            BufferedReader bufferedReader = new BufferedReader(reader);
            String str = null;
            StringBuffer sb = new StringBuffer();
            while ((str = bufferedReader.readLine()) != null) {
                sb.append(str);
            }
            reader.close();
            connection.disconnect();

            String urlString = sb.toString();

            JSONObject jsonObject = new JSONObject(urlString);

//            String total = jsonObject.getString("total");

//            System.out.println("total： " + total);

            org.json.JSONArray childs= jsonObject.getJSONArray("hits");


            int length = childs.length();
            for (int i = 0; i < length; i++) {
                jsonObject = childs.getJSONObject(i);
                String childName = jsonObject.getString("webformatURL");

                urls.add(childName);

//                System.out.println("childName====="+childName);

            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return urls;

    }


    public static void showUrls() throws Exception{
        List<String> imgUrls = getPixabayImagesUrlJson("https://pixabay.com/api/?key=8423738-affef36dd72f8dad521db3183&q=yellow+flowers&image_type=photo");
        for(String img:imgUrls){
            System.out.print("----" + img + "++++");
        }
    }


}
