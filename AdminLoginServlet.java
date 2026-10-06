package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AdminBean;
import dao.AdminDAO;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public AdminLoginServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        response.sendRedirect("adminLogin.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        // Get form data
    	String username = request.getParameter("username");
    	String password = request.getParameter("password");

    	System.out.println("========== LOGIN REQUEST ==========");
    	System.out.println("Username: [" + username + "]");
    	System.out.println("Password: [" + password + "]");

        // Validate input
        if (username == null || username.trim().isEmpty()
                || password == null || password.trim().isEmpty()) {

            request.setAttribute("msg", "Please enter username and password.");
            request.getRequestDispatcher("adminLogin.jsp")
                   .forward(request, response);
            return;
        }

        // Check login
        AdminDAO dao = new AdminDAO();
        AdminBean admin = dao.loginAdmin(username.trim(), password.trim());

        if (admin != null) {

            // Create session
            HttpSession session = request.getSession(true);

            session.setAttribute("admin", admin);

            // Session timeout: 30 minutes
            session.setMaxInactiveInterval(30 * 60);

            // Redirect to dashboard
            response.sendRedirect("adminDashboard.jsp");

        } else {

            request.setAttribute("msg", "Invalid Username or Password.");
            request.getRequestDispatcher("adminLogin.jsp")
                   .forward(request, response);

        }
    }
}