package com.bth.model;

import com.bth.services.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDTO {

    public boolean login(UserDAO udao) {
        boolean b = false;
        //System.out.print("kertjhrgfewddftrytjythrgefwd");
        Connection con = null;

        con = GetConnection.getConnection();// No need to cast to (Connection)

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
                    udao.setMobile(rs.getString("mobile"));
                    udao.setImage(rs.getString("image"));
                    udao.setStatus(rs.getString("status"));
                    udao.setAddress(rs.getString("address"));
                    this.data(udao.getId(), udao);
                    b = true;
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return b;
    }

    public boolean insert(UserDAO udao) {
        boolean b = false;
        System.out.println("abhishek");
        Connection con = null;

        try {
            con = GetConnection.getConnection();

            if (con != null) {
                String sql = "INSERT INTO users(name, email, password, mobile, image, status,address) VALUES (?, ?, ?, ?, ?, ?, ?)";
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, udao.getName());
                    ps.setString(2, udao.getEmail());
                    ps.setString(3, udao.getPassword());
                    ps.setString(4, udao.getMobile());
                    ps.setString(5, udao.getImage());
                    ps.setString(6, "unblock");
                    ps.setString(7, udao.getAddress());

                    if (ps.executeUpdate() > 0) {
                        this.data(udao.getId(), udao);
                        b = true;
                    }
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
            // Log the exception properly using a logger
        }
        return b;
    }

    public boolean update(UserDAO udao) {
        boolean b = false;

        Connection con = null;

        try {
            con = con = GetConnection.getConnection();
            if (con != null) {
                String sql = "update users set name=?, email=?, mobile=?, address=? where id=?";
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, udao.getName());
                    ps.setString(2, udao.getEmail());
                    ps.setString(3, udao.getMobile());
                    ps.setString(4, udao.getAddress());
                    ps.setInt(5, udao.getId());
                    if (ps.executeUpdate() > 0) {
                        this.data(udao.getId(), udao);
                        b = true;
                    }
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
            // Log the exception properly using a logger
        }
        return b;
    }

    public void data(int id, UserDAO udao) {
        Connection con = null;

        con = con = GetConnection.getConnection(); // No need to cast to (Connection)

        if (con != null) {
            String sql = "SELECT * FROM users WHERE id=?";
            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, id);
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    udao.setId(rs.getInt("id"));
                    udao.setName(rs.getString("name"));
                    udao.setEmail(rs.getString("email"));
                    udao.setPassword(rs.getString("password"));
                    udao.setMobile(rs.getString("mobile"));
                    udao.setImage(rs.getString("image"));
                    udao.setStatus(rs.getString("status"));
                    udao.setAddress(rs.getString("address"));
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

}
