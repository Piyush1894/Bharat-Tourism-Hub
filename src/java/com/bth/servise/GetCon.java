package com.bth.servise;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class GetCon {
	private static Connection connection = null;
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
        if(connection == null){
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/bth","root","root");
            System.out.print("connected");
        }
        return connection;
    }

}
