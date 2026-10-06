package db;

import java.sql.Connection;
import java.sql.DriverManager;

public final class DBConnect 
{

    private static Connection con;

    private DBConnect(){}

    public static Connection getCon() 
    {

        try 
        {

            if(con==null || con.isClosed()) 
            {

                Class.forName(DBInfo.DRIVER);

                con = DriverManager.getConnection(
                        DBInfo.DB_URL,
                        DBInfo.DB_USER,
                        DBInfo.DB_PASSWORD
                );

                System.out.println("DB Connected");
            }

        } 
        catch(Exception e)
        {
            e.printStackTrace();
        }

        return con;
    }
}