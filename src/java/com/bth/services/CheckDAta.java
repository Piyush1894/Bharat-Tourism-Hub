/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bth.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author user
 */
public class CheckDAta {
    private String email,mobile;
    private String pass;
    private String block;

    public String getBlock() {
        return block;
    }

    public void setBlock(String block) {
        this.block = block;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    public static boolean checkData(String tableName,String columnName,String columnData){
        boolean b=false;
        
        String sql="select * from "+tableName+" where "+columnName+"=?";
        Connection con=GetConnection.getConnection();
        try {
            PreparedStatement pr=con.prepareStatement(sql);
            pr.setString(1, columnData);
            ResultSet rs = pr.executeQuery();
            
            while(rs.next()){
                b=true;
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return b;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }
    
}
