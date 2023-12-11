
package com.bth.model;

import com.bth.services.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class VendorDTO {
    public boolean vendorRegistration(VendorDAO vdao){
      boolean b=false;
      try {

            Connection con = GetConnection.getConnection();

            String sql = "INSERT INTO vendor (name,email,password,mobile,status,type) VALUES ( ?, ?, ? , ? , ?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, vdao.getName());
            preparedStatement.setString(2, vdao.getEmail());
            preparedStatement.setString(3, vdao.getPassword());
            preparedStatement.setString(4, vdao.getMobile());
            preparedStatement.setString(5, vdao.getStatus());
            preparedStatement.setString(6, vdao.getType());
            int i = preparedStatement.executeUpdate();
            if (i > 0) {
                b = true;

            }
            return b;
        } catch (SQLException ex) {
            System.out.println(ex);
        }
      return b;
    }

    public boolean vendorLogin(VendorDAO vdao) {
        boolean b=false;
        Connection con = GetConnection.getConnection();

        String sql = "SELECT * FROM vendor WHERE email=? AND password=?";
        try {

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, vdao.getEmail());
            ps.setString(2, vdao.getPassword());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                vdao.setEmail(rs.getString("email"));
                vdao.setName(rs.getString("name"));
                vdao.setMobile(rs.getString("mobile"));
                vdao.setStatus(rs.getString("status"));
                vdao.setType(rs.getString("type"));
                vdao.setVendorId(rs.getString("id"));
                b = true;
            } else {
                System.out.println("Not Exist");
            }
        } catch (SQLException ex) {
            System.out.println("Exception : " + ex);
        } catch (Exception ex) {
            System.out.println("Exception = " + ex);
        }
        return b;
    }
     public void allVendor(VendorDAO vdao) {
        boolean b=false;
        Connection con = GetConnection.getConnection();

        String sql = "SELECT * FROM vendor";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                vdao.setEmail(rs.getString("email"));
                vdao.setName(rs.getString("name"));
                vdao.setMobile(rs.getString("mobile"));
                vdao.setStatus(rs.getString("status"));
                vdao.setType(rs.getString("type"));
                vdao.setVendorId(rs.getString("id"));
              
            } else {
                System.out.println("Not Exist");
            }
        } catch (SQLException ex) {
            System.out.println("Exception : " + ex);
        } catch (Exception ex) {
            System.out.println("Exception = " + ex);
        }
        
    }
}
