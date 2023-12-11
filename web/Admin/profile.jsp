<%-- 
    Document   : profile
    Created on : 4 Dec, 2023, 4:00:09 PM
    Author     : Emerge Copmuters
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Hotel Dashboard</title>
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
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
                    <a href="index.jsp" class="logo"> <img src="assets/img/logo2.png" width="50" height="70"
                                                            alt="logo"> <span class="logoclass">Admin</span> </a>
                    <a href="index.jsp" class="logo logo-small"> <img src="assets/img/logo2.png" alt="Logo" width="15"
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
                            </div> <a class="dropdown-item" href="profile.jsp">My Profile</a> <a class="dropdown-item"
                                                                                                  href="Login.jsp">Logout</a>
                        </div>
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
                                    <li><a href="hotelvendor.jsp"> Hotel Vendor </a></li>
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
                    <div class="page-header mt-5">
                        <div class="row">
                            <div class="col">
                                <h3 class="page-title">Profile</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
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
                                        <a href="#"> <img class="rounded-circle" alt="User Image" src="assets/img/profiles/avatar-02.jpg"> </a>
                                    </div>
                                    <div class="col ml-md-n2 profile-user-info">
                                        <h4 class="user-name mb-3">David Alvarez</h4>
                                        <h6 class="text-muted mt-1">Manager</h6>
                                        <div class="user-Location mt-1"><i class="fas fa-map-marker-alt"></i> Florida, United States</div>
                                        <div class="about-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
                                    </div>
                                    <div class="col-auto profile-btn"> <a href="index.jsp" class="btn btn-primary">
                                            Home
                                        </a> <a class="edit-link btn btn-primary" data-toggle="modal" href="#edit_personal_details" class="">
                                            Edit
                                        </a> </div>
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
                                                    <div class="row mt-5">
                                                        <p class="col-sm-3 text-sm-right mb-0 mb-sm-3">Name</p>
                                                        <p class="col-sm-9">David Alvarez</p>
                                                    </div>
                                                    <div class="row">
                                                        <p class="col-sm-3 text-sm-right mb-0 mb-sm-3">Date of Birth</p>
                                                        <p class="col-sm-9">24 Jul 1983</p>
                                                    </div>
                                                    <div class="row">
                                                        <p class="col-sm-3 text-sm-right mb-0 mb-sm-3">Email ID </p>
                                                        <p class="col-sm-9"><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="caaeabbca3aeaba6bcabb8afb08aafb2aba7baa6afe4a9a5a7">[email&#160;protected]</a></p>
                                                    </div>
                                                    <div class="row">
                                                        <p class="col-sm-3 text-sm-right mb-0 mb-sm-3">Mobile</p>
                                                        <p class="col-sm-9">305-310-5857</p>
                                                    </div>
                                                    <div class="row">
                                                        <p class="col-sm-3 text-sm-right mb-0">Address</p>
                                                        <p class="col-sm-9 mb-0">4663 Agriculture Lane,
                                                            <br> Miami,
                                                            <br> Florida - 33165,
                                                            <br> United States.</p>
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
                                                            <form>
                                                                <div class="row form-row">
                                                                    <div class="col-12 col-sm-6">
                                                                        <div class="form-group">
                                                                            <label>First Name</label>
                                                                            <input type="text" class="form-control" value="John"> </div>
                                                                    </div>
                                                                    <div class="col-12 col-sm-6">
                                                                        <div class="form-group">
                                                                            <label>Last Name</label>
                                                                            <input type="text" class="form-control" value="Doe"> </div>
                                                                    </div>
                                                                    <div class="col-12">
                                                                        <div class="form-group">
                                                                            <label>Date of Birth</label>
                                                                            <div class="cal-icon">
                                                                                <input type="text" class="form-control" value="24-07-1983"> </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-12 col-sm-6">
                                                                        <div class="form-group">
                                                                            <label>Email ID</label>
                                                                            <input type="email" class="form-control" value="johndoe@example.com"> </div>
                                                                    </div>
                                                                    <div class="col-12 col-sm-6">
                                                                        <div class="form-group">
                                                                            <label>Mobile</label>
                                                                            <input type="text" value="+1 202-555-0125" class="form-control"> </div>
                                                                    </div>
                                                                    <div class="col-12">
                                                                        <h5 class="form-title"><span>Address</span></h5> </div>
                                                                    <div class="col-12">
                                                                        <div class="form-group">
                                                                            <label>Address</label>
                                                                            <input type="text" class="form-control" value="4663 Agriculture Lane"> </div>
                                                                    </div>
                                                                    <div class="col-12 col-sm-6">
                                                                        <div class="form-group">
                                                                            <label>City</label>
                                                                            <input type="text" class="form-control" value="Miami"> </div>
                                                                    </div>
                                                                    <div class="col-12 col-sm-6">
                                                                        <div class="form-group">
                                                                            <label>State</label>
                                                                            <input type="text" class="form-control" value="Florida"> </div>
                                                                    </div>
                                                                    <div class="col-12 col-sm-6">
                                                                        <div class="form-group">
                                                                            <label>Zip Code</label>
                                                                            <input type="text" class="form-control" value="22434"> </div>
                                                                    </div>
                                                                    <div class="col-12 col-sm-6">
                                                                        <div class="form-group">
                                                                            <label>Country</label>
                                                                            <input type="text" class="form-control" value="United States"> </div>
                                                                    </div>
                                                                </div>
                                                                <button type="submit" class="btn btn-primary btn-block">Save Changes</button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="card">
                                                <div class="card-body">
                                                    <h5 class="card-title d-flex justify-content-between">
                                                        <span>Personal Details</span>
                                                        <a class="edit-link" data-toggle="modal" href="#edit_personal_details"><i class="fa fa-edit mr-1"></i>Edit</a>
                                                    </h5>
                                                    <div class="row mt-5">
                                                        <p class="col-sm-3 text-sm-right mb-0 mb-sm-3">Name</p>
                                                        <p class="col-sm-9">David Alvarez</p>
                                                    </div>
                                                    <div class="row">
                                                        <p class="col-sm-3 text-sm-right mb-0 mb-sm-3">Date of Birth</p>
                                                        <p class="col-sm-9">24 Jul 1983</p>
                                                    </div>
                                                    <div class="row">
                                                        <p class="col-sm-3 text-sm-right mb-0 mb-sm-3">Email ID </p>
                                                        <p class="col-sm-9"><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="385c594e515c59544e594a5d42785d40595548545d165b5755">[email&#160;protected]</a></p>
                                                    </div>
                                                    <div class="row">
                                                        <p class="col-sm-3 text-sm-right mb-0 mb-sm-3">Mobile</p>
                                                        <p class="col-sm-9">305-310-5857</p>
                                                    </div>
                                                    <div class="row">
                                                        <p class="col-sm-3 text-sm-right mb-0">Address</p>
                                                        <p class="col-sm-9 mb-0">4663 Agriculture Lane,
                                                            <br> Miami,
                                                            <br> Florida - 33165,
                                                            <br> United States.</p>
                                                    </div>
                                                </div>
                                            </div>
                                           <div class="modal fade" id="edit_personal_details" aria-hidden="true" role="dialog">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Personal Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <!-- Your form content here -->
                    <button type="submit" class="btn btn-primary btn-block">Save Changes</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    // Ensure that the DOM is fully loaded before executing this script
    $(document).ready(function () {
        // Add your script to show the modal here
        $('#edit_personal_details').modal('show');
    });
</script>
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
    </body>

</html>
