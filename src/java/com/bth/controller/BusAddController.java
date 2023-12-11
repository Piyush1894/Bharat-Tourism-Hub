/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.bth.controller;

import com.bth.model.BusDAO;
import com.bth.model.BusDTO;
import com.bth.model.VendorDAO;
import java.io.IOException;
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
public class BusAddController extends HttpServlet {

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
            String busNo = request.getParameter("busNo");
            String busName = request.getParameter("busName");
            String fromCity = request.getParameter("FromCity");
            String toCity = request.getParameter("ToCity");

            // Convert String to java.sql.Date

            HttpSession session=request.getSession();
            VendorDAO vdao=(VendorDAO)session.getAttribute("bvdao");
            String timeStr = request.getParameter("time");
            
            System.out.println(vdao.getVendorId());

           
            
            
            String travelDuration = request.getParameter("travelDuration");
            String stationNameValue = request.getParameter("stationName"); // Corrected variable name

            // Convert String to double for ticketPrice
            String ticketPriceStr = request.getParameter("ticketPrice");
            double ticketPrice = Double.parseDouble(ticketPriceStr);

            String description = request.getParameter("descraption");
            BusDAO busDetailsDAO = new BusDAO();
            busDetailsDAO.setVendorId(vdao.getVendorId());
            busDetailsDAO.setBusNo(busNo);
            busDetailsDAO.setBusName(busName);
            busDetailsDAO.setFromCity(fromCity);
            busDetailsDAO.setToCity(toCity);
            busDetailsDAO.setTime(timeStr);
            busDetailsDAO.setTravelDuration(travelDuration);
            busDetailsDAO.setStationName(stationNameValue);
            busDetailsDAO.setTicketPrice(ticketPrice);
            busDetailsDAO.setDescription(description);
            
            BusDTO bdto=new BusDTO();
            boolean b=bdto.addBus(busDetailsDAO);
            if(b){
                System.out.println("Ho gai bhai Add");
                response.sendRedirect("BusView1/AddBus.jsp");
            }
            else{
                System.out.println("Bhai deak koi Exception hai");
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
