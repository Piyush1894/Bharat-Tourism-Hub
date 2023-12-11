<%-- 
    Document   : calendar
    Created on : 4 Dec, 2023, 11:34:24 AM
    Author     : Emerge Copmuters
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Calendar</title>
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="assets/css/feathericon.min.css">
    <link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="assets/plugins/fullcalendar/fullcalendar.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
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
                <!-- <li class="nav-item dropdown noti-dropdown">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"> <i class="fe fe-bell"></i>
                        <span class="badge badge-pill">3</span> </a>
                    <div class="dropdown-menu notifications">
                        <div class="topnav-dropdown-header"> <span class="notification-title">Notifications</span> <a
                                href="javascript:void(0)" class="clear-noti"> Clear All </a> </div>
                        <div class="noti-content">
                            <ul class="notification-list">
                                <li class="notification-message">
                                    <a href="#">
                                        <div class="media">
                                            <span class="avatar avatar-sm">
                                                <img class="avatar-img rounded-circle" alt="User Image"
                                                    src="assets/img/profiles/avatar-02.jpg">
                                            </span>
                                            <div class="media-body">
                                                <p class="noti-details"><span class="noti-title">Carlson Tech</span> has
                                                    approved <span class="noti-title">your estimate</span></p>
                                                <p class="noti-time"><span class="notification-time">4 mins ago</span>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="notification-message">
                                    <a href="#">
                                        <div class="media">
                                            <span class="avatar avatar-sm">
                                                <img class="avatar-img rounded-circle" alt="User Image"
                                                    src="assets/img/profiles/avatar-11.jpg">
                                            </span>
                                            <div class="media-body">
                                                <p class="noti-details"><span class="noti-title">International Software
                                                        Inc</span> has sent you a invoice in the amount of <span
                                                        class="noti-title">$218</span></p>
                                                <p class="noti-time"><span class="notification-time">6 mins ago</span>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="notification-message">
                                    <a href="#">
                                        <div class="media">
                                            <span class="avatar avatar-sm">
                                                <img class="avatar-img rounded-circle" alt="User Image"
                                                    src="assets/img/profiles/avatar-17.jpg">
                                            </span>
                                            <div class="media-body">
                                                <p class="noti-details"><span class="noti-title">John Hendry</span> sent
                                                    a cancellation request <span class="noti-title">Apple iPhone
                                                        XR</span></p>
                                                <p class="noti-time"><span class="notification-time">8 mins ago</span>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="notification-message">
                                    <a href="#">
                                        <div class="media">
                                            <span class="avatar avatar-sm"><img class="avatar-img rounded-circle"
                                                    alt="User Image" src="assets/img/profiles/avatar-13.jpg"></span>
                                            <div class="media-body">
                                                <p class="noti-details"><span class="noti-title">Mercury Software
                                                        Inc</span> added a new product <span class="noti-title">Apple
                                                        MacBook Pro</span></p>
                                                <p class="noti-time"><span class="notification-time">12 mins ago</span>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="topnav-dropdown-footer"> <a href="#">View all Notifications</a> </div>
                    </div>
                </li> -->
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
                        </div> <a class="dropdown-item" href="profile.jsp">My Profile</a>  <a class="dropdown-item"
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
                                <h4 class="card-title float-left mt-2">Calendar</h4>
                                <!-- <button type="button" class="btn btn-primary float-right veiwbutton" data-toggle="modal"
                                    data-target="#add_event1">Add Event</button> -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-8">
                    <div class="card">
                        <div class="card-body">
                            <div id="calendar"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="add_event1" class="modal fade" role="dialog">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Add Event</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span
                                    aria-hidden="true">&times;</span> </button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group">
                                    <label>Event Name <span class="text-danger">*</span></label>
                                    <input class="form-control" type="text">
                                </div>
                                <div class="form-group">
                                    <label>Event Date <span class="text-danger">*</span></label>
                                    <div class="cal-icon">
                                        <input class="form-control datetimepicker" type="text">
                                    </div>
                                </div>
                                <div class="submit-section">
                                    <button class="btn btn-primary submit-btn">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade none-border" id="my_event">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Add Event</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body"></div>
                        <div class="modal-footer justify-content-center">
                            <button type="button" class="btn btn-success save-event submit-btn">Create event</button>
                            <button type="button" class="btn btn-danger delete-event submit-btn"
                                data-dismiss="modal">Delete</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="add_new_event">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Add Category</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group">
                                    <label>Category Name</label>
                                    <input class="form-control form-white" placeholder="Enter name" type="text"
                                        name="category-name" />
                                </div>
                                <div class="form-group mb-0">
                                    <label>Choose Category Color</label>
                                    <select class="form-control form-white" data-placeholder="Choose a color..."
                                        name="category-color">
                                        <option value="success">Success</option>
                                        <option value="danger">Danger</option>
                                        <option value="info">Info</option>
                                        <option value="primary">Primary</option>
                                        <option value="warning">Warning</option>
                                        <option value="inverse">Inverse</option>
                                    </select>
                                </div>
                                <div class="submit-section">
                                    <button type="button" class="btn btn-primary save-category submit-btn"
                                        data-dismiss="modal">Save</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="add_event" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content modal-md">
                    <div class="modal-header">
                        <h4 class="modal-title">Add Event</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <label>Event Name <span class="text-danger">*</span></label>
                                <input class="form-control" type="text">
                            </div>
                            <div class="form-group">
                                <label>Event Date <span class="text-danger">*</span></label>
                                <div class="cal-icon">
                                    <input class="form-control datetimepicker" type="text">
                                </div>
                            </div>
                            <div class="m-t-20 text-center">
                                <button class="btn btn-primary submit-btn">Create Event</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery-3.5.1.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="assets/js/moment.min.js"></script>
    <script src="assets/js/bootstrap-datetimepicker.min.js"></script>
    <script src="assets/js/jquery-ui.min.js"></script>
    <script src="assets/plugins/fullcalendar/fullcalendar.min.js"></script>
    <script src="assets/plugins/fullcalendar/jquery.fullcalendar.js"></script>
    <script src="assets/js/script.js"></script>
</body>

</html>
