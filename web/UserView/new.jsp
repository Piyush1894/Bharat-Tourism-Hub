<%@ page import="abhi.send2" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <form action="" method="post">
        <label for="email">Enter Email:</label>
        <input type="text" id="email" name="email" placeholder="Enter Email"/>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>

    <%
        if (request.getParameter("email") != null) {
            send2 s = new send2();
            // Process email submission logic here
    %>
            <h3>Email Submitted Successfully</h3>
    <%
        }
    %>

    <form action="" method="post">
        <label for="otp">Enter OTP:</label>
        <input type="text" id="otp" name="otp" placeholder="Enter OTP"/>
        <button type="submit" class="btn btn-primary">Verify OTP</button>
    </form>

    <%
        if (request.getParameter("otp") != null) {
            send2 s = new send2();
         boolean isOtpValid = s.validateOtp(Integer.parseInt(request.getParameter("otp")));
            if (isOtpValid) {
    %>
                <div id="password_tab" class="tab-pane fade">
                    <!-- Change Password Form -->
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Change Password</h5>
                            <form action="password" method="post">
                                <div class="form-group">
                                    <label>New Password</label>
                                    <input type="password" class="form-control" name="newpass">
                                </div>
                                <div class="form-group">
                                    <label>Confirm Password</label>
                                    <input type="password" class="form-control" name="newcpass">
                                </div>
                                <button class="btn btn-primary" type="submit">Save Changes</button>
                            </form>
                        </div>
                    </div>
                </div>
    <%
            } else {
    %>
                <h2>Invalid OTP</h2>
    <%
            }
        }
    %>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
