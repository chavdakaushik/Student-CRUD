/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.studentDao.StudentDao;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
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
@WebServlet(urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String uname = request.getParameter("txtName");
            String pass = request.getParameter("txtLoginPassword");
//            String email = request.getParameter("txtEmail");

            Connection con = StudentDao.getConnection();

            String query = "SELECT name, password FROM student1 where name = '" + uname + "' and password = '" + pass + "' ";

            if (uname.equals("admin") && pass.equals("admin")) {
                RequestDispatcher dd = request.getRequestDispatcher("displayStudent.jsp");
                dd.forward(request, response);

            }

            Statement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery(query);

            if (rs.next()) {

                HttpSession session = request.getSession();
                session.setAttribute("username", uname);
//                session.setAttribute("email", email);

                response.sendRedirect("profile.jsp");

            } else {
                response.sendRedirect("loginForm.jsp");
            }

        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
