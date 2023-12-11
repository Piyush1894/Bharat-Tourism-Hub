/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bth.model;

import com.bth.services.GetConnection;
import java.sql.*;
import java.awt.List;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class BusDTO {

    public boolean addBus(BusDAO busDetails) {
//        String sql = "INSERT INTO busDetails (BusNo, BusName, FromCity, ToCity, Date, Time, TravelDuration, StationName, TicketPrice, Description) " +
//                     "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        String sql = "INSERT INTO busDetails (BusNo, BusName, FromCity, ToCity, DispatchTime, ArrivalTime, StationName, TicketPrice, Description ,vendorid) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ? ,?)";

        try (
                Connection connection = GetConnection.getConnection(); 
                PreparedStatement preparedStatement = connection.prepareStatement(sql);) {
            Date d = (Date) busDetails.getDate();
            preparedStatement.setString(1, busDetails.getBusNo());
            preparedStatement.setString(2, busDetails.getBusName());
            preparedStatement.setString(3, busDetails.getFromCity());
            System.out.println("Hello");
            preparedStatement.setString(4, busDetails.getToCity());
            preparedStatement.setString(5, busDetails.getTime());
            preparedStatement.setString(6, busDetails.getTravelDuration());
            preparedStatement.setString(7, busDetails.getStationName());
            preparedStatement.setDouble(8, busDetails.getTicketPrice());
            preparedStatement.setString(9, busDetails.getDescription());
            preparedStatement.setString(10, busDetails.getVendorId());
            int rowsAffected = preparedStatement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            System.out.println(e);
        }

        return false;
    }
    public boolean featchBusDetails(BusDAO dao){
        ArrayList<BusDAO> lbdao=new ArrayList<BusDAO>();
        boolean b=false;
        String sql="select * from busdetails where vendorid=?";
        Connection con=GetConnection.getConnection();
        try {
            PreparedStatement pr=con.prepareStatement(sql);
            pr.setInt(1, Integer.parseInt(dao.getVendorId()));
            ResultSet rs = pr.executeQuery();
            
            while(rs.next()){
                BusDAO temp=new BusDAO();
                temp.setBusName(rs.getString("BusName"));
                temp.setBusNo(rs.getString("BusNo"));
                temp.setBusid(rs.getInt("BusId"));
                temp.setFromCity(rs.getString("FromCity"));
                temp.setToCity(rs.getString("ToCity"));
                temp.setTime(rs.getString("DispatchTime"));
                temp.setTravelDuration(rs.getString("ArrivalTime"));
                temp.setStationName(rs.getString("StationName"));
                temp.setTicketPrice(rs.getDouble("TicketPrice"));
                temp.setDescription(rs.getString("Description"));
                lbdao.add(temp);
                b=true;
            }
            dao.setBdaoal(lbdao);
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return b;
    }
    public boolean featchBusDetailsbysearch(BusDAO dao){
        ArrayList<BusDAO> lbdao=new ArrayList<BusDAO>();
        boolean b=false;
        String sql="select * from busdetails FromCity=?,ToCity=?,";
        Connection con=GetConnection.getConnection();
        try {
            PreparedStatement pr=con.prepareStatement(sql);
            pr.setInt(1, Integer.parseInt(dao.getVendorId()));
            ResultSet rs = pr.executeQuery();
            
            while(rs.next()){
                BusDAO temp=new BusDAO();
                temp.setBusName(rs.getString("BusName"));
                temp.setBusNo(rs.getString("BusNo"));
                temp.setBusid(rs.getInt("BusId"));
                temp.setFromCity(rs.getString("FromCity"));
                temp.setToCity(rs.getString("ToCity"));
                temp.setTime(rs.getString("DispatchTime"));
                temp.setTravelDuration(rs.getString("ArrivalTime"));
                temp.setStationName(rs.getString("StationName"));
                temp.setTicketPrice(rs.getDouble("TicketPrice"));
                temp.setDescription(rs.getString("Description"));
                lbdao.add(temp);
                b=true;
            }
            dao.setBdaoal(lbdao);
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return b;
    }
    public boolean deldata(BusDAO dao){
        boolean b=false;
        
        String sql = "DELETE FROM busDetails WHERE BusId=?";
        Connection con=GetConnection.getConnection();
        
        try {
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setInt(1, dao.getBusid());
            int c=preparedStatement.executeUpdate();
            if(c>0){
                System.out.println("Ho gaya bhai bus ka data deleate");
                b=true;
            }
            else{
                System.out.println("Koi Galti Hai Bhai");
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        
        return b;
    }
    public boolean updateData(BusDAO dao){
        boolean b=false;
        String sql = "UPDATE busdetails SET BusName=?, FromCity=?, ToCity=?, DispatchTime=?, ArrivalTime=?, StationName=?, TicketPrice=?, Description=?, BusNo=? WHERE BusId=?";
        Connection con=GetConnection.getConnection();
        try{
        PreparedStatement preparedStatement = con.prepareStatement(sql);

        // Set parameters
        preparedStatement.setString(1, dao.getBusName());
        preparedStatement.setString(2, dao.getFromCity());
        preparedStatement.setString(3, dao.getToCity());
        preparedStatement.setString(4, dao.getTime());
        preparedStatement.setString(5, dao.getTravelDuration()); // Assuming this is ArrivalTime
        preparedStatement.setString(6, dao.getStationName());
        preparedStatement.setDouble(7, dao.getTicketPrice());
        preparedStatement.setString(8, dao.getDescription());
        preparedStatement.setString(9, dao.getBusNo());
        preparedStatement.setInt(10, dao.getBusid());

        // Execute update
        int rowsAffected = preparedStatement.executeUpdate();

        // Check if the update was successful
        b = (rowsAffected > 0);
    } catch (SQLException e) {
            System.out.println(e);
    }
        
        return b;
    }
    public boolean showAllBus(BusDAO bdao){
        boolean b=false;
        ArrayList<BusDAO> lbdao=new ArrayList<BusDAO>();
        String sql="select * from busdetails";
        Connection con=GetConnection.getConnection();
        try {
            PreparedStatement pr=con.prepareStatement(sql);
            ResultSet rs = pr.executeQuery();
            
            while(rs.next()){
                BusDAO temp=new BusDAO();
                temp.setBusName(rs.getString("BusName"));
                temp.setBusNo(rs.getString("BusNo"));
                temp.setBusid(rs.getInt("BusId"));
                temp.setFromCity(rs.getString("FromCity"));
                temp.setToCity(rs.getString("ToCity"));
                temp.setTime(rs.getString("DispatchTime"));
                temp.setTravelDuration(rs.getString("ArrivalTime"));
                temp.setStationName(rs.getString("StationName"));
                temp.setTicketPrice(rs.getDouble("TicketPrice"));
                temp.setDescription(rs.getString("Description"));
                temp.setSeat(rs.getInt("seat"));
                lbdao.add(temp);
                b=true;
            }
            bdao.setBdaoal(lbdao);
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return b;
    }
     public boolean searchBus(BusDAO bdao) {
    boolean b = false;
    System.out.println("searchBus");
    ArrayList<BusDAO> lbdao = new ArrayList<>();

    String sql = "SELECT * FROM busdetails WHERE FromCity LIKE ? OR ToCity LIKE ?";
    try (Connection con = GetConnection.getConnection();
         PreparedStatement pr = con.prepareStatement(sql)) {
        pr.setString(1, bdao.getFromCity());
        pr.setString(2, bdao.getToCity());
        ResultSet rs = pr.executeQuery();
            while (rs.next()) {
                BusDAO temp = new BusDAO();
                temp.setBusName(rs.getString("BusName"));
                temp.setBusNo(rs.getString("BusNo"));
                temp.setBusid(rs.getInt("BusId"));
                temp.setFromCity(rs.getString("FromCity"));
                temp.setToCity(rs.getString("ToCity"));
                temp.setTime(rs.getString("DispatchTime"));
                temp.setTravelDuration(rs.getString("ArrivalTime"));
                temp.setStationName(rs.getString("StationName"));
                temp.setTicketPrice(rs.getDouble("TicketPrice"));
                temp.setDescription(rs.getString("Description"));
                temp.setSeat(rs.getInt("seat"));
                lbdao.add(temp);
                b = true;
            }
        
        bdao.setBdaoal(lbdao);
    } catch (Exception ex) {
        System.out.println("Error executing SQL: " + ex.getMessage());
        // Log the exception or throw a custom exception
    }
    return b;
}

}
