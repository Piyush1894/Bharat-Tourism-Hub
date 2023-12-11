<%-- 
    Document   : BookBusRequest
    Created on : Dec 5, 2023, 8:11:33 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="com.bth.model.*" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <style>

            body {
                font-family: 'Lato', arial, sans-serif;
                margin: 0;
            }

            .content-container {
                position: relative;
                z-index: 0;
                padding-left: 40px;
                padding-top: 15px;
                margin: 0 auto;
                overflow: hidden;
                transition: all 300ms ease-in-out;
            }
            #cartCount{

            }


            .slideout-sidebar {
                position: fixed;
                top: 0;
                left: -190px;
                z-index: 0;
                width: 150px;
                height: 100%;
                padding: 20px;
                background-color: #212121;
                transition: all 300ms ease-in-out;
            }

            .slideout-sidebar ul {
                list-style: none;
                margin: 0;
                padding: 0;
            }

            .slideout-sidebar ul li {
                cursor: pointer;
                padding: 18px 0;
                border-bottom: 1px solid rgba(244,244,244,0.4);
                color: rgba(244,244,244,0.7);
            }

            .slideout-sidebar ul li:last-child {
                border-bottom: 0;
            }

            .slideout-sidebar ul li:hover {
                color: rgba(244,244,244,1);
            }


            #menu-toggle {
                display: none;
            }

            .menu-icon {
                position: absolute;
                top: 26px;
                left: 30px;
                font-size: 24px;
                z-index: 1;
                transition: all 300ms ease-in-out;
            }



            /*-- The Magic --*/
            #menu-toggle:checked ~ .slideout-sidebar {
                left: 0px;
            }

            #menu-toggle:checked + .menu-icon {
                left: 210px;
            }

            #menu-toggle:checked ~ .content-container {
                padding-left: 250px;
            }

            /* -- Media Queries -- */

            @media (max-width: 991px) {

                .content-container {
                    max-width: 480px;
                }

            }

            @media (max-width: 767px) {

                .content-container {
                    max-width: 100%;
                    margin: 30px auto 0;
                }

                #menu-toggle:checked ~ .content-container {
                    padding-left: 0;
                }

                .slideout-sidebar ul {
                    text-align: center;
                    max-width: 200px;
                    margin: 30px auto 0;
                }

                .menu-icon {
                    left: 20px
                }

                #menu-toggle:checked ~ .slideout-sidebar {
                    width: 100%;
                }

                #menu-toggle:checked + .menu-icon {
                    left: 87%;
                    color: #fafafa;
                }

                @media screen
                and (max-width: 736px)
                and (orientation: landscape) {

                    .slideout-sidebar {
                        padding: 0;
                    }

                    .slideout-sidebar ul {
                        max-width: 100%;
                        margin: 60px auto 0;
                    }

                    .slideout-sidebar ul li {
                        display: inline-block;
                        border-bottom: 0;
                        width: 72px;
                        padding: 18px 24px;
                        margin: 0 6px 12px;
                        color: #ffffff;
                        background-color: #777;
                    }

                }

            }
            table {
                border-collapse: collapse;
                width: 100%;
            }

            th, td {
                text-align: left;
                padding: 8px;
            }
            label{
                padding: 7px !important;
                display: block !important;
            }
            input{
                width: 280px !important;
            }
        </style>
    </head>

    <body>
        <%
            VendorDAO vdao=(VendorDAO)session.getAttribute("bvdao");
           response.setHeader("Cache-Control", "no-cache, no-store");
        response.setHeader("Pragma", "no-cache");
            BookingBAO bdao=(BookingBAO)session.getAttribute("reportbus");
            ArrayList<BookingBAO> bdaoal=null;
            if(bdao!=null){
                bdaoal=bdao.getAlbb();
            }
            if(vdao!=null){
        %>
        <input type="checkbox" class="" id="menu-toggle" />
        <label for="menu-toggle" class="menu-icon"><i class="fa fa-bars"></i></label>
        <div class="content-container" >
            <div class="mt-2 ms-3">
                <h1 class="h2 fw-bolder d-inline pb-3 ms-4 mt-3"><img src="https://i.ibb.co/yPdF9b0/logo2.png" alt="alt" class="img-fluid"/></h1>
            </div>


            <center><h2 style="margin: 40px 0px; color: #FFC107;">Bus Details</h2></center>
            <div class="container mt-5" style="overflow-x: auto;">
                <table id="User" class="table w-100 table table-hover table-bordered border" align="center"  style="font-size: 12px">
                    <thead>
                        <tr style="background: grey;color: white;">
                            <th>User Name</th>
                            <th>Bus Name</th>
                            <th>From City</th>
                            <th>To City</th>
                            <th>Departure Time</th>
                            <th>Arrival Time</th>
                            <th>Station Name</th>
                            <th>Ticket Price</th>
                            <th>Person</th>
                            <th>Select</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                          for(BookingBAO dao: bdaoal )
                          {
                          System.out.println("Booking Id : "+dao.getBookid());
                        
                        %> 
                        <tr>
                        <tr>
                            <td><%=dao.getName()%></td>
                            <td><%=dao.getBusName()%></td>
                            <td><%=dao.getFromCity()%></td>
                            <td><%=dao.getToCity()%></td>
                            <td><%=dao.getTime()%></td>
                            <td><%=dao.getTravelDuration()%></td>
                            <td><%=dao.getStationName()%></td>
                            <td><%=dao.getTicketPrice()%></td>
                            <td><%=dao.getNum_seats()%></td>
                            <td>
                                <div style="display: flex">
                                    <a href="../BusApproval?busid=<%=dao.getBookid()%>"> <button type="button" class="btn btn-danger btn-sm btn-rounded me-3">
                                            Approve
                                        </button></a>
                                    <button class="btn btn-primary btn-sm" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample<%=dao.getBusid()%>" aria-controls="offcanvasExample<%=dao.getBusid()%>">
                                        Delete
                                    </button>


                                </div>
                            </td>
                        </tr>
                    <div class="offcanvas offcanvas-start" style="background-color: beige" tabindex="-1" id="offcanvasExample<%=dao.getBusid()%>" aria-labelledby="offcanvasExampleLabel">
                        <div class="offcanvas-header text-center">
                            <h5 class="offcanvas-title mx-auto w-75 rounded-3" style="margin-top: 60px;background: grey;padding: 10px;color: white;" id="offcanvasExampleLabel">Edit Bus</h5>
                            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                        </div>
                        <div class="offcanvas-body">
                            <div class="dropdown mt-3">
                                <form action="../BusOperations">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Bus Name</label>
                                        <input name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=dao.getBusName()%>" placeholder="Enter email">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Bus No</label>
                                        <input name="busno" class="form-control" id="exampleInputPassword1" value="<%=dao.getBusNo()%>" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">From City</label>
                                        <input name="fcity" class="form-control" id="exampleInputPassword1" value="<%=dao.getFromCity()%>" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">To City</label>
                                        <input name="tcity" class="form-control" id="exampleInputPassword1" value="<%=dao.getToCity()%>" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Departure Time</label>
                                        <input name="dtime" class="form-control" id="exampleInputPassword1" value="<%=dao.getTime()%>" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Arrival Time</label>
                                        <input name="atime" class="form-control" id="exampleInputPassword1" value="<%=dao.getTravelDuration()%>" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Station Name</label>
                                        <input name="sname" class="form-control" id="exampleInputPassword1" value="<%=dao.getStationName()%>" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Ticket Price</label>
                                        <input name="tprice" class="form-control" id="exampleInputPassword1" value="<%=dao.getTicketPrice()%>" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Description</label>
                                        <input name="desc" class="form-control" id="exampleInputPassword1" value="<%=dao.getDescription()%>" placeholder="Password">
                                    </div>
                                        <input type="type" name="busid" value="<%=dao.getBusid()%>" class="d-none">
                                        <button type="submit" name="type" value="edit" class="btn btn-primary mt-3 ms-2">Submit</button>
                                </form>
                            </div>
                        </div>
                    </div>

                    <%
                       }
                    %>  

                    </tbody>
                </table>
            </div>
        </div>


        <div class="slideout-sidebar">
            <ul>
                <li><a href="BusVendorDashboard.jsp" style="text-decoration: none;color: rgba(244,244,244,0.7);">Dashboard</a></li>
                <li><a href="BusVendorProfiole.jsp" style="text-decoration: none;color: rgba(244,244,244,0.7);">Profile</a></li>
                <li><a href="../BusShowController" style="text-decoration: none;color: rgba(244,244,244,0.7);">All Bus</a></li>
                <li><a href="AddBus.jsp" style="text-decoration: none;color: rgba(244,244,244,0.7);">Add Bus</a></li>
                <li><a href="../BookingBusRequest" style="font-size: 12px;text-decoration: none;color: rgba(244,244,244,0.7);">Book Bus Request</a></li>
                <li><a href="../BookingBusReport" style="text-decoration: none;color: rgba(244,244,244,0.7);">Book Bus User</a></li>
                <li><a href="../VendorLogout" style="text-decoration: none;color: rgba(244,244,244,0.7);">LogOut</a></li>
            </ul>
        </div>
    </body>
    <%
    }
else{
    response.sendRedirect("../VendorView/VendorLogin.jsp");
}
%>
</html>
