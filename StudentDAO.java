package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.StudentBean;
import db.DBConnect;

public class StudentDAO {

    Connection con = DBConnect.getCon();

    // Student Registration
    public int registerStudent(StudentBean sb) {

        int rowCount = 0;

        try {

        	PreparedStatement ps = con.prepareStatement(
        		 "INSERT INTO STUDENT (SID, NAME, EMAIL, PHONE, PASSWORD) VALUES (?, ?, ?, ?, ?)"
        		);

            ps.setInt(1, sb.getSid());
            ps.setString(2, sb.getName());
            ps.setString(3, sb.getEmail());
            ps.setString(4, sb.getPhone());
            ps.setString(5, sb.getPassword());

            rowCount = ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return rowCount;
    }

    // Student Login
    public StudentBean studentLogin(int sid, String password) {

        StudentBean sb = null;

        try {

            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM STUDENT WHERE SID=? AND PASSWORD=?");

            ps.setInt(1, sid);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                sb = new StudentBean();

                sb.setSid(rs.getInt("SID"));
                sb.setName(rs.getString("NAME"));
                sb.setEmail(rs.getString("EMAIL"));
                sb.setPhone(rs.getString("PHONE"));
                sb.setPassword(rs.getString("PASSWORD"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return sb;
    }

    // Get Student By ID
    public StudentBean getStudentById(int sid) {

        StudentBean sb = null;

        try {

            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM STUDENT WHERE SID=?");

            ps.setInt(1, sid);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                sb = new StudentBean();

                sb.setSid(rs.getInt("SID"));
                sb.setName(rs.getString("NAME"));
                sb.setEmail(rs.getString("EMAIL"));
                sb.setPhone(rs.getString("PHONE"));
                sb.setPassword(rs.getString("PASSWORD"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return sb;
    }

    // Update Student Profile
    public int updateStudent(StudentBean sb) {

        int rowCount = 0;

        try {

            PreparedStatement ps = con.prepareStatement(
                    "UPDATE STUDENT SET NAME=?,EMAIL=?,PHONE=?,PASSWORD=? WHERE SID=?");

            ps.setString(1, sb.getName());
            ps.setString(2, sb.getEmail());
            ps.setString(3, sb.getPhone());
            ps.setString(4, sb.getPassword());
            ps.setInt(5, sb.getSid());

            rowCount = ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return rowCount;
    }

}