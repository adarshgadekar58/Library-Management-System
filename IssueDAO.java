package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import bean.IssueBean;
import db.DBConnect;

public class IssueDAO {

    private Connection con = DBConnect.getCon();

    public int issueBook(IssueBean ib) {

        int result = 0;

        try {

            // Start Transaction
            con.setAutoCommit(false);

            // Insert into ISSUE_BOOK table
            String issueSql = "INSERT INTO ISSUE_BOOK (STUDENT_ID, STUDENT_NAME, BOOK_ID, BOOK_NAME, ISSUE_DATE, RETURN_DATE) VALUES (?, ?, ?, ?, ?, ?)";

            PreparedStatement ps1 = con.prepareStatement(issueSql);

            ps1.setInt(1, ib.getStudentId());
            ps1.setString(2, ib.getStudentName());
            ps1.setInt(3, ib.getBookId());
            ps1.setString(4, ib.getBookName());
            ps1.setDate(5, ib.getIssueDate());
            ps1.setDate(6, ib.getReturnDate());

            int insertResult = ps1.executeUpdate();

            // Update BOOK table
            String updateSql = "UPDATE BOOK SET AVAILABLE = AVAILABLE - 1 WHERE BOOK_ID = ? AND AVAILABLE > 0";

            PreparedStatement ps2 = con.prepareStatement(updateSql);

            ps2.setInt(1, ib.getBookId());

            int updateResult = ps2.executeUpdate();

            if (insertResult > 0 && updateResult > 0) {

                con.commit();
                result = 1;

            } else {

                con.rollback();

            }

        } catch (Exception e) {

            try {
                con.rollback();
            } catch (Exception ex) {
                ex.printStackTrace();
            }

            e.printStackTrace();

        } finally {

            try {
                con.setAutoCommit(true);
            } catch (Exception e) {
                e.printStackTrace();
            }

        }

        return result;
    }

}