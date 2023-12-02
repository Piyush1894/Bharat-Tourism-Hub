<%-- 
    Document   : BusTicket
    Created on : Dec 2, 2023, 10:28:33 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.bth.userModel.*" %>
<!DOCTYPE html>
<%
      UserDAO udao=(UserDAO)session.getAttribute("udao");
%>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Bharat Tourism Hub</title>
        <!--<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">-->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/css/feathericon.min.css">
        <link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">
        <link rel="stylesheet" href="assets/plugins/morris/morris.css">
        <link rel="stylesheet" href="assets/css/style.css"> </head>

    <body>
        <div class="main-wrapper">
            <div class="header">
                <div class="header-left">
                    <a href="UserIndex.jsp" class="logo"> <img src="<%=udao.getImage()%>" width="50" height="70" alt="logo"> <span class="logoclass">USER</span> </a>
                    <a href="UserIndex.jsp" class="logo logo-small"> <img src="assets/img/hotel_logo.png" alt="Logo" width="30" height="30"> </a>
                </div>
                <a href="javascript:void(0);" id="toggle_btn"> <i class="fe fe-text-align-left"></i> </a>
                <a class="mobile_btn" id="mobile_btn"> <i class="fas fa-bars"></i> </a>
                <ul class="nav user-menu">
                    <li class="nav-item dropdown noti-dropdown">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"> <i class="fe fe-bell"></i> <span class="badge badge-pill">3</span> </a>
                    </li>
                    <li class="nav-item dropdown has-arrow">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"> <span class="user-img"><img class="rounded-circle" src="<%=udao.getImage()%>" width="31" alt="Soeng Souy"></span> </a>
                        <div class="dropdown-menu">
                            <div class="user-header">
                                <div class="avatar avatar-sm"> <img src="<%=udao.getImage()%>" alt="User Image" class="avatar-img rounded-circle"> </div>
                                <div class="user-text">
                                    <h6><%=udao.getName()%></h6>
                                    <p class="text-muted mb-0"></p>
                                </div>
                            </div> <a class="dropdown-item" href="#">My Profile</a> <a class="dropdown-item" href="settings.html">Account Settings</a> <a class="dropdown-item" href="login.html">Logout</a> </div>
                    </li>
                </ul>
            </div>
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                    <div id="sidebar-menu" class="sidebar-menu">
                        <ul>
                            <li> <a href="UserIndex.jsp"><i class="fas fa-tachometer-alt"></i> <span>Dashboard</span></a> </li>
                            <li class="list-divider"></li>
                            <li class="submenu"> <a href="#"><i class="fas fa-suitcase"></i> <span> Booking </span> <span class="menu-arrow"></span></a>
                                <ul class="submenu_class" style="display: none;">
                                    <li><a href="Hotel.html">Hotel</a></li>
                                    <li><a href="BusTicket.jsp">Ticket</a></li>
                                    <li><a href="Packege.html">Packege</a></li>
                                </ul>
                            </li>
                            <li class="submenu"> <a href="#"><i class="fas fa-key"></i> <span> Rooms </span> <span class="menu-arrow"></span></a>
                                <ul class="submenu_class" style="display: none;">
                                    <li><a href="#">All Rooms </a></li>
                                    <li><a href="#"> Edit Rooms </a></li>
                                    <li><a href="#"> Add Rooms </a></li>
                                </ul>
                            </li>
                            <li> <a href="#"><i class="fas fa-cog"></i> <span>Settings</span></a> </li>
                            <li class="submenu"> <a href="#"><i class="fas fa-share-alt"></i> <span> Multi Level </span> <span class="menu-arrow"></span></a>
                                <ul class="submenu_class" style="display: none;">
                                    <li><a href="">Level 1 </a></li>
                                    <li><a href="">Level 2 </a></li>
                                </ul>
                            </li>
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
                                    <h4 class="card-title float-left mt-2">All Bus</h4> <a href="add-staff.html" class="btn btn-primary float-right veiwbutton">Add Staff</a> </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <form>
                                <div class="row formtype">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>From City</label>
                                            <input class="form-control" type="text" value="" name="fromcity"> </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>To City</label>
                                            <input class="form-control" type="text" value="" name="tocity"> </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Type</label>
                                            <select class="form-control" id="sel1" name="type">
                                                <option>AC</option>
                                                <option>Non-AC</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Search</label> <a href="#" class="btn btn-success btn-block mt-0 search_button"> Search </a> </div>
                                    </div>
                                </div>
                            </form>
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
                                                    <th>Bus No</th>
                                                    <th>Bus Name</th>
                                                    <th>From City</th>
                                                    <th>To City</th>
                                                    <th>Travel Time</th>
                                                    <th>Station Name</th>
                                                    <th>Ticket Price</th>
                                                    <th>Description</th>
                                                    <th>Status</th>
                                                    <th class="text-right">Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>001</td>
                                                    <td>Golu</td>
                                                    <td>Indore</td>
                                                    <td>Bhopal</td>
                                                    <td>4:00</td>
                                                    <td>Sarvate</td>
                                                    <td>400</td>
                                                     <td>Indore TO Bhopal</td>
                                                    <td>
                                                        <div class="actions"> <a href="#" class="btn btn-sm bg-success-light mr-2">Staff</a> </div>
                                                    </td>
                                                    <td>
                                                        <div class="actions"> <a href="#" class="btn btn-sm bg-success-light mr-2">Edit</a> </div>
                                                    </td>
                                                </tr>


                                            </tbody>
                                        </table>
                                    </div>
                                </div>
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
        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="assets/plugins/raphael/raphael.min.js"></script>
        <script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="assets/plugins/datatables/datatables.min.js"></script>
        <script src="assets/js/script.js"></script>
    </body>

</html>
