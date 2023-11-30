<%-- 
    Document   : VendorView
    Created on : Nov 30, 2023, 3:33:11 PM
    Author     : user
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
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>

        
        *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    text-decoration: none;
    list-style: none;
    scroll-behavior: smooth;
    font-family: 'Lato', sans-serif;
}

/* Navbar Start */
#navbar{
    background: #f9f9f9;
}
#logo{
    font-size: 36px;
    font-weight: 550;
    color: black;
    text-shadow: 0px 1px 1px black;
    margin-bottom: 5px;
}
#logo span{
    color: #ffa500;
}
.navbar-toggler span{
    color: #ffa500;
}
.navbar-nav{
    margin-left: 20px;
}
.nav-item .nav-link{
    font-size: 16px;
    font-weight: 550;
    color: black;
    letter-spacing: 1px;
    border-radius: 3px;
    transition: 0.5s ease;
}
.nav-item .nav-link:hover{
    background: #ffa500;
    color: white;
}
#navbar form button{
    background: orange;
    color: white;
    border: none;
}
/* Navbar End */

/* Home Section Start */
.home{
    width: 100%;
    height: 90vh;
    background-image: linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.2)), url(./images/background\ img.png);
    background-repeat: no-repeat;
    background-size: cover;
}
.home .content{
    text-align: center;
    padding-top: 200px;
}
.home .content h5{
    color: white;
    font-size: 38px;
    font-weight: 550;
    text-shadow: 0px 1px 1px black;
}
.home .content h1{
    color: white;
    font-size: 70px;
    font-weight: 550;
    text-shadow: 0px 1px 1px black;
    margin-top: 5px;
}
.changecontent::after{
    content: ' ';
    color: #ffa500;
    text-shadow: 0px 1px 1px black;
    animation: changetext 10s infinite linear;
}
@keyframes changetext{
    0%{content: "France";}
    10%{content: "Spain";}
    20%{content: "United States";}
    30%{content: "China";}
    40%{content: "India";}
    50%{content: "Pakistan";}
    60%{content: "Italy";}
    70%{content: "Turkey";}
    80%{content: "Mexico";}
    90%{content: "Germany";}
    100%{content: "United kingdom";}
} 
.home .content p{
    color: white;
    font-size: 15px;
    font-weight: 600;
    text-shadow: 0px 1px 1px black;
    margin-bottom: 30px;
    margin-top: 5px;
}
.home .content a{
    padding: 10px;
    background: white;
    color: black;
    letter-spacing: 2px;
    font-weight: 550;
    border-radius: 5px;
    text-decoration: none;
    transition: 0.5s;
}
.home .content a:hover{
    background: #ffa500;
    color: white;
}
@media (max-width:850px){
    .home{
        background-position: 50%;
    }
}
@media (max-width:450px){
    .home .content h5{
        font-size: 25px;
    }
    .home .content h1{
        font-size: 38px;
    }
    .home .content p{
        font-size: 13px;
    }
}
/* Home Section End */

/* Section Book Start */
.book{
    background: #f9f9f9;
    padding: 50px;
}
.main-text h1{
    text-align: center;
    text-shadow: 0px 1px 1px black;
    font-weight: 600;
}
.main-text h1 span{
    color: #ffa500;
}
.book .card{
    border-radius: 10px;
    box-shadow: 0px 5px 5px -6px black;
}
.book .row{
    margin-top: 30px;
}
.book form input{
    padding: 10px;
    color: black;
    border: none;
    outline: none;
    font-size: 15px;
    border-radius: 10px;
    box-shadow: 0px 5px 5px -6px black;
}
.book form textarea{
    border: none;
    border-radius: 10px;
    resize: none;
    box-shadow: 0px 5px 5px -6px black;
    height: 200px;
}
.book .submit{
    width: 160px;
    font-size: 16px;
    font-weight: 550;
    background: #ffa500;
    color: white;
    margin-top: 10px;
    transition: 0.5s;
}
.book .submit:hover{
    width: 170px;
}
@media (max-width:765px){
    .book{
        padding: 0;
    }
    .main-text h1{
        padding: 20px;
    }
}
/* Section Book End */





/* Section Packages Start */
.main-txt h1{
    text-align: center;
    margin-top: 30px;
    font-weight: 600;
    text-shadow: 0px 1px 1px black;
}
.main-txt h1 span{
    color: #ffa500;
}
.packages .card{
    border-radius: 5px;
    border: none;
    box-shadow: rgba(0,0,0,0.1) 0px 4px 12px;
}
.packages .card img{
    border-radius: 5px;
}
.packages .card .card-body{
    background: transparent;
}
.packages .card .card-body h3{
    font-size: 25px;
    font-weight: 600;
}
.packages .card .card-body p{
    font-size: 15px;
}
.checked{
    color: #ffa500;
}
.star i{
    font-size: 15px;
}
.packages .card .card-body h6{
    font-size: 20px;
}
.packages .card .card-body a{
    padding: 10px;
    text-decoration: none;
    background: #ffa500;
    color: white;
    border-radius: 5px;
}
/* Section Packages End */




/* Section Services Start */
.services{
    background: #f9f9f9;
    margin-top: 50px;
}
.services .card{
    box-shadow: rgba(0,0,0,0.1) 0px 4px 12px;
    border: none;
    cursor: pointer;
}
.services .card i{
    font-size: 80px;
    text-align: center;
    color: #ffa500;
    margin-top: 20px;
}
.services .card .card-body h3{
    font-weight: 600;
}
.services .card .card-body{
    text-align: center;
}
/* Section Services End */





/* Section Gallary Start */
.gallary{
    margin-top: 50px;
}
.gallary .card{
    border-radius: 10px;
    box-shadow: rgba(0,0,0,0.1) 0px 4px 12px;
    cursor: pointer;
}
.gallary .card img{
    border-radius: 10px;
    transition: 0.5s;
}
.gallary .card img:hover{
    transform: scale(1.1);
}
/* Section Gallary End */




/* About Start */
.about{
    padding: 50px;
    margin-top: 50px;
    background: #f9f9f9;
}
.about .card{
    border-radius: 10px;
}
.about .card img{
    border-radius: 10px;
}
.about h2{
    font-weight: 600;
    letter-spacing: 1px;
}
.about p{
    font-weight: 500;
}
#about-btn{
    width: 150px;
    height: 38px;
    border: none;
    border-radius: 5px;
    background: #ffa500;
    color: white;
    letter-spacing: 2px;
    font-weight: 550;
    transition: 0.5s ease;
    cursor: pointer;
}
#about-btn:hover{
    width: 170px;
}
@media (max-width:765px){
    .about{
        padding: 0;
    }
}
/* About End */




/* Footer Start */
#footer{
    width: 100%;
    margin-top: 150px;
    text-align: center;
    background: #f9f9f9;
}
#footer h1{
    font-weight: 600;
    padding-top: 30px;
    text-shadow: 0px 0px 1px black;
}
#footer h1 span{
    color: #ffa500;
}
.social-links i{
    padding: 10px;
    border-radius: 5px;
    font-size: 20px;
    background: black;
    color: white;
    margin-left: 10px;
    margin-bottom: 10px;
    transition: 0.5s ease;
    cursor: pointer;
}
.social-links i:hover{
    background: #ffa500;
}
/* Footer End */
@font-face {
    font-family: 'Roboto';
    font-style: normal;
    font-weight: 500;
    src: url(https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmEU9fCRc4EsA.woff2) format('woff2');
    unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
  }
  /* cyrillic */
  @font-face {
    font-family: 'Roboto';
    font-style: normal;
    font-weight: 500;
    src: url(https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmEU9fABc4EsA.woff2) format('woff2');
    unicode-range: U+0301, U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
  }
  /* greek-ext */
  @font-face {
    font-family: 'Roboto';
    font-style: normal;
    font-weight: 500;
    src: url(https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmEU9fCBc4EsA.woff2) format('woff2');
    unicode-range: U+1F00-1FFF;
  }
  /* greek */
  @font-face {
    font-family: 'Roboto';
    font-style: normal;
    font-weight: 500;
    src: url(https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmEU9fBxc4EsA.woff2) format('woff2');
    unicode-range: U+0370-03FF;
  }
  /* vietnamese */
  @font-face {
    font-family: 'Roboto';
    font-style: normal;
    font-weight: 500;
    src: url(https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmEU9fCxc4EsA.woff2) format('woff2');
    unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+0300-0301, U+0303-0304, U+0308-0309, U+0323, U+0329, U+1EA0-1EF9, U+20AB;
  }
  /* latin-ext */
  @font-face {
    font-family: 'Roboto';
    font-style: normal;
    font-weight: 500;
    src: url(https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmEU9fChc4EsA.woff2) format('woff2');
    unicode-range: U+0100-02AF, U+0304, U+0308, U+0329, U+1E00-1E9F, U+1EF2-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
  }
  /* latin */
  @font-face {
    font-family: 'Roboto';
    font-style: normal;
    font-weight: 500;
    src: url(https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmEU9fBBc4.woff2) format('woff2');
    unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+0304, U+0308, U+0329, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
  }

  *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                /* font-family: "Poppins", sans-serif; */
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
            background: url('https://itc.gov.my/wp-content/uploads/2019/03/Meaning-of-travelling.jpg'), #000;
            background-position: center;
            background-size: cover; 
             display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
                background-size: cover;
                background-position: center;
        }
        .one{
            background-color: #3AA6EA;
        }
    </style>
</head>
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
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="#book">Book</a>
                    </li> -->
                    <li class="nav-item">
                        <a class="nav-link" href="travel1.html">Packages</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#Services">Services</a>
                    </li>
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="#gallary">Gallary</a>
                    </li> -->
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
   

    <div id="maincon" class="my-5">
        
        <div class="container  login" id="loginsection">
    <div class="wrapper">
        <form action="">
            <h2>Login</h2>
            <div class="input-field">
                <input type="email" name="email" required >
                <label>Enter your email</label>
            </div>
            <div class="input-field">
                <input type="password" name="pass" required>
                <label>Enter your password</label>
            </div>
            <div class="forget">
                <label for="remember">
                    <input type="checkbox" id="remember">
                    <p>Remember me</p>
                </label>
                <a href="#">Forgot password?</a>
            </div>
            <a type="submit" class="btn p-2 btn-light text-dark" name="submit" href="../Project travel/Dashboard.html" value="submit">Log In</a>
            <div class="register">
                <p>Don't have an account? <a href="registration.html">New Register</a></p>
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