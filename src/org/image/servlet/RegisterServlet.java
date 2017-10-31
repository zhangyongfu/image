package org.image.servlet;

import org.image.DAO.ImageUserDaoImpl;
import org.image.model.User;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;


/**
 *
 * 注册页面servlet，当在注册页面填写完毕所需数据之后，点击注册，跳转到此servlet运行。
 * 在doGet方法对注册用户的信息执行保存入数据库的操作，并控制页面转向别处。
 *
 */
@WebServlet("/register")
public class RegisterServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String password = request.getParameter("password");

        //对注册信息进行判断，信息不能为空，并不能为空字符。满足条件时，将此用户加入数据库。
        if(email != null && name != null &&
                password != null && !"".equals(email) &&
                !"".equals(name) && !"".equals(password)){

            User user = new User(email,name,password);
            ImageUserDaoImpl imageUser = new ImageUserDaoImpl();
            imageUser.addImageUser(user);
            response.sendRedirect("/jsp/registsuccess.jsp");
            return;
        }
        response.sendRedirect("/jsp/registfail.jsp");



    }
}
