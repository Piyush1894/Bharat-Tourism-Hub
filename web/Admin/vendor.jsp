<%-- 
    Document   : vendor
    Created on : 4 Dec, 2023, 11:32:08 AM
    Author     : Emerge Copmuters
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="com.bth.model.*" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Admin Dashboard</title>
        <link rel="shortcut icon" type="image/x-icon" href="">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">
        <link rel="stylesheet" href="assets/css/feathericon.min.css">
        <link rel="stylesheet" href="assets/plugins/morris/morris.css">
        <link rel="stylesheet" href="assets/css/style.css">
    </head>

    <body>
         <%
           AdminDTO adto=new AdminDTO();
           List<VendorDAO> lvdao=adto.allVendor();
        %>
        <div class="main-wrapper">
            <div class="header">
                <div class="header-left">
                    <a href="index.jsp" class="logo"> <img src="assets/img/logo2.png" width="50" height="70"
                                                           alt="logo"> <span class="logoclass">ADMIN</span> </a>
                    <a href="index.jsp" class="logo logo-small"> <img src="assets/img/logo2.png" alt="Logo" width="30"
                                                                      height="30"> </a>
                </div>
                <a href="javascript:void(0);" id="toggle_btn"> <i class="fe fe-text-align-left"></i> </a>
                <a class="mobile_btn" id="mobile_btn"> <i class="fas fa-bars"></i> </a>
                <ul class="nav user-menu">

                    <li class="nav-item dropdown has-arrow">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"> <span class="user-img"><img
                                    class="rounded-circle" src="assets/img/profiles/avatar-01.jpg" width="31"
                                    alt="Soeng Souy"></span> </a>
                        <div class="dropdown-menu">
                            <div class="user-header">
                                <div class="avatar avatar-sm"> <img src="assets/img/profiles/avatar-01.jpg" alt="User Image"
                                                                    class="avatar-img rounded-circle"> </div>
                                <div class="user-text">
                                    <h6>Admin Name</h6>
                                    <p class="text-muted mb-0">Administrator</p>
                                </div>
                            </div> <a class="dropdown-item" href="profile.jsp">My Profile</a><a class="dropdown-item"
                                                                                                href="Login.jsp">Logout</a>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                    <div id="sidebar-menu" class="sidebar-menu">
                        <ul>
                            <li class="active"> <a href="index.jsp"><i class="fas fa-tachometer-alt"></i>
                                    <span>Dashboard</span></a> </li>
                            <li class="list-divider"></li>
                            <li class="submenu"> <a href="#"><i class="fas fa-user"></i> <span> Users </span> <span
                                        class="menu-arrow"></span></a>
                                <ul class="submenu_class" style="display: none;">
                                    <li><a href="all-users.jsp"> All Users </a></li>
                                    <!-- <li><a href="edit-booking.jsp"> Edit Users </a></li>
                                    <li><a href="add-booking.jsp"> Add Users </a></li> -->
                                </ul>
                            </li>
                            <li class="submenu"> <a href="#"><i class="fas fa-user"></i> <span>Vendor </span> <span
                                        class="menu-arrow"></span></a>
                                <ul class="submenu_class" style="display: none;">
                                    <li><a href="vendor.jsp"> All Vendor </a></li>
                                    <li><a href="hotelvender.jsp"> Hotel Vendor </a></li>
                                    <li><a href="busvendor.jsp"> Bus Vendor </a></li>
                                </ul>
                            </li>
                            <li class="submenu"> <a href="#"><i class="fas fa-suitcase"></i> <span> Packages </span> <span
                                        class="menu-arrow"></span></a>
                                <ul class="submenu_class" style="display: none;">
                                    <li><a href="all-rooms.jsp">All Packages </a></li>
                                    <li><a href="edit-room.jsp"> Edit Packages </a></li>
                                    <li><a href="add-room.jsp"> Add Packages </a></li>
                                </ul>
                            </li>

                            <li> <a href="calendar.jsp"><i class="fas fa-calendar-alt"></i> <span>Calendar</span></a> </li>

                            <li> <a href="reviews.jsp"><i class="far fa-bell"></i> <span>Reviews</span></a> </li>
                            <li class="submenu"> <a href="#"><i class="fe fe-table"></i> <span> Requests </span> <span
                                        class="menu-arrow"></span></a>
                                <ul class="submenu_class" style="display: none;">
                                    <li><a href="expense-reports.jsp">SignUp Request </a></li>
                                    <li><a href="reports.jsp">Problem Report </a></li>
                                </ul>
                            </li>
                            <li> <a href="profile.jsp"><i class="fas fa-cog"></i> <span>Settings</span></a> </li>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="page-wrapper">
                <div class="content container-fluid">
                    <div class="page-header">
                        <div class="row align-items-center">
                            <div class="col">
                                <div class="mt-5">
                                    <h4 class="card-title float-left mt-2">Vendor</h4> <a href="add-customer.jsp"
                                                                                          class="btn btn-primary float-right veiwbutton">Add Vendors</a>
                                </div>
                            </div>
                        </div>
                    </div>
                         <div class="row">
                        <div class="col-sm-12">
                            <div class="card card-table">
                                <div class="card-body booking_card">
                                    <div class="table-responsive">
                                        <table class="datatable table table-stripped table table-hover table-center mb-0">
                                            <thead>
                                                <tr>
                                                    <th>User ID</th>
                                                    <th>Name</th>
                                                    <th>Email</th>
                                                    <th>Password</th>
                                                    <th>Mobile</th>
                                                    <th>Status</th>
                                                    <th>Address</th>
                                                    <th>Action</th>
                                                    <!-- Add more headers as needed -->
                                                   
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    for(VendorDAO u : lvdao) {
                                                %>
                                                <tr>
                                                    <td></td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="profile.jsp"><%= u.getName() %></a>
                                                        </h2>
                                                    </td>
                                                    <td><%= u.getEmail() %></td>
                                                    <td><%= u.getPassword() %></td>
                                                    <td><%= u.getMobile() %></td>
                                                    <td><%= u.getStatus() %></td>
                                                    <td><%= u.getType() %></td>
                                                    <!-- Add more cells as needed -->
                                                    <td><button class="btn btn-denger">block</button></td>
                                                </tr>
                                                <%
                                                    }
                                                %>
                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>   
        </div>
        <script data-cfasync="false" src="../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
        <script src="assets/js/jquery-3.5.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="assets/plugins/datatables/datatables.min.js"></script>
        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="assets/plugins/raphael/raphael.min.js"></script>
        <script src="assets/js/script.js"></script>
    </body>

</html>
