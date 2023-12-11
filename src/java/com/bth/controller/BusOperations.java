/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.bth.controller;
import com.bth.model.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author user
 */
public class BusOperations extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
                 response.setHeader("Cache-Control", "no-cache, no-store");
        response.setHeader("Pragma", "no-cache");
        try (PrintWriter out = response.getWriter()) {
            String type = request.getParameter("type");
            
            if (type != null) {
                if (type.equals("edit")) {
                    String busName = request.getParameter("name");  // Bus Name
                    String busNo = request.getParameter("busno");  // Bus No
                    String fromCity = request.getParameter("fcity");  // From City
                    String toCity = request.getParameter("tcity");  // To City
                    String departureTime = request.getParameter("dtime");  // Departure Time
                    String arrivalTime = request.getParameter("atime");  // Arrival Time
                    String stationName = request.getParameter("sname");  // Station Name
                    String ticketPriceStr = request.getParameter("tprice");  // Ticket Price
                    double ticketPrice = Double.parseDouble(ticketPriceStr);  // Convert String to double
                    String description = request.getParameter("desc");  // Description
                    String busId = request.getParameter("busid");  // Bus ID
                    BusDAO bdao = new BusDAO();
                    bdao.setBusName(busName);
                    bdao.setBusNo(busNo);
                    bdao.setFromCity(fromCity);
                    bdao.setToCity(toCity);
                    bdao.setTime(departureTime);
                    bdao.setTravelDuration(arrivalTime);
                    bdao.setStationName(stationName);
                    bdao.setTicketPrice(ticketPrice);
                    bdao.setDescription(description);
                    bdao.setBusid(Integer.parseInt(busId));
                    BusDTO dto=new BusDTO();
                    boolean b=dto.updateData(bdao);
                    if(b){
                        response.sendRedirect("BusShowController");
                    }
                    else{
                        response.sendRedirect("BusShowController");
                    }
                    
                }
                if(type.equals("del")){
                    String busid=request.getParameter("busid");
                    BusDAO bdao = new BusDAO();
                    bdao.setBusid(Integer.parseInt(busid));
                    BusDTO bdto=new BusDTO();
                    
                    boolean b=bdto.deldata(bdao);
                    
                    if(b){
                        response.sendRedirect("BusShowController");
                    }
                    else{
                        
                    }
                }
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
