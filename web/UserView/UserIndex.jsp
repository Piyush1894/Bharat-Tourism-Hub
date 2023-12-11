<%-- 
    Document   : UserIndex
    Created on : Dec 1, 2023, 12:24:22 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.bth.model.*" %>
<!DOCTYPE html>
<%
      response.setHeader("Cache-Control", "no-cache, no-store");
        response.setHeader("Pragma", "no-cache");
      UserDAO udao=(UserDAO)session.getAttribute("udao");
      if(udao!=null){
%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Bharat Tourism Hub</title>
        <!--<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">-->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="assets/css/feathericon.min.css">
        <link rel="stylehseet" href="https://cdn.oesmith.co.uk/morris-0.5.1.css">
        <link rel="stylesheet" href="assets/plugins/morris/morris.css">
        <link rel="stylesheet" href="assets/css/style.css">
    </head>

    <body>
        <div class="main-wrapper">
            <div class="header">
                <div class="header-left">
                    <a href="UserIndex.jsp" class="logo"> <img style="border-radius: 9px" src="https://i.ibb.co/yPdF9b0/logo2.png" width="50" height="70" alt=""></a>
                    <a href="UserIndex.jsp" class="logo logo-small"> <img src="https://i.ibb.co/qd6FYcf/logo2.png" alt="" width="30" height="30"> </a>
                </div>
                <a href="javascript:void(0);" id="toggle_btn"> <i class="fe fe-text-align-left"></i> </a>
                <a class="mobile_btn" id="mobile_btn"> <i class="fas fa-bars"></i> </a>
                <ul class="nav user-menu">
                    <li class="nav-item dropdown noti-dropdown">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"> <i class="fe fe-bell"></i>  </a>
                    </li>
                    <li class="nav-item dropdown has-arrow">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"> <span class="user-img"><img class="rounded-circle" src="<%=udao.getImage()%>" width="31" alt="Soeng Souy"></span> </a>
                        <div class="dropdown-menu">
                            <div class="user-header">
                                <div class="avatar avatar-sm"> <img src="<%=udao.getImage()%>" alt="User Image" class="avatar-img rounded-circle"> </div>
                                <div class="user-text">
                                    <h6><%=udao.getName()%></h6>
                                    <p class="text-muted mb-0">User</p>
                                </div>
                            </div> <a class="dropdown-item" href="profile.jsp">My Profile</a> <a class="dropdown-item" href="settings.html">Account Settings</a> <a class="dropdown-item" href="../LogOutUser">Logout</a> </div>
                    </li>
                </ul>
                <div class="top-nav-search">
                    <form>
                        <input type="text" class="form-control" placeholder="Search here">
                        <button class="btn" type="submit"><i class="fas fa-search"></i></button>
                    </form>
                </div>
            </div>
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                    <div id="sidebar-menu" class="sidebar-menu">
                        <ul>
                            <li class="active"> <a href="UserIndex.jsp"><i class="fas fa-tachometer-alt"></i> <span>Dashboard</span></a> </li>
                            <li class="list-divider"></li>
                            <li class="submenu"> <a href="#"><i class="fas fa-suitcase"></i> <span>Booking</span> <span class="menu-arrow"></span></a>
                                <ul class="submenu_class" style="display: none;">
                                    <li><a href="Hotel.html">Hotel</a></li>
                                    <li><a href="../ShowAllBus">Ticket</a></li>
                                    <li><a href="Packege.html">Packege</a></li>
                                </ul>
                            </li>
                            <li> <a href="settings.html"><i class="fas fa-cog"></i> <span>Settings</span></a> </li>
                            <li class="list-divider"></li>
                            <li class="menu-title mt-3"> <span>EXTRAS</span> </li>
                            <li class="submenu"> <a href="#"><i class="fas fa-columns"></i> <span> Pages </span> <span class="menu-arrow"></span></a>
                                <ul class="submenu_class" style="display: none;">
                                    <li><a href="UserLogin.jsp">Login </a></li>
                                    <li><a href="UserRegistration.jsp">Register </a></li>
                                    <li><a href="#">Forgot Password </a></li>
                                    <li><a href="#">Change Password </a></li>
                                    <li><a href="lock-screen.html">Lockscreen </a></li>
                                    <li><a href="profile.jsp">Profile </a></li>
                                    <li><a href="#">Gallery </a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <script data-cfasync="false" src="../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
        <script src="assets/js/jquery-3.5.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="assets/plugins/raphael/raphael.min.js"></script>
        <script src="assets/plugins/morris/morris.min.js"></script>
        <script src="assets/js/chart.morris.js"></script>
        <script src="assets/js/script.js"></script>
    </body>
<%
    }
else{
    response.sendRedirect("UserLogin.jsp");
}
%>
</html>