package org.image.servlet;

import com.drew.imaging.ImageMetadataReader;
import com.drew.imaging.ImageProcessingException;
import com.drew.metadata.Directory;
import com.drew.metadata.Metadata;
import com.drew.metadata.Tag;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.image.DAO.UploadPriImageDaoImpl;
import org.image.DAO.ImageUserDaoImpl;
import org.image.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


/**
 * Servlet implementation class UploadPriImgServlet
 */
@WebServlet("/jsp/UploadPriImgServlet")
public class UploadPriImgServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // 上传文件存储目录
    private static final String UPLOAD_DIRECTORY = "img";

    // 上传配置
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB

    /**
     * 上传数据及保存文件
     */
    protected void doPost(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException {


        response.setCharacterEncoding("UTF-8");

        request.setCharacterEncoding("utf-8");

        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        // 检测是否为多媒体上传
        if (!ServletFileUpload.isMultipartContent(request)) {
            // 如果不是则停止
            PrintWriter writer = response.getWriter();
            writer.println("Error: 表单必须包含 enctype=multipart/form-data");
            writer.flush();
            return;
        }

        // 配置上传参数
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // 设置内存临界值 - 超过后将产生临时文件并存储于临时目录中
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        // 设置临时存储目录
//        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

        ServletFileUpload upload = new ServletFileUpload(factory);

        // 设置最大文件上传值
        upload.setFileSizeMax(MAX_FILE_SIZE);

        // 设置最大请求值 (包含文件和表单数据)
        upload.setSizeMax(MAX_REQUEST_SIZE);

        // 中文处理
//        upload.setHeaderEncoding("UTF-8");

        HttpSession httpSession = request.getSession();
        User user = (User)httpSession.getAttribute("userName");
        ImageUserDaoImpl imageUserDaoImpl = new ImageUserDaoImpl();
        String userName = imageUserDaoImpl.getUserName(user);

//        String uploadUserPath = getServletContext().getRealPath("/") + UPLOAD_DIRECTORY;
//        String uploadUserPath = "/home/zyj/IdeaProjects/image/i/imagedata/" + UPLOAD_DIRECTORY;
        String uploadUserPath = "/root/webdata/imagedata/" + UPLOAD_DIRECTORY;

        // 如果目录不存在则创建
        File uploadUserDir = new File(uploadUserPath);
        if (!uploadUserDir.exists()) {
            uploadUserDir.mkdir();
        }



        String uploadPath = uploadUserPath +File.separator + userName ;

//        System.out.println("--"+request.getSession().getServletContext().getRealPath(File.separator)+"---");

        // 如果目录不存在则创建
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }

        try {
            List<FileItem> formItems = upload.parseRequest(request);



            if (formItems != null && formItems.size() > 0) {

                // 迭代表单数据
                for (FileItem item : formItems) {
                    // 处理不在表单中的字段
                    if (!item.isFormField()) {
                        String fileName = new File(item.getName()).getName();
                        String filePath = uploadPath + File.separator + fileName;
                        File storeFile = new File(filePath);



                        // 在控制台输出文件的上传路径
//                        System.out.println(filePath);
                        // 保存文件到硬盘
                        item.write(storeFile);
//                        System.out.println(request.getParameter("uploadImg"));

//                        if("toPri".equals(request.getParameter("uploadImg"))){

                        float fileSize = storeFile.length()/1024.0f/1024.0f;


                        UploadPriImageDaoImpl imageAdd = new UploadPriImageDaoImpl();



                        imageAdd.addImageFilePath(filePath,userName,fileName,fileSize);
//                           System.out.print("hello");

//                        }
//                        else {
//                            System.out.println("yes");
//                        }

//                        request.setAttribute("message", "文件上传成功!");

                    }
                }
            }
        } catch (Exception ex) {
            request.setAttribute("message",
                    "错误: " + ex.getMessage());
        }
        getServletContext().getRequestDispatcher("/jsp/mygallery.jsp").forward(
                request, response);
    }




}