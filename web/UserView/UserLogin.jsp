<%-- 
    Document   : UserLogin
    Created on : Nov 29, 2023, 10:48:41 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Abhishek</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>

        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Open Sans", sans-serif;
        }

        body {
          
            width:100%;
            padding: 0 10px;
            position: relative;
        }
        #maincon
        {
            display:flex;
            justify-content: center;
            align-items: center;
        }
       

        body::before {
            content: "";
            position: absolute;
            width: 100%;
            height: 100%;
             /* background: url("file:///C:/Users/admin/Desktop/html/Travel/Travel/image5/visiting-the-taj-mahal-tips-for-the-taj-mahal-agra-18.jpg"), #000; */
            /* background-position: center
            background-size: cover;  */
            
        }

        .wrapper {
            width: 400px;
            border-radius: 8px;
            padding: 30px;
            text-align: center;
            border: 1px solid rgba(255, 255, 255, 0.5);
            backdrop-filter: blur(6px);
            /* -webkit-backdrop-filter: blur(40px); */
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
            margin: 15px 0;
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

        .forget {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin: 25px 0 35px 0;
            color: #fff;
        }

        #remember {
            accent-color: #fff;
        }

        .forget label {
            display: flex;
            align-items: center;
        }

        .forget label p {
            margin-left: 8px;
        }

        .wrapper a {
            color: #efefef;
            text-decoration: none;
        }

        .wrapper a:hover {
            text-decoration: underline;
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

        .register {
            text-align: center;
            margin-top: 30px;
            color: #fff;
        }
        .login{
            background: url("visiting-the-taj-mahal-tips-for-the-taj-mahal-agra-18 (1).jpg"), #000;
            background-position: center;
            background-size: cover; 
             display: flex;
            justify-content: center;
            align-items: center;
        }
        .one{
            background-color: #3AA6EA;
        }
    </style>
</head>
<%
     Object error=session.getAttribute("error");
        if (error == null) { %>
    <!-- Your existing code when there is no error -->
<% } else { %>
    <script>
        alert("<%=error%>");
    </script>
<% } %>

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
                        <a class="nav-link" href="#Services">Services</a>
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
                            <li><a href="" class="dropdown-item">Login</a></li>
                            <li><a href="" class="dropdown-item">SignUp</a></li>
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
   

    <div id="maincon">
        
        <div class="container  login" id="loginsection">
    <div class="wrapper">
        <form action="../UserLogin" method="post">
            <h2>Login</h2>
            <div class="input-field">
                <input type="email" name="email"  >
                <label>Enter your email</label>
            </div>
            <div class="input-field">
                <input type="password" name="pass">
                <label>Enter your password</label>
            </div>
            <div class="forget">
                <label for="remember">
                    <input type="checkbox" id="remember">
                    <p>Remember me</p>
                </label>
                <a href="#">Forgot password?</a>
            </div>
            <button type="submit">Log In</button>
            <div class="register">
                <p>Don't have an account? <a href="UserRegistration.jsp">New Register</a></p>
            </div>
        </form>
    </div>
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
