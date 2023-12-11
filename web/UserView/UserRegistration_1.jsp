<%-- 
    Document   : UserRegistration
    Created on : Nov 30, 2023, 5:35:24 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Abhishek</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="style.css">
    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Open Sans", sans-serif;
        }


        body::before {
            content: "";
            position: absolute;
            width: 100%;
            height: 100%;
         }

        .wrapper {
            width: 400px;
            border-radius: 8px;
            padding: 30px;
            text-align: center;
            border: 1px solid rgba(255, 255, 255, 0.5);
            backdrop-filter: blur(9px);
            -webkit-backdrop-filter: blur(9px);
        }

        form {
            display: flex;
            flex-direction: column;
        }

        h2 {
            font-size: 2rem;
            margin-bottom: 20px;
            color: #fff;
        }

        .input-field {
            position: relative;
            border-bottom: 2px solid #ccc;
            margin: 10px 0;
        }

        .input-field label {
            position: absolute;
            top: 50%;
            left: 0;
            transform: translateY(-50%);
            color: #fff;
            font-size: 16px;
            pointer-events: none;
            transition: 0.15s ease;
        }

        .input-field input {
            width: 100%;
            height: 40px;
            background: transparent;
            border: none;
            outline: none;
            font-size: 16px;
            color: #fff;
        }

        .input-field input:focus~label,
        .input-field input:valid~label {
            font-size: 0.8rem;
            top: 10px;
            transform: translateY(-120%);
        }

        button {
            background: #fff;
            color: #000;
            font-weight: 600;
            border: none;
            padding: 12px 20px;
            cursor: pointer;
            border-radius: 3px;
            font-size: 16px;
            border: 2px solid transparent;
            transition: 0.3s ease;
        }

        button:hover {
            color: #fff;
            border-color: #fff;
            background: rgba(255, 255, 255, 0.15);
        }

        .regis{
            background: url("visiting-the-taj-mahal-tips-for-the-taj-mahal-agra-18 (1).jpg"), #000;
            background-position: center;
            background-size: cover; 
             display: flex;
            justify-content: center;
            align-items: center;
        }
        
    </style>
    <script>
       function validateForm(){
        var user=validateName();
        var fname=validateFname();
        var email=validateEmail();
        var pass=validatePass();
        var cpass=validatecPass();
        var mobile=validateMobile();

        var ndisplay=document.getElementById("ndisplay");
        var edisplay=document.getElementById("edisplay");
        var pdisplay=document.getElementById("pdisplay");
        var cpdisplay=document.getElementById("cpdisplay");
        var numdisplay=document.getElementById("numdisplay");

        if(user==false){
                if(email==false)
                edisplay.innerHTML="";
                if(pass==false)
                pdisplay.innerHTML="";
                if(cpass==false)
                cpdisplay.innerHTML="";
                if(mobile==false)
                 numdisplay.innerHTML="";     
            return false;
        }
      
              else  if(email==false){   
                if(pass==false)
                pdisplay.innerHTML="";
                if(cpass==false)
                cpdisplay.innerHTML="";
                if(mobile==false)
                numdisplay.innerHTML="";
            return false;
        }
        else if(pass==false){
               if(cpass==false)
               cpdisplay.innerHTML="";
               if(mobile==false)
               numdisplay.innerHTML="";
           return false;
       } else if(cpass==false){
              
               if(mobile==false)
               numdisplay.innerHTML="";
           return false;
       }else if(mobile==false){
            
           return false;
       }
    }
    function validateName() {
            var nameInput = document.getElementById("name");
            var nameDisplay = document.getElementById("ndisplay");
            var reg = /^[A-Za-z]+$/;

            if (nameInput.value.trim() === "") {
                nameDisplay.innerHTML = "Name is required";
                nameDisplay.style.color = "red";
                nameInput.focus();
                return false;
            } else if (!reg.test(nameInput.value)) {
                nameDisplay.innerHTML = "Only letters are allowed";
                nameDisplay.style.color = "red";
                nameInput.focus();
                return false;
            } else {
                nameDisplay.innerHTML = "";
                return true;
            }
        }
        function validateEmail() {
            var emailInput = document.getElementById("email");
            var emailDisplay = document.getElementById("edisplay");
            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

            if (emailInput.value.trim() === "") {
                emailDisplay.innerHTML = "Email is required";
                emailDisplay.style.color = "red";
                return false;
            } else if (!emailPattern.test(emailInput.value)) {
                emailDisplay.innerHTML = "Invalid email format";
                emailDisplay.style.color = "red";
                return false;
            } else {
                emailDisplay.innerHTML = "";
                return true;
            }
        }
        function validatePass() {
            var passInput = document.getElementById("pass");
            var passDisplay = document.getElementById("pdisplay");
           

            if (passInput.value.trim() === "") {
                passDisplay.innerHTML = "pass is required";
                passDisplay.style.color = "red";
                return false;
            }else {
                passDisplay.innerHTML = "";
                return true;
            }
        }
        function validatecPass() {
            var passInput = document.getElementById("cpass");
            var passDisplay = document.getElementById("cpdisplay");
           

            if (passInput.value.trim() === "") {
                passDisplay.innerHTML = "cpass is required";
                passDisplay.style.color = "red";
                return false;
            }else {
                passDisplay.innerHTML = "";
                return true;
            }
        }
        function validateMobile() {
            var mobInput = document.getElementById("mob");
            var numDisplay = document.getElementById("numdisplay");
            var r = /^[6789][0-9]{9}$/;

            if (mobInput.value.trim() === "") {
                numDisplay.innerHTML = "Mobile number is required";
                numDisplay.style.color = "red";
                return false;
            } else if (!r.test(mobInput.value)) {
                numDisplay.innerHTML = " 6, 7, 8, 9 and have 10 digits";
                numDisplay.style.color = "red";
                mobInput.focus();
                return false;
            } else {
                numDisplay.innerHTML = "";
                return true;
            }
        }
    </script>
</head>
<%
            response.setHeader("Pragma", "no-cache");
        response.setContentType("text/html;charset=UTF-8");
    Object error=session.getAttribute("error");
    
%>
<body>
    <nav class="navbar navbar-expand-lg" id="navbar">
        <div class="container">
            <img src="logo2.png" alt="">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
                <span><i class="fa-solid fa-bars"></i></span>
            </button>
            <div class="collapse navbar-collapse" id="mynavbar">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#book">Book</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="travel1.html">Packages</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#services">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#gallary">Gallary</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#about">About</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle me-5" href="#login" id="navbarDropdownMenuLink" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">Login</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <li><a href="login.html" class="dropdown-item">Login</a></li>
                            <li><a href="registration.html" class="dropdown-item">SignUp</a></li>
                        </ul>
                    </li>

                </ul>
                <form class="d-flex p-0" style="background-color: whitesmoke;">
                    <input class="form-control me-2 p-0 ps-3" style="height: 35px;width: 50%;" placeholder="Search">
                    <button class="btn btn-primary" type="button">Search</button>
                </form>
            </div>
        </div>
    </nav>
    <div class="container regis">
    <div class="wrapper">
       <% if (error == null) { %>
    <!-- Your existing code when there is no error -->
<% } else { %>
    <script>
        alert("<%=error%>");
    </script>
<% } %>

        <form action="../RegistrationTask" method="post" onsubmit="return validateForm()">
            <h2>Registration</h2>
            <div class="input-field">
                <input type="text" onkeyup="validateName()" id="name" name="name" >
                <span id="ndisplay"></span>
                <label>Enter your Name</label>
            </div>
            <div class="input-field">
                <input type="text" onkeyup="validateEmail()" id="email" name="email">
                <span id="edisplay"></span>
                <label>Enter your Email</label>
            </div>
            <div class="input-field">
                <input type="password" onkeyup="validatePass()" name="password" id="pass">
                <span id="pdisplay"></span>
                <label>Enter your password</label>
            </div>
            <div class="input-field">
                <input type="password" onkeyup="validatecPass()" name="cpass" id="cpass" >
                <span id="cpdisplay"></span>
                <label>Confirm password</label>
            </div>
            <div class="input-field">
                <input type="text" onkeyup="validateMobile()" id="mob" name="mobile">
                <span id="numdisplay"></span>
                <label> Mobile Number</label>
            </div>
              <div class="input-field">
                  <input type="file" id="image" name="image" >
                <span id="idisplay"></span>
                <label>Enter Image</label>
            </div>
            <button type="submit" onsubmit="valid()">Register</button>
            <div class="register">
                <p>You already have an account? <a href="UserLogin.jsp">Login</a></p>
            </div>
        </form>
    </div>
</div>
<div class="footer w-100 h-auto bg-dark navbar-dark">
    <div class="container">
        <div class="row row-cols-lg-3">
            <div class="col-lg-4 text-center">
                <h2 style="color: #fff;" class="py-4">Bharat Tourism Hum</h2>

                <div class="border-3 text-center border border-secondary w-100">

                </div>
                <h2 class="py-3 text-light">Privacy Policy</h2>

            </div>
            <div class="col-lg-4">
                <ul class="navbar-nav py-3 text-center">
                    <li class="nav-item"><a href="" class="nav-link"> Home</a></li>
                    <li class="nav-item"><a href="" class="nav-link"> Services</a></li>
                    <li class="nav-item"><a href="" class="nav-link">Packages</a></li>
                    <li class="nav-item"><a href="" class="nav-link">Login</a></li>
                </ul>
            </div>
            <div class="col-lg-4">
                <div class="py-3 text-center">
                    <input class="w-75" type="email" placeholder="Email">
                </div>
                <div class="py-2 text-center">
                    <button class="btn btn-dark btn-outline-light">Suscribe</button>
                </div>
                <div id="footer-icon" class="mt-3 text-center">
                    <a href="#" class="fa fa-facebook link-secondary fs-2 ms-3"></a>
                    <a href="#" class="fa fa-twitter link-secondary fs-2 ms-3"></a>
                    <a href="#" class="fa fa-linkedin link-secondary fs-2 ms-3"></a>
                    <a href="#" class="fa fa-youtube link-secondary fs-2 ms-3"></a>
                    <a href="#" class="fa fa-instagram link-secondary fs-2 ms-3"></a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
