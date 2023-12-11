<%-- 
    Document   : BusVendorDashboard
    Created on : Dec 1, 2023, 6:01:01 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.bth.model.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <title>Document</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            body {
                font-family: 'Lato', arial, sans-serif;
                margin: 0;
            }

            .content-container {
                position: relative;
                z-index: 0;
                padding-left: 80px;
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
        </style>
    </head>

    <body onload="checkAll()">
        <%
         VendorDAO vdao=(VendorDAO)session.getAttribute("bvdao");
         response.setHeader("Cache-Control", "no-cache, no-store");
        response.setHeader("Pragma", "no-cache");
              if(vdao!=null){
        
        %>

        <input type="checkbox" class="" id="menu-toggle" checked />
        <label for="menu-toggle" class="menu-icon"><i class="fa fa-bars"></i></label>
        <div class="content-container" >
            <div>
                <h1 class="h2 fw-bolder d-inline pb-3"><img src="https://i.ibb.co/yPdF9b0/logo2.png" alt="alt" class="img-fluid"/></h1>
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
        <script>
            var check = document.getElementsByClassName("checkcheck");
            var totalAmountElement = document.getElementById("totalamount");
            var addbtn = document.getElementsByClassName("add-btn");
            var cart = document.getElementById("cart");
            function checkAll() {
                var a = 0;
                var totalAmount = 0;
                for (var i = 0; i < check.length; i++) {
                    if (check[i].checked) {
                        a++;
                        addbtn[i].innerHTML = "Remove";
                        addbtn[i].style.backgroundColor = "transparent";
                        addbtn[i].style.color = "white";
                        addbtn[i].style.borderColor = "white";
                        totalAmount += parseInt(addbtn[i].getAttribute("data-price"));
                        totalAmountElement.innerHTML = totalAmount;
                    } else {
                        addbtn[i].innerHTML = "Add To Cart";
                    }
                }
                if (a == 0) {
                    cart.innerHTML = "";
                    totalAmountElement.innerHTML = "0";
                } else {
                    cart.innerHTML = a;
                }
            }
            function  nextPage() {
                var url = "OrderController?";
                for (var i = 0; i < check.length; i++) {
                    if (check[i].checked) {
                        url += "Product" + (i + 1) + "=" + addbtn[i].getAttribute("data-id") + "&";
                        console.log("H");
                    }
                }
                window.location.href = url;
            }

        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    </body>
<%
    }
else{
    response.sendRedirect("../VendorView/VendorLogin.jsp");
}
%>
</html>