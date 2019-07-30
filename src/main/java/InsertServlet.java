/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.student.Student;
import com.studentDao.StudentDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author kaushik
 */
@WebServlet(urlPatterns = {"/InsertServlet"})
public class InsertServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
        PrintWriter out=response.getWriter();  
          
        String name=request.getParameter("txtName");  
        String password=request.getParameter("txtRegPassword");  
        String email=request.getParameter("txtEmail");  
        String mobile=request.getParameter("txtMobile");  
        String address = request.getParameter("txtAddress");
        
        System.out.println(name);
          
        Student s=new Student();  
        s.setName(name);  
        s.setReg_Password(password);  
        s.setEmail(email);  
        s.setMobile(mobile);  
        s.setAddress(address);
          
        int a=StudentDao.insert(s);  
        
//        HttpSession session = request.getSession();
//        session.setAttribute("txtemail", email);
            
        if(a>0)
            response.sendRedirect("loginForm.jsp");  
        else
            out.println("Sorry! Can't inserted record");
        
    }

}
