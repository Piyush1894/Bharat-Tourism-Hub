/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bth.model;

import com.bth.services.GetConnection;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author user
 */
public class BookingDTO {

    public boolean addbooking(BookingBAO dao) {
        boolean b = false;

        Connection con = null;

        try {
            con = GetConnection.getConnection();
            System.out.println(dao.getId());
            if (con != null) {
                String sql = "INSERT INTO bookings(userid,busid ,departuredate,num_seats,bookingstatus,vendorid) VALUES (?, ?, ?, ?, ?, ?)";

                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setInt(1, dao.getId());
                    ps.setInt(2, dao.getBusid());
                    ps.setString(3, dao.getDeparturedate());

                    ps.setInt(4, dao.getSeat());
                    ps.setString(5, dao.getBookingstatus());
                    ps.setInt(6, Integer.parseInt(dao.getVendorId()));
                    System.out.println("abhishek");
                    if (ps.executeUpdate() > 0) {
                        b = true;
                        
                    }
                }
            }

        } catch (SQLException e) {
            System.out.println(e);
            // Log the exception properly using a logger
        }
        return b;

    }

    public boolean featchBusDetails(BookingBAO dao) {
        ArrayList<BookingBAO> lbdao = new ArrayList<BookingBAO>();
        boolean b = false;
        String sql = "select * from bookings where vendorid=? AND bookingstatus='approve'";
        Connection con = GetConnection.getConnection();
        try {
            PreparedStatement pr = con.prepareStatement(sql);
            pr.setInt(1, Integer.parseInt(dao.getVendorId()));
            ResultSet rs = pr.executeQuery();

            while (rs.next()) {
                BookingBAO temp = new BookingBAO();
                temp.setId(rs.getInt("userid"));
                temp.setBusid(rs.getInt("busid"));
                temp.setDeparturedate(rs.getString("departuredate"));
                temp.setBookingdate(rs.getString("bookingdate"));
                temp.setNum_seats(Integer.toString(rs.getInt("num_seats")));
                temp.setBookid(rs.getInt("booking_id"));
                temp.setBookingstatus(rs.getString("bookingstatus"));
                this.data(rs.getInt("userid"), temp);
                this.busdata(rs.getInt("busid"), temp);
                b = true;
                lbdao.add(temp);
            }
            dao.setAlbb(lbdao);
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return b;
    }

    public void data(int id, BookingBAO udao) {
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
                System.out.println(e);
            }
        }

    }

    public void busdata(int id, BookingBAO temp) {
        Connection con = null;

        con = con = GetConnection.getConnection(); // No need to cast to (Connection)

        if (con != null) {
            String sql = "SELECT * FROM busdetails WHERE busid=?";
            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, id);
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
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
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
        }

    }

    public int getVendor(int a) {
        int vendorid = 0;
        Connection con = null;

        con = con = GetConnection.getConnection(); // No need to cast to (Connection)

        if (con != null) {
            String sql = "SELECT * FROM busdetails WHERE busid=?";
            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, a);
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    return rs.getInt("vendorid");
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
        }

        return vendorid;
    }
    public boolean approval(BookingBAO dao){
        boolean b=false;
        
        Connection con = null;

        try {
            con = con = GetConnection.getConnection();
            if (con != null) {
                String sql = "update bookings set bookingstatus='approve' where booking_id=?";
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setInt(1, dao.getBookid());
                    if (ps.executeUpdate() > 0) {
                        System.out.println("Ho gaya bhai book aaproval");
                        b=true;
                    }
                }
            }

        } catch (SQLException e) {
            System.out.println(e);
            // Log the exception properly using a logger
        }
        
        return b;
    }
    public boolean featchBusDetailsreq(BookingBAO dao) {
        ArrayList<BookingBAO> lbdao = new ArrayList<BookingBAO>();
        boolean b = false;
        String sql = "select * from bookings where vendorid=? AND bookingstatus='pending'";
        Connection con = GetConnection.getConnection();
        try {
            PreparedStatement pr = con.prepareStatement(sql);
            pr.setInt(1, Integer.parseInt(dao.getVendorId()));
            ResultSet rs = pr.executeQuery();

            while (rs.next()) {
                BookingBAO temp = new BookingBAO();
                temp.setId(rs.getInt("userid"));
                temp.setBusid(rs.getInt("busid"));
                temp.setDeparturedate(rs.getString("departuredate"));
                temp.setBookingdate(rs.getString("bookingdate"));
                temp.setNum_seats(Integer.toString(rs.getInt("num_seats")));
                temp.setBookid(rs.getInt("booking_id"));
                temp.setBookingstatus(rs.getString("bookingstatus"));
                this.data(rs.getInt("userid"), temp);
                this.busdata(rs.getInt("busid"), temp);
                b = true;
                lbdao.add(temp);
            }
            dao.setAlbb(lbdao);
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return b;
    }
}
