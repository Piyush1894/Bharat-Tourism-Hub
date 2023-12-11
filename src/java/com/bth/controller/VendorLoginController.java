/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.bth.controller;

import com.bth.model.VendorDAO;
import com.bth.model.VendorDTO;
import com.bth.services.CheckDAta;
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
public class VendorLoginController extends HttpServlet {

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
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            VendorDAO vdao = new VendorDAO();
            vdao.setPassword(password);
            vdao.setEmail(email);
            VendorDTO vdto = new VendorDTO();
            boolean b = vdto.vendorLogin(vdao);
            if (b) {
                if (vdao.getStatus().equals("unblock")) {
                    if (vdao.getType().equals("Bus")) {
                        System.out.println("Good Yarr");
                        HttpSession session = request.getSession();
                        session.setAttribute("bvdao", vdao);
                        System.out.println(vdao.getVendorId());
                        HttpSession s = request.getSession();
                        s.setAttribute("loginvendor", null);
                        response.sendRedirect("BusView1/BusVendorDashboard.jsp");
                        return;
                    } else {
                        System.out.println("Good Yarr");
                    }
                } else {
                    CheckDAta da = new CheckDAta();
                    da.setBlock("block");
                    HttpSession s = request.getSession();
                    s.setAttribute("loginvendor", da);
                    System.out.println("Tu Block Hai Bhai");
                    response.sendRedirect("VendorView/VendorLogin.jsp");
                    return;
                }
            } else {
                CheckDAta da = new CheckDAta();
                if (CheckDAta.checkData("vendor", "email", vdao.getEmail())) {
                    System.out.println("Email Tho sahi hai");
                    if (CheckDAta.checkData("vendor", "password", vdao.getEmail())) {
                        System.out.println("Password bhi sahi hai");
                    } else {
                        da.setPass("wrong");
                        HttpSession s = request.getSession();
                        s.setAttribute("loginvendor", da);
                        System.out.println("Par Password galat hai");
                        response.sendRedirect("VendorView/VendorLogin.jsp");
                        return;
                    }
                } else {
                    da.setEmail("wrong");
                    HttpSession s = request.getSession();
                    s.setAttribute("loginvendor", da);
                    System.out.println("Bhai Email Tho sahi dal");
                    response.sendRedirect("VendorView/VendorLogin.jsp");
                    return;
                }

                response.sendRedirect("VendorView/VendorLogin.jsp");

                System.out.println("Koi na");
                return;
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
