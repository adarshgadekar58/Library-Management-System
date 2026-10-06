package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import bean.StudentBean;
import dao.StudentDAO;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterStudentServlet")
public class RegisterStudentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        int sid = Integer.parseInt(request.getParameter("sid"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        // Check password confirmation
        if (!password.equals(confirmPassword)) {

            response.getWriter().println(
                    "<h2 style='color:red;text-align:center;'>"
                  + "Password and Confirm Password do not match!"
                  + "</h2>");

            return;
        }

        StudentBean sb = new StudentBean();

        sb.setSid(sid);
        sb.setName(name);
        sb.setEmail(email);
        sb.setPhone(phone);
        sb.setPassword(password);

        StudentDAO dao = new StudentDAO();

        int result = dao.registerStudent(sb);

        if (result > 0) {

            response.sendRedirect("studentLogin.jsp");

        } else {

            response.getWriter().println(
                    "<h2 style='color:red;text-align:center;'>"
                  + "Registration Failed!"
                  + "</h2>");

        }
    }
}