<%-- 
    Document   : login
    Created on : 06 27, 21, 1:17:40 PM
    Author     : AERON-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Item</title>
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
        <jsp:include page="navbar_staff.jsp" />
        
        
        <div class="container content_box">
            <h1 class="fonted1 text-center">DELETE PRODUCT</h1>
            <h6 class="fonted1 text-muted">${pn} | ID: ${id}</h6>
            <form action="delete/add" method="post">
                <div class="form-group">
                    <label class="fonted2"><b>Are you sure you want to delete:</b></label>
                    <input type="text" name="pn" class="form-control" id="pn" aria-describedby="emailHelp" value="${pn}" readonly>
                </div>
                <br>

                    <button type="submit" class="btn btn-danger fonted1" name="delete_item">CONFIRM</button>
                    <a class="btn btn-primary fonted1" href="edit.jsp">CANCEL</a>
               
                <input class="form-control" type="hidden" name="id" value="${id}">
            </form>
        </div>
        <script src="js/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="js/parallax.js"></script> 
    </body>
</html>
