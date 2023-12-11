<%-- 
    Document   : profile
    Created on : Dec 1, 2023, 2:03:30 PM
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
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/css/feathericon.min.css">
        <link rel="stylesheet" href="assets/plugins/morris/morris.css">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-datetimepicker.min.css">
        <link rel="stylesheet" href="assets/css/style.css"> </head>
    <body>
        <div class="main-wrapper">
            <div class="header">
                <div class="header-left">
                    <a href="UserIndex.jsp" class="logo"> <img src="<%=udao.getImage()%>" width="50" height="70" alt="logo"> <span class="logoclass">USER</span> </a>
                    <!--<a href="UserIndex.jsp" class="logo logo-small"> <img src="assets/img/hotel_logo.png" alt="Logo" width="30" height="30"> </a>-->
                </div>
                <a href="javascript:void(0);" id="toggle_btn"> <i class="fe fe-text-align-left"></i> </a>
                <a class="mobile_btn" id="mobile_btn"> <i class="fas fa-bars"></i> </a>
                <ul class="nav user-menu">
                    <li class="nav-item dropdown noti-dropdown">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"> <i class="fe fe-bell"></i> <span class="badge badge-pill">3</span> </a>
                    </li>
                    <li class="nav-item dropdown has-arrow">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"> <span class="user-img"><img class="rounded-circle" src="<%=udao.getImage()%>" width="31" alt=""></span> </a>
                        <div class="dropdown-menu">
                            <div class="user-header">
                                <div class="avatar avatar-sm"> <img src="<%=udao.getImage()%>" alt="User Image" class="avatar-img rounded-circle"> </div>
                                <div class="user-text">
                                    <h6><%=udao.getName()%></h6>
                                    <p class="text-muted mb-0"></p>
                                </div>
                            </div> <a class="dropdown-item" href="#">My Profile</a> <a class="dropdown-item" href="#">Account Settings</a> <a class="dropdown-item" href="../LogOutUser">Logout</a> </div>
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
                                    <li><a href="#">Hotel</a></li>
                                    <li><a href="BusTicket.jsp">Ticket</a></li>
                                    <li><a href="#">Packege</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="page-wrapper">
                <div class="content container-fluid">
                    <div class="page-header mt-5">
                        <div class="row">
                            <div class="col">
                                <h3 class="page-title">Profile</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Profile</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="profile-header">
                                <div class="row align-items-center">
                                    <div class="col-auto profile-image">
                                        <a href="#"> <img class="rounded-circle" alt="User Image" src="<%=udao.getImage()%>"> </a>
                                    </div>
                                    <div class="col ml-md-n2 profile-user-info">
                                        <h4 class="user-name mb-3"><%=udao.getName()%></h4>
                                        <h6 class="text-muted mt-1">User</h6>
                                        <div class="user-Location mt-1"><i class="fas fa-map-marker-alt"></i><%=udao.getAddress()%></div>
                                        <!--<div class="about-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>-->
                                    </div>
                                </div>
                            </div>
                            <div class="profile-menu">
                                <ul class="nav nav-tabs nav-tabs-solid">
                                    <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#per_details_tab">About</a> </li>
                                    <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#password_tab">Password</a> </li>
                                </ul>
                            </div>
                            <div class="tab-content profile-tab-cont">
                                <div class="tab-pane fade show active" id="per_details_tab">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="card">
                                                <div class="card-body">
                                                    <h5 class="card-title d-flex justify-content-between">
                                                        <span>Personal Details</span>
                                                        <a class="edit-link" data-toggle="modal" href="#edit_personal_details"><i class="fa fa-edit mr-1"></i>Edit</a>
                                                    </h5>
                                                    <div class="row ">
                                                        <p class="col-sm-3 text-sm-right mb-0 mb-sm-3">Your Id</p>
                                                        <p class="col-sm-9"><%=udao.getId()%></p>
                                                    </div>
                                                    <div class="row ">
                                                        <p class="col-sm-3 text-sm-right mb-0 mb-sm-3">Name</p>
                                                        <p class="col-sm-9"><%=udao.getName()%></p>
                                                    </div>
                                                    <div class="row ">
                                                        <p class="col-sm-3 text-sm-right mb-0 mb-sm-3">Email ID </p>
                                                        <p class="col-sm-9"><%=udao.getEmail()%></p>
                                                    </div>
                                                     <div class="row ">
                                                        <p class="col-sm-3 text-sm-right mb-0 mb-sm-3">Password</p>
                                                        <p class="col-sm-9"><%=udao.getPassword()%></p>
                                                    </div>
                                                    <div class="row">
                                                        <p class="col-sm-3 text-sm-right mb-0 mb-sm-3">Mobile</p>
                                                        <p class="col-sm-9"><%=udao.getMobile()%></p>
                                                    </div>
                                                    <div class="row">
                                                        <p class="col-sm-3 text-sm-right mb-0 mb-sm-3">Status</p>
                                                        <p class="col-sm-9">Active</p>
                                                    </div>
                                                     <div class="row">
                                                        <p class="col-sm-3 text-sm-right mb-0 mb-sm-3">Address</p>
                                                        <p class="col-sm-9"><%=udao.getAddress()%></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal fade" id="edit_personal_details" aria-hidden="true" role="dialog">
                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title">Personal Details</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form  action="../Update" method="post">
                                                                <div class="row form-row">
                                                                    <div class="col-12 col-sm-6">
                                                                        <div class="form-group">
                                                                            <label>Your ID</label>
                                                                            <input type="text" readonly class="form-control" value="<%=udao.getId()%>" name="id"> </div>
                                                                    </div>
                                                                    <div class="col-12 col-sm-6">
                                                                        <div class="form-group">
                                                                            <label>Name</label>
                                                                            <input type="text" class="form-control" value="<%=udao.getName()%>" name="newname"> </div>
                                                                    </div>
                                                                   
                                                                    <div class="col-12 col-sm-6">
                                                                        <div class="form-group">
                                                                            <label>Email ID</label>
                                                                            <input type="email" class="form-control" value="<%=udao.getEmail()%>" name="newemail"> </div>
                                                                    </div>
                                                                    <div class="col-12 col-sm-6">
                                                                        <div class="form-group">
                                                                            <label>Mobile</label>
                                                                            <input type="text" value="<%=udao.getMobile()%>" class="form-control" name="newmobile"> </div>
                                                                    </div>
                                                                    <div class="col-12 ">
                                                                        <div class="form-group">
                                                                            <!--                                                                            <label>Image</label>
                                                                                                                                                        <input type="file" class="form-control" value="<%=udao.getImage()%>"> </div>-->
                                                                            <label>Image</label><br>
                                                                            <img class="img-fluid" style="height: 200px;width: 200px;"  src="<%= udao.getImage() %>" alt="Current Image">
                                                                            <input type="file" class="form-control">

                                                                        </div>
                                                                        <div class="col-12">
                                                                            <h5 class="form-title"><span>Address</span></h5> </div>
                                                                        <div class="col-12">
                                                                            <div class="form-group">
                                                                                <label>Address</label>
                                                                                <input type="text" class="form-control" value="" name="address"> </div>
                                                                        </div>
                                                                    </div>
                                                                    <button type="submit" class="btn btn-primary btn-block">Save Changes</button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col">
                                        </div>
                                    </div>
                                </div>
                                <div id="password_tab" class="tab-pane fade">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="card-title">Change Password</h5>
                                            <div class="row">
                                                <div class="col-md-10 col-lg-6">
                                                    <form>
                                                        <div class="form-group">
                                                            <label>Old Password</label>
                                                            <input type="password" class="form-control"> </div>
                                                        <div class="form-group">
                                                            <label>New Password</label>
                                                            <input type="password" class="form-control"> </div>
                                                        <div class="form-group">
                                                            <label>Confirm Password</label>
                                                            <input type="password" class="form-control"> </div>
                                                        <button class="btn btn-primary" type="submit">Save Changes</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
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
        <script src="assets/js/moment.min.js"></script>
        <script src="assets/js/select2.min.js"></script>
        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="assets/js/bootstrap-datetimepicker.min.js"></script>
        <script src="assets/js/script.js"></script>
        <%
    }
else{
    response.sendRedirect("UserLogin.jsp");
}
%>
    </body>
</html>