package org.image.search;



import net.sf.json.JSON;
import org.apache.commons.lang3.StringEscapeUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ImageSearch {


    public static void main(String[] args){






            //查询Ip信息的接口，返回json
            String url="https://sp0.baidu.com/8aQDcjqpAAV3otqbppnN2DJv/api.php?query=2.24.1.1&resource_id=6006&format=json";
            String result = "";
            BufferedReader in = null;
            try {
                String urlNameString = url;
                URL realUrl = new URL(urlNameString);
                // 打开和URL之间的连接
                URLConnection connection = realUrl.openConnection();
                // 建立实际的连接
                connection.connect();
                // 获取所有响应头字段
                Map<String, List<String>> map = connection.getHeaderFields();
                // 定义 BufferedReader输入流来读取URL的响应
                in = new BufferedReader(new InputStreamReader(
                        connection.getInputStream()));
                String line;
                while ((line = in.readLine()) != null) {
                    result += line;
                }
            } catch (Exception e) {
                System.out.println("发送GET请求出现异常！" + e);
                e.printStackTrace();
            }
            // 使用finally块来关闭输入流
            finally {
                try {
                    if (in != null) {
                        in.close();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            //得到的json数据
            System.out.println(result);
            //解析,
//            JSONObject jsonObj = JSON.parseObject(result);
//            JSONArray jarr =  jsonObj.getJSONArray("data");
//            JSONObject j0 = (JSONObject)jarr.get(0);
//            输出该ip对应的地理位置
//            System.out.println(j0.get("location"));











//        jsonToObj();

/*
        String downloadPath = "./search_images";
        List<String> list = nameList("美女");
        getPictures(list,5,downloadPath); //1代表下载一页，一页一般有30张图片

        */
    }




    public static void getPictures(List<String> keywordList, int max,String downloadPath){ // key为关键词,max作为爬取的页数
        String gsm=Integer.toHexString(max)+"";
        String finalURL = "";
        String tempPath = "";
        for(String keyword : keywordList){
            tempPath = downloadPath;
            if(!tempPath.endsWith("/")){
                tempPath = downloadPath+"/";
            }
            tempPath = tempPath+keyword+"/";
            File f = new File(tempPath);
            if(!f.exists()){
                f.mkdirs();
            }
            int picCount = 1;
            for(int page=0;page<=max;page++) {
                sop("正在下载第"+page+"页面");
                Document document = null;
                try {
                    String url ="http://image.baidu.com/search/avatarjson?tn=resultjsonavatarnew&ie=utf-8&word="+keyword+"&cg=star&pn="+page*30+"&rn=30&itg=0&z=0&fr=&width=&height=&lm=-1&ic=0&s=0&st=-1&gsm="+Integer.toHexString(page*30);
//                    String url ="http://image.baidu.com/search/index?tn=baiduimage&ipn=r&ct=201326592&cl=2&lm=-1&st=-1&fm=detail&fr=&hs=0&xthttps=000000&sf=1&fmq=1521434465582_R&pv=&ic=0&nc=1&z=&se=&showtab=0&fb=0&width=&height=&face=0&istype=2&ie=utf-8&word=%E8%83%A1%E6%AD%8C&oq=%E8%83%A1%E6%AD%8C&rsp=-1";
                    sop(url);
                    document = Jsoup.connect(url).data("query", "Java")//请求参数
                            .userAgent("Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)")//设置urer-agent  get();
                            .timeout(5000)
                            .get();
                    String xmlSource = document.toString();
                    xmlSource = StringEscapeUtils.unescapeHtml3(xmlSource);
                    sop("++++" + xmlSource + "...........................................");
                    String reg = "objURL\":\"http://.+?\\.jpg";
                    Pattern pattern = Pattern.compile(reg);
                    Matcher m = pattern.matcher(xmlSource);
                    while (m.find()) {
                        finalURL = m.group().substring(9);
                        sop(keyword+picCount+++":"+finalURL);https://www.google.com/search?hl=en&tbm=isch&source=hp&biw=1229&bih=567&ei=vEOvWpCeAa7n5gKksrBY&q=cat&oq=cat&gs_l=img.3...2128.2548.0.2692.3.3.0.0.0.0.0.0..0.0....0...1ac.1.64.img..3.0.0....0.3XTbv6EGztw
                        download(finalURL,tempPath);
                        sop("             下载成功");
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        sop("下载完毕");
        delMultyFile(downloadPath);
        sop("已经删除所有空图");
    }


    public static List<String> getPicturesUrl(List<String> keywordList, int max,String downloadPath){ // key为关键词,max作为爬取的页数
        String gsm=Integer.toHexString(max)+"";

        List<String> picturesUrl = new ArrayList<>();

        String finalURL = "";
        String tempPath = "";
        for(String keyword : keywordList){
            tempPath = downloadPath;
            if(!tempPath.endsWith("/")){
                tempPath = downloadPath+"/";
            }
            tempPath = tempPath+keyword+"/";
            File f = new File(tempPath);
            if(!f.exists()){
                f.mkdirs();
            }
            int picCount = 1;
            for(int page=0;page<=max;page++) {
                sop("正在下载第"+page+"页面");
                Document document = null;
                try {
                    String url ="http://image.baidu.com/search/avatarjson?tn=resultjsonavatarnew&ie=utf-8&word="+keyword+"&cg=star&pn="+page*30+"&rn=30&itg=0&z=0&fr=&width=&height=&lm=-1&ic=0&s=0&st=-1&gsm="+Integer.toHexString(page*30);
//                    String url ="http://image.baidu.com/search/index?tn=baiduimage&ipn=r&ct=201326592&cl=2&lm=-1&st=-1&fm=detail&fr=&hs=0&xthttps=000000&sf=1&fmq=1521434465582_R&pv=&ic=0&nc=1&z=&se=&showtab=0&fb=0&width=&height=&face=0&istype=2&ie=utf-8&word=%E8%83%A1%E6%AD%8C&oq=%E8%83%A1%E6%AD%8C&rsp=-1";
                    sop(url);
                    document = Jsoup.connect(url).data("query", "Java")//请求参数
                            .userAgent("Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)")//设置urer-agent  get();
                            .timeout(5000)
                            .get();
                    String xmlSource = document.toString();
                    xmlSource = StringEscapeUtils.unescapeHtml3(xmlSource);
//                    sop("%%%%%%%%%%%%%%%%" + xmlSource + "$$$$$$$$$$$$$$$$$$$$$$$$");
                    String reg = "objURL\":\"http://.+?\\.jpg";
                    Pattern pattern = Pattern.compile(reg);
                    Matcher m = pattern.matcher(xmlSource);
                    while (m.find()) {
                        finalURL = m.group().substring(9);
//                        sop(keyword+picCount+++":"+finalURL + "@@@@@@@@@@@@@@");

                        picturesUrl.add(finalURL);

                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        sop("-----------------------获取url成功----------------------");
        sop("-----------------------获取url成功----------------------");

        return picturesUrl;

    }
    public static void delMultyFile(String path){
        File file = new File(path);
        if(!file.exists())
            throw new RuntimeException("File \""+path+"\" NotFound when excute the method of delMultyFile()....");
        File[] fileList = file.listFiles();
        File tempFile=null;
        for(File f : fileList){
            if(f.isDirectory()){
                delMultyFile(f.getAbsolutePath());
            }else{
                if(f.length()==0)
                    sop(f.delete()+"---"+f.getName());
            }
        }
    }
    public static List<String> nameList(String nameList){
        List<String> arr = new ArrayList<>();
        String[] list;
        if(nameList.contains(","))
            list= nameList.split(",");
        else if(nameList.contains("、"))
            list= nameList.split("、");
        else if(nameList.contains(" "))
            list= nameList.split(" ");
        else{
            arr.add(nameList);
            return arr;
        }
        for(String s : list){
            arr.add(s);
        }
        return arr;
    }
    public static void sop(Object obj){
        System.out.println(obj);
    }
    //根据图片网络地址下载图片
    public static void download(String url,String path){
        //path = path.substring(0,path.length()-2);
        File file= null;
        File dirFile=null;
        FileOutputStream fos=null;
        HttpURLConnection httpCon = null;
        URLConnection con = null;
        URL urlObj=null;
        InputStream in =null;
        byte[] size = new byte[1024];
        int num=0;
        try {
            String downloadName= url.substring(url.lastIndexOf("/")+1);
            dirFile = new File(path);
            if(!dirFile.exists() && path.length()>0){
                if(dirFile.mkdir()){
                    sop("creat document file \""+path.substring(0,path.length()-1)+"\" success...\n");
                }
            }else{
                file = new File(path+downloadName);
                fos = new FileOutputStream(file);
                if(url.startsWith("http")){
                    urlObj = new URL(url);
                    con = urlObj.openConnection();
                    httpCon =(HttpURLConnection) con;
                    in = httpCon.getInputStream();
                    while((num=in.read(size)) != -1){
                        for(int i=0;i<num;i++)
                            fos.write(size[i]);
                    }
                }
            }
        }catch (FileNotFoundException notFoundE) {
            sop("找不到该网络图片....");
        }catch(NullPointerException nullPointerE){
            sop("找不到该网络图片....");
        }catch(IOException ioE){
            sop("产生IO异常.....");
        }catch (Exception e) {
            e.printStackTrace();
        }finally{
            try {
                fos.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void showUrl(List<String> list){

        for(String url:list){
            System.out.println("------" + url + "-----");
        }
        
    }


    public static void getPixabayImagesUrlJson(String url) throws Exception {


             /*   String myurl = url; //写上自己的url链接即可，我的就不公布了哈~
        String json = loadJson(myurl);  //获得json字符串
        System.out.println(json);   //检测是否正确获得
        JSONObject jsonObject=JSONObject.fromObject(json);
        System.out.println(jsonObject.get("id"));  //其中id为json中某个key，检测是否可以获得value值

*/

        /**用到的架包有：
         json-lib-2.4-jdk15.jar
         commons-lang-2.6.jar
         ezmorph-1.0.6.jar
         commons-logging-1.1.1.jar
         commons-collections-3.2.1.jar
         commons-beanutils-1.8.3.jar
         */
/*

        //外接口路径
        String urlStr = url;
        //链接URL
        URL myurl = new URL(urlStr);
        //返回结果集
        StringBuffer document = new StringBuffer();
        //创建链接
        URLConnection conn = myurl.openConnection();
        //读取返回结果集
        BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
        String line = null;
        while ((line = reader.readLine()) != null) {
            document.append(line);
        }
        reader.close();
        System.out.println("dddddddddd" + document + "dddddddddd");
        JSONObject json = JSONObject.fromObject(document.toString());
        //查看json格式
        System.out.println("----------" + json.toString() + "------------");
        //获取json中某个对象
        JSONObject obj = (JSONObject) json.get("totalHits");
        System.out.println("hahahahahahaha.................." + obj.toString());
        //获取对象中某个属性的值
        String val = obj.getString("city");
        System.out.println(val);
*/




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

        org.json.JSONArray childs= jsonObject.getJSONArray("hits");
        int length = childs.length();
        for (int i = 0; i < length; i++) {
            jsonObject = childs.getJSONObject(i);
            String childName = jsonObject.getString("largeImageURL");

            System.out.println("childName====="+childName);
        }

    }





















    protected static String getJsonString(String urlPath) throws Exception {
        URL url = new URL(urlPath);
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
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
        return sb.toString();
    }


    public static void jsonToObj() throws Exception {


        String jsonStr = getJsonString("https://pixabay.com/api/?key=8423738-affef36dd72f8dad521db3183&q=yellow+flowers&image_type=photo");

        JSONObject jsonObject = new JSONObject(jsonStr);

        org.json.JSONArray childs= jsonObject.getJSONArray("hits");
        int length = childs.length();
        for (int i = 0; i < length; i++) {
            jsonObject = childs.getJSONObject(i);
            String childName = jsonObject.getString("largeImageURL");

            System.out.println("childName====="+childName);
        }
    }



}
