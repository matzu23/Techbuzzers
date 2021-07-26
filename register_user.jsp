<%-- 
    Document   : login
    Created on : 06 27, 21, 1:17:40 PM
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
        </style>
    </head>
    <body>
        <jsp:include page="navbar_home.jsp" />
        
        
        <div class="container content_box">
            <h1 class="fonted1 text-center">REGISTER</h1>
            <form action="register/add" method="post">
                <div class="form-group">
                    <label for="exampleInputEmail1">Enter Your Name:</label>
                    <input type="text" name="userName" class="form-control" id="userName" aria-describedby="emailHelp" placeholder="Please create a username.">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Register Your Techbee ID:</label>
                    <input type="text" name="userID" class="form-control" id="userID" aria-describedby="emailHelp" placeholder="Enter your ID number here">
                    <small id="emailHelp" class="form-text text-muted">Please refer to the ID given.</small>
                </div>
                <br>
                <div class="form-group">
                    <label for="exampleInputPassword1">Access Code</label>
                    <input type="password" name="accessCode" class="form-control" id="accessCode" placeholder="Enter a password for your account">
                </div>
                <br>
                <button type="submit" class="btn btn-primary fonted1" name="addregister">REGISTER</button>
            </form>
        </div>
        
        <script src="js/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="js/parallax.js"></script> 
    </body>
</html>
