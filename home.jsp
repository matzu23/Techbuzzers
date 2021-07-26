<%-- 
    Document   : Home
    Created on : 05 20, 21, 2:34:38 PM
    Author     : AERON-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TechBuzzer
        </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/styles.css">
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Roboto&family=Roboto+Mono:wght@600&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@100&display=swap');
            
            ::-webkit-scrollbar {
                display: none;
            }

            .parallax-window {
                min-height: 650px;
                background: transparent;
            }
            .fonted1 {
                font-family: 'gothamblack', monospace;
            }
            .fonted2 {
                font-family: 'gothamthin', sans-serif;
            }
            .box {
                height: 100vh;
                background-image: url("images/new_header.JPG");
                background-repeat: no-repeat;
                background-size: cover;
            }
            .navbarItem:hover {
                text-decoration: underline;
            }
            .siteLogo {
                height: 70px; 
                width: 70px;
                border-radius: 100%;
            }
            .siteDivide {
                background-color: black;
            }
            #displayedLogo {
                display: block;
                margin-left: auto;
                margin-right: auto;
                width: 50%;
                height: 80px; 
                width: 80px;
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
            
            
                
            
        </style>
    </head>
    <body bgcolor="black">
        <jsp:include page="navbar_home.jsp" />
        
        <div class="box overflow-auto">
            <div class="fonted1">
                <p><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br></p>
                <img id="displayedLogo" src="images/logo.png">
                <h1 class="text-center text-white" style="font-size: 70px;">The Techbuzzer</h1>
            </div>
            <div class="container text-center">
                <p class="fonted2 text-white" style="font-size: 30px;">
                    The HIVE of all things Tech.
                </p>
            </div>
            <p><br><br><br><br><br><br><br></p>  
        </div>
        <div class="parallax-window" data-parallax="scroll" data-image-src="images/p1.JPG"></div>

        <div class="parallax-window" data-parallax="scroll" data-image-src="images/p2.JPG"></div>
        <div class="siteDivide"></div>
        <div class="parallax-window" data-parallax="scroll" data-image-src="images/p3.JPG"></div>
        <div class="siteDivide"></div>
        <div class="parallax-window" data-parallax="scroll" data-image-src="images/p4.JPG"></div>
        <div class="siteDivide"></div>
        
        <script src="js/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="js/parallax.js"></script>
        <script>
            $(document).ready(function () {
                $(window).scrollTop(0);
            });
        </script>
    </body>
</html>
