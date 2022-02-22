package org.personal.loginApplication.controller;

import org.personal.loginApplication.dao.LoginDao;
import org.personal.loginApplication.dao.impl.LoginDaoImpl;
import org.personal.loginApplication.model.Login;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name= "LoginFormController" , urlPatterns = {"/login"})
public class LoginFormController extends HttpServlet {

    private final LoginDao loginDao = new LoginDaoImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException , ServletException{
        String userName =req.getParameter("userName").trim();
        String password = req.getParameter("password").trim();

        Login login = new Login();
        login.setUserName(userName);
        login.setPassword(password);

        HttpSession session = req.getSession();
        Login user = loginDao.findOne(login);



        if(user!=null){
            session.setAttribute("firstName" , user.getFirstName());
            session.setAttribute("lastName" , user.getLastName());
            resp.sendRedirect("/LoginApplication/dashboard");
        }else{
            req.setAttribute("error-message" , "Sorry, you are not registered.");
            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }
    }
}
