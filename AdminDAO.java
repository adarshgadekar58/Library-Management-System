package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.AdminBean;
import db.DBConnect;

public class AdminDAO {

    public AdminBean loginAdmin(String username, String password) {

        AdminBean admin = null;

        String sql = "SELECT USERNAME FROM ADMIN2 WHERE USERNAME=? AND PASSWORD=?";

        try (
            Connection con = DBConnect.getCon();
            PreparedStatement ps = con.prepareStatement(sql);
        ) {

            if (con == null) {
                System.out.println("Database Connection Failed...");
                return null;
            }

            ps.setString(1, username);
            ps.setString(2, password);
            
            System.out.println("Checking Database...");
            System.out.println("Username = " + username);
            System.out.println("Password = " + password);

            try (ResultSet rs = ps.executeQuery()) {

                if (rs.next()) {

                    System.out.println("LOGIN SUCCESS");

                    admin = new AdminBean();
                    admin.setUsername(rs.getString("USERNAME"));

                } else {

                    System.out.println("LOGIN FAILED");

                }
            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return admin;
    }

}