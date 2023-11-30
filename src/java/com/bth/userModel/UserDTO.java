package com.bth.userModel;

import com.bth.servise.GetCon;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UserDTO {
    public boolean login(UserDAO udao) {
        boolean b = false;
        System.out.print("kertjhrgfewddftrytjythrgefwd");
        Connection con = null;

        try {
            con = GetCon.getConnection(); // No need to cast to (Connection)
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        if (con != null) {
            String sql = "SELECT * FROM users WHERE email=? AND password=?";
            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, udao.getEmail());
                ps.setString(2, udao.getPassword());
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    udao.setId(rs.getInt("id"));
                    udao.setName(rs.getString("name"));
                    udao.setEmail(rs.getString("email"));
                    udao.setPassword(rs.getString("password"));
                    udao.setImage(rs.getString("image"));
                    udao.setStatus(rs.getString("status"));
                    b = true;
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    con.close(); // Close the connection in the finally block
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return b;
    }
    public boolean insert(UserDAO udao) {
    boolean b = false;
     System.out.println("abhishek");
    Connection con = null;

    try {
        con = GetCon.getConnection();

        if (con != null) {
            String sql = "INSERT INTO users(name, email, password, mobile, image, status) VALUES (?, ?, ?, ?, ?, ?)";
            try (PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setString(1, udao.getName());
                ps.setString(2, udao.getEmail());
                ps.setString(3, udao.getPassword());
                ps.setString(4, udao.getMobile());
                ps.setString(5, udao.getImage());
                ps.setString(6, "unblock");

                if (ps.executeUpdate() > 0) {
                   
                    b = true;
                }
            }
        }

    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
        // Log the exception properly using a logger
    } finally {
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
                // Log the exception properly using a logger
            }
        }
    }

    return b;
}
    public void abhi(){
         System.out.println("oiudyrweuiofpisuytfghjkl;uytreaszdjkoiuyresfdxcvbjliuytrefsdghjiopoirefsdzv");
    }

}
