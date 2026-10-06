package controller;

import java.io.IOException;

import bean.BookBean;
import dao.BookDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddBookServlet")
public class AddBookServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        BookBean bb = new BookBean();

        bb.setBookId(Integer.parseInt(request.getParameter("bookId")));
        bb.setBookName(request.getParameter("bookName"));
        bb.setAuthor(request.getParameter("author"));
        bb.setCategory(request.getParameter("category"));
        bb.setPublisher(request.getParameter("publisher"));
        bb.setPrice(Double.parseDouble(request.getParameter("price")));
        bb.setQuantity(Integer.parseInt(request.getParameter("quantity")));
        bb.setAvailable(Integer.parseInt(request.getParameter("available")));

        BookDAO dao = new BookDAO();

        int result = dao.addBook(bb);

        if (result > 0) {

            response.sendRedirect("viewBooks.jsp");

        } else {

            response.getWriter().println(
                "<h2 style='color:red;text-align:center;'>Book could not be added!</h2>"
            );

        }
    }
}