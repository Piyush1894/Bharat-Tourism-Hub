/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.bth.controller;

import com.bth.model.BookingBAO;
import com.bth.model.BookingDTO;
import com.bth.model.BusDAO;
import com.bth.model.UserDAO;
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
public class BookBus extends HttpServlet {

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
            String id = request.getParameter("id");
            String seats = request.getParameter("seats");
            String dis = request.getParameter("dis");
            HttpSession session = request.getSession();
            UserDAO udao = (UserDAO) session.getAttribute("udao");
            System.out.println(udao.getId());
            BookingBAO bao = new BookingBAO();
            BookingDTO dto = new BookingDTO();
            bao.setDeparturedate(dis);
            bao.setSeat(Integer.parseInt(seats));
            bao.setBookingstatus("pending");
            bao.setBusid(Integer.parseInt(id));
            int b = Integer.parseInt(id);
            System.out.println("Vendor : " + dto.getVendor(b));
            bao.setVendorId(Integer.toString(dto.getVendor(b)));
            bao.setId(udao.getId());
            System.out.println("Departure Date: " + bao.getDeparturedate());
            System.out.println("Booking Status: " + bao.getBookingstatus());
            System.out.println("Bus ID: " + bao.getBusid());
            System.out.println("User ID: " + bao.getId());
            if (dto.addbooking(bao)) {
                System.out.println("Ho gaya bhai booking");
                out.println("<script>alert('Bus Request Send'); window.location='UserView/BusTicket.jsp';</script>");
    out.println("<script>window.onunload = function() { window.location='UserView/UserIndex.jsp'; }</script>");
            }else {
                    System.out.println("Nahi Hua Bhai");
                    out.println("<script>alert('This Bus You already booked'); window.location='UserView/BusTicket.jsp';</script>");
                    out.println("<script>window.onunload = function() { window.location='UserView/BusTicket.jsp'; }</script>");
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
