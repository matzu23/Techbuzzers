<%-- 
    Document   : Edit
    Created on : 05 26, 21, 9:37:20 PM
    Author     : DCET 1-2 GROUP 10
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="frmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel ="stylesheet" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
        <script src="https://kit.fontawesome.com/320db3b0ae.js" crossorigin="anonymous"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <title>Inventory</title>
        <style>
            ::-webkit-scrollbar {
                display: none;
            }
            .fonted1, th {
                font-family: 'gothamblack', monospace;
                text-transform: uppercase;
            }
            .fonted2, td {
                font-family: 'gothamthin', sans-serif;
            }
            .box {
                height: 100vh;
                background-image: url("images/new_header.JPG");
                background-repeat: no-repeat;
                background-size: cover;
            }
            option {
                background-color: black;
            }
            .navbar {
                margin-bottom: 20px;
            }
            .siteLogo {
                height: 70px; 
                width: 70px;
                border-radius: 100%;
            }
            option {
                color: white;
                font-family: 'gothamblack', monospace;
                text-transform: uppercase;
            }
            label, #example_info, #example_paginate, #datatables_filter, input, select[name="example_length"] {
                color: white;
                font-family: 'gothamblack', monospace;
                text-transform: uppercase;
            }
            .blacken {
                color: black;
            }

            .red{
                color: red;
            }

        </style>
        <script>
            function validateForm() {
                let product_name = document.forms["myform"]["product_name"].value;
                let product_brand = document.forms["myform"]["product_brand"].value;
                let product_stock = document.forms["myform"]["product_stock"].value;
                if (product_name == "") {
                    alert("Product Name must be filled out!");
                    return false;                   
                }else if(product_brand ==""){
                       alert("Product Brand must be filled out!");
                       return false;
                    }else if (product_stock === ""){
                        alert("Product stock must be filled out!")
                        return false;
                    }
                
            }
            
            
        </script>

    </head>

    <body>
        <jsp:include page="navbar_staff.jsp" />

        <div class="box overflow-auto">
            <div class="container">
                <h1 align="center" class="fonted1 text-white" style="margin-top: 100px;">TECHBUZZER INVENTORY</h1>
                <button class="btn btn-success btn-xs fonted1" data-title="Add" data-toggle="modal" data-target="#addItems" style="margin-bottom: 20px;" ><span class="fas fa-bolt" aria-hidden="true"></span>  ADD ITEMS</button><br>
                <div class="table-responsive">
                    <sql:setDataSource var="techbuzzer" user="root" password="darkwater23" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/techbuzzer?serverTimezone=UTC"/>
                    <sql:query dataSource="${techbuzzer}" var="itms">
                        select * from items;
                    </sql:query>
                    <table id="example" class="table table-striped table-bordered" style="width:100%; background-color: white;">
                        <thead>
                            <tr>
                                <th>Product ID</th>
                                <th>Product Name</th>
                                <th>Product Category</th>
                                <th>Product Brand</th>
                                <th>Available Stocks</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="table" items="${itms.rows}">
                                <tr>
                                    <td><b>${table.id}</b></td>
                                    <td><b>${table.product_name}</b></td>
                                    <td><b>${table.product_category}</b></td>
                                    <td><b>${table.product_brand}</b></td>
                                    <td><b>${table.product_stock}</b></td>
                                    <td>
                                        <a href="/Techbuzzers/view?id=${table.id}&pn=${table.product_name}&pc=${table.product_category}&pb=${table.product_brand}&ps=${table.product_stock}">
                                            <button class="btn btn-primary btn-xs" data-title="Edit">
                                                <span class="far fa-edit"></span>
                                            </button>
                                        </a>
                                    </td>
                                    <td><a href="/Techbuzzers/delete?pn=${table.product_name}&id=${table.id}">
                                            <button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" >
                                                <span class="fas fa-trash-alt"></span>
                                            </button></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="modal fade bd-example-modal-lg" id="addItems" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h2 class="modal-title w-100 font-weight-bold fonted1" id="exampleModalLabel">ADD ITEMS</h2>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body center">
                        <div class="container">
                            <form class="form-horizontal" action="Register/add" onsubmit="return validateForm()" method="post" name="myform">
                                <div class="form-group">

                                    <label class="control-label col-sm-2 fonted1 blacken" for="">Product Name:</label>
                                    <div class="col-sm-12">
                                        <input style="width: 100%;" type="text" class="form-control required" id="product_name" placeholder="" name="product_name"><span class="red">*<small></small></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2 fonted1 blacken" for="">Category:</label>
                                    <select style="width: 100%;" class="form-control" id="product_select" name="product_category">
                                        <option>Smart Phone</option>
                                        <option>Appliances</option>
                                        <option>PCs / Laptops</option>
                                        <option>PC Components</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2 fonted1 blacken" for=""> Brand:</label>
                                    <div class="col-sm-12">
                                        <input style="width: 100%;" type="text" class="form-control required" id="product_brand" placeholder="" name="product_brand"><span class="red">*<small></small></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2 fonted1 blacken" for="">Available Stocks:</label>
                                    <div class="col-sm-8">
                                        <input style="width: 100%;" type="number" class="form-control required" id="product_stock" placeholder="" name="product_stock"><span class="red">*<small></small></span>
                                    </div>
                                </div>
                                <div class="form-group">        
                                    <div class="col-sm-offset-2 col-sm-12">
                                        <button type="submit" style="width: 100%;" name="additem" class="btn btn-primary fonted1"><span class="fas fa-bolt" aria-hidden="true"></span>  ADD PRODUCT</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <script>
            $(document).ready(function () {
                $('#example').DataTable();
            });


        </script>
        <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
    </body>
</html>

