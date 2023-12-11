<%-- 
    Document   : BusTicket
    Created on : Dec 2, 2023, 10:28:33 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.bth.model.*" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<%
      response.setHeader("Cache-Control", "no-cache, no-store");
        response.setHeader("Pragma", "no-cache");
    
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
        <link rel="stylesheet" href="assets/css/style.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

        <!-- Include Select2 CSS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet" />

        <!-- Include Select2 JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>

    </head>

    <body>
        <%
    BusDAO bdao=(BusDAO)session.getAttribute("busdao");
    ArrayList<BusDAO> bdaoal=bdao.getBdaoal();
     UserDAO udao=(UserDAO)session.getAttribute("udao");
          if(udao!=null){

        %>
        <div class="main-wrapper">
            <div class="header">
                <div class="header-left">
                    <a href="UserIndex.jsp" class="logo"> <img src="<%=udao.getImage()%>" width="50" height="70" alt="logo"> <span class="logoclass">USER</span> </a>
                    <a href="UserIndex.jsp" class="logo logo-small"> <img src="<%=udao.getImage()%>" alt="Logo" width="30" height="30"> </a>
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
                            </div> <a class="dropdown-item" href="#">My Profile</a> <a class="dropdown-item" href="settings.html">Account Settings</a> <a class="dropdown-item" href="../LogOutUser">Logout</a> </div>
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
                                    <h4 class="card-title float-left mt-2">All Bus</h4> <a href="../ShowAllBus" class="btn btn-primary float-right veiwbutton">All Bus</a> </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <form action="../searchbus">
                                <div class="row formtype" >
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="selectWithSearch1">Select with Search:</label>
                                            <select id="selectWithSearch1" name="fromcity" style="height: 40px;" class="w-100 select2 from-control">
                                                <option>Select</option>
                                                <option value="Indore">Indore</option>
                                                <option value="Harda">Harda</option>
                                                <option value="Bhopal">Bhopal</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="selectWithSearch2">Select with Search:</label>
                                            <select id="selectWithSearch2" name="tocity" style="height: 40px;" class="select2 w-100 from-control">
                                                <option>Select</option>
                                                <option value="Indore">Indore</option>
                                                <option value="Harda">Harda</option>
                                                <option value="Bhopal">Bhopal</option>
                                                <!-- Add more options as needed -->
                                            </select>
                                        </div>
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
                                            <label>Search</label><input type="submit" class="btn btn-success btn-block mt-0 search_button" value="Search"></div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

                <!-- Include Select2 JS -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>

                <!-- Initialize Select2 -->
                <script>
                    $(document).ready(function () {
                        $('.select2').select2();
                    });
                </script>
                <div class="container mt-5" style="overflow-x: auto;">
                    <table id="User" class="table w-100 table table-hover table-bordered border" align="center"  style="font-size: 16px">
                        <thead>
                            <tr style="background: grey;color: white;">
                                <th>Bus No</th>
                                <th>Bus Name</th>
                                <th>Departure Time</th>
                                <th>Arrival Time</th>
                                <th>Ticket Price</th>
                                <th>Destination</th>
                                <th>Select</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                              for(BusDAO dao: bdaoal )
                              {
                            %> 
                            <tr>
                            <tr>
                                <td><%=dao.getBusNo()%></td>
                                <td><%=dao.getBusName()%></td>
                                <td><%=dao.getTime()%></td>
                                <td><%=dao.getTravelDuration()%></td>
                                <td><%=(dao.getTicketPrice()*1.02)%></td>
                                <td><%=dao.getDescription()%></td>
                                <td>
                                    <div style="display: flex">
                                        <button onclick="toggleRow(<%=dao.getBusid()%>)" type="button" class="btn btn-danger btn-sm btn-rounded me-3">
                                            Book Bus
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            <tr id="hiddenRow<%=dao.getBusid()%>" style="display: none;">
                                <td colspan="10" style="font-size: 16px">
                                    <div style="width: 550px;float: left;">
                                        <form action="../BookBus" style="width: 580px;display: flex">
                                            <input type="text" value="<%=dao.getBusid()%>" class="d-none" name="id">
                                            <div style="float: left">Seats&nbsp;: </div>
                                            <input required value="1" name="seats" style="float: left;margin-left: 8px;width: 400px;height: 30px;" class="form-control" type="number" placeholder="Total Seat" oninput="limitSeatValue(this)" min="1" max="5">
                                            <span id="seatErrorMessage" style="color: red;"></span>
                                            <label style="height: 30px;margin-left: 8px;" >Departure&nbsp;&nbsp;Date&nbsp;&nbsp;:</label>
                                            <input required style="height: 30px;margin-left: 8px;" type="date" name="dis" >
                                            <input  style="height: 30px;margin-left: 8px;width: 100px;" class="form-control form-control-sm" type="submit" name="name">
                                        </form>
                                    </div>
                                </td>
                            </tr>
                            <%
                               }
                            %>  

                        </tbody>
                    </table>
                </div>
            </div>  
        </div>
<script>
    function limitSeatValue(input) {
        var seatErrorMessage = document.getElementById('seatErrorMessage');
        var minValue = parseInt(input.min, 10);
        var maxValue = parseInt(input.max, 10);

        if (input.value < minValue) {
            input.value = minValue;
        } else if (input.value > maxValue) {
            input.value = maxValue;
        }

        // Clear the error message
        seatErrorMessage.textContent = '';
    }
</script>

        <script>
            document.addEventListener("DOMContentLoaded", function () {
                var select1 = document.getElementById("selectWithSearch1");
                var select2 = document.getElementById("selectWithSearch2");

                select1.addEventListener("change", function () {
                    if (select1.value !== "Select" && select1.value === select2.value) {
                        alert("Cannot select both the same state!");
                        select1.value = "Select";
                        select2.value = "Select";
                    }
                });

                select2.addEventListener("change", function () {
                    if (select2.value !== "Select" && select2.value === select1.value) {
                        alert("Cannot select both the same city!");
                        select1.value = "Select";
                        select2.value = "Select";
                    }
                });
            });
        </script>
        <script>
            function toggleRow(busId) {
                // Get the hidden row element by its ID
                var hiddenRow = document.getElementById('hiddenRow' + busId);

                // Toggle the display property of the hidden row
                if (hiddenRow.style.display === 'none') {
                    hiddenRow.style.display = 'table-row';
                } else {
                    hiddenRow.style.display = 'none';
                }
            }
        </script>
        <script data-cfasync="false" src="../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
        <script src="assets/js/jquery-3.5.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="assets/plugins/raphael/raphael.min.js"></script>
        <script src="assets/plugins/morris/morris.min.js"></script>
        <script src="assets/js/chart.morris.js"></script>
        <script src="assets/js/script.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </body>
<%
    }
else{
    response.sendRedirect("UserLogin.jsp");
}
%>
</html>
