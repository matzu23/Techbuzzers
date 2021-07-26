<%-- 
    Document   : navbar_home
    Created on : 07 13, 21, 3:44:37 PM
    Author     : AERON-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/styles.css">
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
        <title>JSP Page</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Roboto&family=Roboto+Mono:wght@600&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@100&display=swap');
            
            ::-webkit-scrollbar {
                display: none;
            }
            .fonted1 {
                font-family: 'gothamblack', monospace;
            }
            .fonted2 {
                font-family: 'gothamthin', sans-serif;
            }
            .navbarItem:hover {
                text-decoration: underline;
            }
            .siteLogo {
                height: 70px; 
                width: 70px;
                border-radius: 100%;
            }
            .modal-header {
                font-family: "Montserrat";
            }


            body{
                font-family: 'Roboto', sans-serif;
            }

            .form-group .form-control{
                display: block;
                width: 100%;
                height: 36px;
                border-width: 0 0 1px 0;
                border-color: black;
                font-size: 18px;
                line-height: 26px;
                font-weight: 400;
            }

            .navbar {
                margin-bottom: 20px;
            }

            .modal-title{
                font-size: 50px;

            }
            .modal-header{

            }

            .modal-dialog{
                margin: auto;
                width: 100%;
                padding: 10px;
                -moz-box-shadow:    inset 0 0 10px #000000;
                -webkit-box-shadow: inset 0 0 10px #000000;
                box-shadow: inset 0 0 10px #000000;
            }
            .content_box {
                background-color: white;
                margin-top: 15vh;
                width: 500px;
                padding: 40px;
                border-radius: 10%;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg fixed-top navbar-dark">
            <div class="container">
                <img class="navbar-brand siteLogo" src="images/logo.png">
                <span class="navbar-brand fonted1 " >THE TECHBUZZER</span>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="fonted2 text-white nav-link navbarItem" href="edit.jsp">STAFF SITE</a>
                        <li class="nav-item active">
                            <a class="fonted2 text-white nav-link navbarItem" href="index.jsp">LOGOUT</a>
                    </ul>
                </div>
            </div>
        </nav>    
        <script src="js/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    </body>
</html>
