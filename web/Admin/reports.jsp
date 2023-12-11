<%-- 
    Document   : reports
    Created on : 4 Dec, 2023, 11:35:19 AM
    Author     : Emerge Copmuters
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Admin Dashboard</title>
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">
        <link rel="stylesheet" href="assets/css/feathericon.min.css">
        <link rel="stylesheet" href="assets/plugins/morris/morris.css">
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
                                    <li><a href="hotelvendor.jsp"> Hotel Vendor </a></li>
                                    <li><a href="busvender.jsp"> Bus Vendor </a></li>
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
                    <div class="page-header">
                      
                        <nav aria-label="breadcrumb" class="mt-4 mb-4">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Reports</li>
                            </ol>
                        </nav>
                    </div>
                    <div class="row">
                        <div class="col-xl-3 col-sm-6 col-12">
                            <div class="card board1 fill">
                                <div class="card-body">
                                    <div class="dash-widget-header">
                                        <div>
                                            <h3 class="card_widget_header">230</h3>
                                            <h6 class="text-muted">Total Tickets</h6>
                                        </div>
                                        <div class="ml-auto mt-md-3 mt-lg-0">
                                            <span class="opacity-7 text-muted">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                     viewBox="0 0 24 24" fill="none" stroke="#009688" stroke-width="2"
                                                     stroke-linecap="round" stroke-linejoin="round"
                                                     class="feather feather-message-square">
                                                <rect x="2" y="2" width="20" height="20" rx="2.18" ry="2.18"></rect>
                                                <line x1="16" y1="2" x2="16" y2="8"></line>
                                                <line x1="14" y1="14" x2="10" y2="14"></line>
                                                <line x1="10" y1="10" x2="10" y2="14"></line>
                                                </svg>
                                            </span>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 col-12">
                            <div class="card board1 fill">
                                <div class="card-body">
                                    <div class="dash-widget-header">
                                        <div>
                                            <h3 class="card_widget_header">18</h3>
                                            <h6 class="text-muted">New Tickets</h6>
                                        </div>
                                        <div class="ml-auto mt-md-3 mt-lg-0"> <span class="opacity-7 text-muted"><svg
                                                    xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                    viewbox="0 0 24 24" fill="none" stroke="#009688" stroke-width="2"
                                                    stroke-linecap="round" stroke-linejoin="round"
                                                    class="feather feather-file-plus">
                                                <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z">
                                                </path>
                                                <polyline points="14 2 14 8 20 8"></polyline>
                                                <line x1="12" y1="18" x2="12" y2="12"></line>
                                                <line x1="9" y1="15" x2="15" y2="15"></line>
                                                </svg></span> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 col-12">
                            <div class="card board1 fill">
                                <div class="card-body">
                                    <div class="dash-widget-header">
                                        <div>
                                            <h3 class="card_widget_header">15</h3>
                                            <h6 class="text-muted">Solved Tickets</h6>
                                        </div>
                                        <div class="ml-auto mt-md-3 mt-lg-0"> <span class="opacity-7 text-muted"><svg
                                                    xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                    viewbox="0 0 24 24" fill="none" stroke="#009688" stroke-width="2"
                                                    stroke-linecap="round" stroke-linejoin="round"
                                                    class="feather feather-file-plus">
                                                <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z">
                                                </path>
                                                <polyline points="14 2 14 8 20 8"></polyline>
                                                <line x1="12" y1="18" x2="12" y2="12"></line>
                                                <line x1="9" y1="15" x2="15" y2="15"></line>
                                                </svg></span> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 col-12">
                            <div class="card board1 fill">
                                <div class="card-body">
                                    <div class="dash-widget-header">
                                        <div>
                                            <h3 class="card_widget_header">64</h3>
                                            <h6 class="text-muted">Pandding Tickets</h6>
                                        </div>
                                        <div class="ml-auto mt-md-3 mt-lg-0"> <span class="opacity-7 text-muted"><svg
                                                    xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                    viewbox="0 0 24 24" fill="none" stroke="#009688" stroke-width="2"
                                                    stroke-linecap="round" stroke-linejoin="round"
                                                    class="feather feather-file-plus">
                                                <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z">
                                                </path>
                                                <polyline points="14 2 14 8 20 8"></polyline>
                                                <line x1="12" y1="18" x2="12" y2="12"></line>
                                                <line x1="9" y1="15" x2="15" y2="15"></line>
                                                </svg></span> </div>
                                    </div>
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

                                                    <th>Name</th>
                                                    <th>Email</th>
                                                    <th>Subject</th>
                                                    <th>Status</th>
                                                    <th>Last Message</th>
                                                    <th class="text-right">Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="profile.jsp" class="avatar avatar-sm mr-2"><img
                                                                    class="avatar-img rounded-circle"
                                                                    src="assets/img/profiles/avatar-03.jpg"
                                                                    alt="User Image"></a>
                                                            <a href="profile.jsp">Tommy Bernal <span>#0001</span></a>
                                                        </h2>
                                                    </td>
                                                    <td>tommy@gmail.com</td>
                                                    <td>Payment Issue</td>
                                                    <td>
                                                        <div class="actions"> <a href="#"
                                                                                 class="btn btn-sm bg-primary-light mr-2">Open</a> </div>
                                                    </td>
                                                    <td>23-08-2023</td>
                                                    <!-- <td><a href="/cdn-cgi/l/email-protection" class="__cf_email__"
                                                            data-cfemail="1662797b7b6f74736478777a56736e777b667a733875797b">[email&#160;protected]</a>
                                                    </td> -->
                                                    <td class="text-right">
                                                        <div class="dropdown dropdown-action"> <a href="#"
                                                                                                  class="action-icon dropdown-toggle" data-toggle="dropdown"
                                                                                                  aria-expanded="false"><i
                                                                    class="fas fa-ellipsis-v ellipse_color"></i></a>
                                                            <div class="dropdown-menu dropdown-menu-right"> <a
                                                                    class="dropdown-item" href="edit-customer.jsp"><i
                                                                        class="fas fa-pencil-alt m-r-5"></i> Open</a> <a
                                                                    class="dropdown-item" href="#" data-toggle="modal"
                                                                    data-target="#delete_asset"><i
                                                                        class="fas fa-trash-alt m-r-5"></i> Delete</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="profile.jsp" class="avatar avatar-sm mr-2"><img
                                                                    class="avatar-img rounded-circle"
                                                                    src="assets/img/profiles/avatar-03.jpg"
                                                                    alt="User Image"></a>
                                                            <a href="profile.jsp">Tommy Bernal <span>#0001</span></a>
                                                        </h2>
                                                    </td>
                                                    <td>tommy@gmail.com</td>
                                                    <td>Payment Issue</td>
                                                    <td>
                                                        <div class="actions"> <a href="#"
                                                                                 class="btn btn-sm bg-primary-light mr-2">Open</a> </div>
                                                    </td>
                                                    <td>23-08-2023</td>
                                                    <!-- <td><a href="/cdn-cgi/l/email-protection" class="__cf_email__"
                                                            data-cfemail="1662797b7b6f74736478777a56736e777b667a733875797b">[email&#160;protected]</a>
                                                    </td> -->
                                                    <td class="text-right">
                                                        <div class="dropdown dropdown-action"> <a href="#"
                                                                                                  class="action-icon dropdown-toggle" data-toggle="dropdown"
                                                                                                  aria-expanded="false"><i
                                                                    class="fas fa-ellipsis-v ellipse_color"></i></a>
                                                            <div class="dropdown-menu dropdown-menu-right"> <a
                                                                    class="dropdown-item" href="edit-customer.jsp"><i
                                                                        class="fas fa-pencil-alt m-r-5"></i> Open</a> <a
                                                                    class="dropdown-item" href="#" data-toggle="modal"
                                                                    data-target="#delete_asset"><i
                                                                        class="fas fa-trash-alt m-r-5"></i> Delete</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="profile.jsp" class="avatar avatar-sm mr-2"><img
                                                                    class="avatar-img rounded-circle"
                                                                    src="assets/img/profiles/avatar-03.jpg"
                                                                    alt="User Image"></a>
                                                            <a href="profile.jsp">Tommy Bernal <span>#0001</span></a>
                                                        </h2>
                                                    </td>
                                                    <td>tommy@gmail.com</td>
                                                    <td>Payment Issue</td>
                                                    <td>
                                                        <div class="actions"> <a href="#"
                                                                                 class="btn btn-sm bg-success-light mr-2">Solved</a> </div>
                                                    </td>
                                                    <td>23-08-2023</td>
                                                    <!-- <td><a href="/cdn-cgi/l/email-protection" class="__cf_email__"
                                                            data-cfemail="1662797b7b6f74736478777a56736e777b667a733875797b">[email&#160;protected]</a>
                                                    </td> -->
                                                    <td class="text-right">
                                                        <div class="dropdown dropdown-action"> <a href="#"
                                                                                                  class="action-icon dropdown-toggle" data-toggle="dropdown"
                                                                                                  aria-expanded="false"><i
                                                                    class="fas fa-ellipsis-v ellipse_color"></i></a>
                                                            <div class="dropdown-menu dropdown-menu-right"> <a
                                                                    class="dropdown-item" href="edit-customer.jsp"><i
                                                                        class="fas fa-pencil-alt m-r-5"></i> Open</a> <a
                                                                    class="dropdown-item" href="#" data-toggle="modal"
                                                                    data-target="#delete_asset"><i
                                                                        class="fas fa-trash-alt m-r-5"></i> Delete</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="profile.jsp" class="avatar avatar-sm mr-2"><img
                                                                    class="avatar-img rounded-circle"
                                                                    src="assets/img/profiles/avatar-03.jpg"
                                                                    alt="User Image"></a>
                                                            <a href="profile.jsp">Tommy Bernal <span>#0001</span></a>
                                                        </h2>
                                                    </td>
                                                    <td>tommy@gmail.com</td>
                                                    <td>Payment Issue</td>
                                                    <td>
                                                        <div class="actions"> <a href="#"
                                                                                 class="btn btn-sm bg-success-light mr-2">Closed</a> </div>
                                                    </td>
                                                    <td>23-08-2023</td>
                                                    <!-- <td><a href="/cdn-cgi/l/email-protection" class="__cf_email__"
                                                            data-cfemail="1662797b7b6f74736478777a56736e777b667a733875797b">[email&#160;protected]</a>
                                                    </td> -->
                                                    <td class="text-right">
                                                        <div class="dropdown dropdown-action"> <a href="#"
                                                                                                  class="action-icon dropdown-toggle" data-toggle="dropdown"
                                                                                                  aria-expanded="false"><i
                                                                    class="fas fa-ellipsis-v ellipse_color"></i></a>
                                                            <div class="dropdown-menu dropdown-menu-right"> <a
                                                                    class="dropdown-item" href="edit-customer.jsp"><i
                                                                        class="fas fa-pencil-alt m-r-5"></i> Open</a> <a
                                                                    class="dropdown-item" href="#" data-toggle="modal"
                                                                    data-target="#delete_asset"><i
                                                                        class="fas fa-trash-alt m-r-5"></i> Delete</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="profile.jsp" class="avatar avatar-sm mr-2"><img
                                                                    class="avatar-img rounded-circle"
                                                                    src="assets/img/profiles/avatar-03.jpg"
                                                                    alt="User Image"></a>
                                                            <a href="profile.jsp">Tommy Bernal <span>#0001</span></a>
                                                        </h2>
                                                    </td>
                                                    <td>tommy@gmail.com</td>
                                                    <td>Payment Issue</td>
                                                    <td>
                                                        <div class="actions"> <a href="#"
                                                                                 class="btn btn-sm bg-primary-light mr-2">Open</a> </div>
                                                    </td>
                                                    <td>23-08-2023</td>
                                                    <!-- <td><a href="/cdn-cgi/l/email-protection" class="__cf_email__"
                                                            data-cfemail="1662797b7b6f74736478777a56736e777b667a733875797b">[email&#160;protected]</a>
                                                    </td> -->
                                                    <td class="text-right">
                                                        <div class="dropdown dropdown-action"> <a href="#"
                                                                                                  class="action-icon dropdown-toggle" data-toggle="dropdown"
                                                                                                  aria-expanded="false"><i
                                                                    class="fas fa-ellipsis-v ellipse_color"></i></a>
                                                            <div class="dropdown-menu dropdown-menu-right"> <a
                                                                    class="dropdown-item" href="edit-customer.jsp"><i
                                                                        class="fas fa-pencil-alt m-r-5"></i> open</a> <a
                                                                    class="dropdown-item" href="#" data-toggle="modal"
                                                                    data-target="#delete_asset"><i
                                                                        class="fas fa-trash-alt m-r-5"></i> Delete</a>
                                                            </div>
                                                        </div>
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
                <div id="delete_asset" class="modal fade delete-modal" role="dialog">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-body text-center"> <img src="assets/img/sent.png" alt="" width="50"
                                                                      height="46">
                                <h3 class="delete_class">Are you sure want to delete this Asset?</h3>
                                <div class="m-t-20"> <a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
                                    <button type="submit" class="btn btn-danger">Delete</button>
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
        <script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="assets/plugins/datatables/datatables.min.js"></script>
        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="assets/plugins/raphael/raphael.min.js"></script>
        <script src="assets/js/script.js"></script>
    </body>

</html>
