package org.image.servlet;

import org.image.DAO.ImageUserDaoImpl;
import org.image.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


/**
 *
 * 登录页面servlet，当从登录页面点击登录时，跳转到此servlet运行。
 * 在doGet方法中对登录的用户从数据库端进行验证。最后执行登录动作，并控制页面转向别处。
 *
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        response.setContentType("text/html;charset=GB18030");

        //获得需要登录的用户名和密码。
//        response.setCharacterEncoding("UTF-8");
//        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("name");
        String password = request.getParameter("password");

        //在数据库中比对用户。
        ImageUserDaoImpl imageUserDao = new ImageUserDaoImpl();
        User user = imageUserDao.findImageUser(name,password);
        if(user != null){   //如果用户存在，进行下一步。
            try{
                //如果用户姓名和密码都正确，则登录成功。
                if(name.equals(user.getName()) && password.equals(user.getPassword())){//会发生空指针异常

                    HttpSession httpSession = request.getSession();
                    httpSession.setAttribute("userName",user);

                    request.getRequestDispatcher("/index.jsp").forward(request,response);
                    return;
                }
                //否则登录失败。
                else {
                    System.out.println("name or password not equals");
                    return;
                }
            }
            catch (NullPointerException e){
                e.printStackTrace();
            }
//            user = null;
        }
        //如果用户不存在，则登录失败。
        else {
            System.out.println("login fail");

        }


    }



}
