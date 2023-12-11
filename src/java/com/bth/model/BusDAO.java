/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bth.model;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;
import java.util.ArrayList;

/**
 *
 * @author user
 */
public class BusDAO extends UserDAO implements Serializable{

    private ArrayList<BusDAO> bdaoal = new ArrayList<BusDAO>();
    private String busNo;
    private String busName;
    private String fromCity;
    private String toCity;
    private String time;
    private String travelDuration;
    private String stationName;
    private double ticketPrice;
    private String description;
    private int seat;

    public int getSeat() {
        return seat;
    }

    @Override
    public void setAddress(String address) {
        super.setAddress(address); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public String getAddress() {
        return super.getAddress(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public void setStatus(String status) {
        super.setStatus(status); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public String getStatus() {
        return super.getStatus(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public void setImage(String image) {
        super.setImage(image); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public String getImage() {
        return super.getImage(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public void setMobile(String mobile) {
        super.setMobile(mobile); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public String getMobile() {
        return super.getMobile(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public void setPassword(String password) {
        super.setPassword(password); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public String getPassword() {
        return super.getPassword(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public void setEmail(String email) {
        super.setEmail(email); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public String getEmail() {
        return super.getEmail(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public void setName(String name) {
        super.setName(name); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public String getName() {
        return super.getName(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public void setId(int id) {
        super.setId(id); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    public int getId() {
        return super.getId(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    public void setSeat(int seat) {
        this.seat = seat;
    }

    private Date date;

    public int getBusid() {
        return busid;
    }

    public void setBusid(int busid) {
        this.busid = busid;
    }
    private String vendorId;
    private int busid;

    public BusDAO(String busNo, String busName, String fromCity, String toCity, Date date, String time, String travelDuration, String stationName, double ticketPrice, String description, String vendorId, int busid) {
        this.busNo = busNo;
        this.busName = busName;
        this.fromCity = fromCity;
        this.toCity = toCity;
        this.date = date;
        this.time = time;
        this.travelDuration = travelDuration;
        this.stationName = stationName;
        this.ticketPrice = ticketPrice;
        this.description = description;
        this.vendorId = vendorId;
        this.busid = busid;
    }

    public String getVendorId() {
        return vendorId;
    }

    public void setVendorId(String vendorId) {
        this.vendorId = vendorId;
    }

    public String getBusNo() {
        return busNo;
    }

    public BusDAO() {
    }

    public void setBusNo(String busNo) {
        this.busNo = busNo;
    }

    public String getBusName() {
        return busName;
    }

    public void setBusName(String busName) {
        this.busName = busName;
    }

    public String getFromCity() {
        return fromCity;
    }

    public void setFromCity(String fromCity) {
        this.fromCity = fromCity;
    }

    public String getToCity() {
        return toCity;
    }

    public void setToCity(String toCity) {
        this.toCity = toCity;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getTravelDuration() {
        return travelDuration;
    }

    public void setTravelDuration(String travelDuration) {
        this.travelDuration = travelDuration;
    }

    public String getStationName() {
        return stationName;
    }

    public void setStationName(String stationName) {
        this.stationName = stationName;
    }

    public double getTicketPrice() {
        return ticketPrice;
    }

    public void setTicketPrice(double ticketPrice) {
        this.ticketPrice = ticketPrice;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    // Constructors, getters, and setters
    // Example constructor
    public BusDAO(String busNo, String busName, String fromCity, String toCity, Date date, String time, String travelDuration, String stationName, double ticketPrice, String description, String vendorId) {
        this.busNo = busNo;
        this.busName = busName;
        this.fromCity = fromCity;
        this.toCity = toCity;
        this.date = date;
        this.time = time;
        this.travelDuration = travelDuration;
        this.stationName = stationName;
        this.ticketPrice = ticketPrice;
        this.description = description;
        this.vendorId = vendorId;
    }

    public ArrayList<BusDAO> getBdaoal() {
        return bdaoal;
    }

    public void setBdaoal(ArrayList<BusDAO> bdaoal) {
        this.bdaoal = bdaoal;
    }

}
