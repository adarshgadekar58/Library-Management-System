package controller;

import java.io.IOException;

import bean.StudentBean;
import dao.StudentDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/StudentLoginServlet")
public class StudentLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        int sid = Integer.parseInt(request.getParameter("studentId"));
        String password = request.getParameter("password");

        StudentDAO dao = new StudentDAO();

        StudentBean student = dao.studentLogin(sid, password);

        if (student != null) {

            HttpSession session = request.getSession();
            session.setAttribute("student", student);

            response.sendRedirect("DashBoard.html");

        } else {

            request.setAttribute("msg", "Invalid Student ID or Password");

            request.getRequestDispatcher("DashBoard.html")
                   .forward(request, response);

        }
    }
}