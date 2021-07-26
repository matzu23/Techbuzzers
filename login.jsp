<%-- 
    Document   : login
    Created on : 07 11, 21, 3:15:32 PM
    Author     : AERON-PC
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TechBuzzer Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
        <style>
            .siteLogo {
                height: 70px; 
                width: 70px;
                border-radius: 100%;
            }
            body {
                background-image: url("images/new_header.JPG");
                background-repeat: no-repeat;
                background-size: cover;
            }
            .fonted1 {
                font-family: 'gothamblack', monospace;
            }
            .fonted2 {
                font-family: 'gothamthin', sans-serif;
            }
            .content_box {
                background-color: white;
                margin-top: 25vh;
                width: 600px;
                padding: 40px;
                border-radius: 10%;
            }
        </style>
    </head>
    <body>
        <jsp:include page="navbar_home.jsp" />
        
        <div class="container content_box">
            <h1 class="fonted1 text-center">STAFF PORTAL</h1>
            <h6 class="fonted1 text-center"><font color="red">${message}</font>
            <h6 class="fonted1 text-center"></h6>
            <form action="Verify" method="post">
                <div class="form-group">
                    <label for="userID"><u>Login Your Techbee ID:</u></label>
                    <input type="text" name="userID" class="form-control" id="userID" placeholder="Enter your ID number here">
                </div>
                <br>
                <div class="form-group">
                    <label for="accessCode"><u>Access Code:</u></label>
                    <input type="password" name="accessCode" class="form-control" id="accessCode" placeholder="Enter a password for your account">
                </div>
                <br>
                <button type="submit" name="login" class="btn btn-primary fonted1">LOGIN</button><br>
                <a href="register_user.jsp"><small class="form-text text-muted">Not Registered? Register here.</small></a>
            </form>
        </div>
        
        <script src="js/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="js/parallax.js"></script> 
    </body>
</html>
