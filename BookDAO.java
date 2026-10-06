package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.BookBean;
import db.DBConnect;

public class BookDAO {

    private Connection con = DBConnect.getCon();

    // ==========================
    // View All Books
    // ==========================
    public ArrayList<BookBean> getAllBooks() {

        ArrayList<BookBean> list = new ArrayList<>();

        try {

            PreparedStatement ps = con.prepareStatement("SELECT * FROM BOOK");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                BookBean bb = new BookBean();

                bb.setBookId(rs.getInt("BOOK_ID"));
                bb.setBookName(rs.getString("BOOK_NAME"));
                bb.setAuthor(rs.getString("AUTHOR"));
                bb.setCategory(rs.getString("CATEGORY"));
                bb.setPublisher(rs.getString("PUBLISHER"));
                bb.setPrice(rs.getDouble("PRICE"));
                bb.setQuantity(rs.getInt("QUANTITY"));
                bb.setAvailable(rs.getInt("AVAILABLE"));

                list.add(bb);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // ==========================
    // Add New Book
    // ==========================
    public int addBook(BookBean bb) {

        int rowCount = 0;

        try {

            String sql = "INSERT INTO BOOK (BOOK_ID, BOOK_NAME, AUTHOR, CATEGORY, PUBLISHER, PRICE, QUANTITY, AVAILABLE) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, bb.getBookId());
            ps.setString(2, bb.getBookName());
            ps.setString(3, bb.getAuthor());
            ps.setString(4, bb.getCategory());
            ps.setString(5, bb.getPublisher());
            ps.setDouble(6, bb.getPrice());
            ps.setInt(7, bb.getQuantity());
            ps.setInt(8, bb.getAvailable());

            rowCount = ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return rowCount;
    }

}