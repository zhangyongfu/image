package org.image.servlet;

import com.sun.org.apache.bcel.internal.generic.RETURN;
import com.sun.xml.internal.bind.v2.runtime.reflect.opt.Const;
import net.coobird.thumbnailator.Thumbnails;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.image.model.UploadPubImages;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;
import java.util.logging.Logger;

@WebServlet("/FileUploadServlet")
public class FileUploadServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        super.doGet(req, resp);
        doPost(req, resp);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload sfu = new ServletFileUpload(factory);
        sfu.setHeaderEncoding("utf-8");

//        String savePath = this.getServletConfig().getServletContext().getRealPath("");

        String folad = "pub_img";
//        String savePath = "/home/zyj/webdata/imagedata";
//        String savePath = "/home/zyj/IdeaProjects/image/i/imagedata";
        String savePath = "/root/webdata/imagedata";

        savePath = savePath + "/" + folad;

        String fileMd5 = null;

        String chunk = null;

        try {

            List<FileItem> items = sfu.parseRequest(request);

            for (FileItem item : items) {

                if (item.isFormField()) {

                    String fieldName = item.getFieldName();

                    if (fieldName.equals("fileMd5")) {

                        fileMd5 = item.getString("utf-8");

                    }

                    if (fieldName.equals("chunk")) {

                        chunk = item.getString("utf-8");

                    }

                } else {
//
//                    File file = new File(savePath + "/" + fileMd5);
//
//                    if (!file.exists()) {
//
//                        file.mkdir();
//
//                    }

                    File chunkFile = new File(savePath + "/" + fileMd5 + "/"
                                    + chunk);

                    FileUtils.copyInputStreamToFile(item.getInputStream(),
                            chunkFile);

//                    System.out.println("iiiiiii" + item.toString());


                }

            }



        } catch (FileUploadException e) {

            e.printStackTrace();

        }




    }

}