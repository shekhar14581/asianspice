<%-- 
    Document   : product-list
    Created on : 01-Nov-2018, 12:54:17
    Author     : 112376091
--%>
<%@page import="com.bsapp.model.User"%>
<%@page import="java.util.Vector"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Shop Homepage - Start Bootstrap Template</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/main.css" rel="stylesheet">

    </head>

    <body>

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="index.html">Spices of Life</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="mainpage.html">Home
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="mainpage.html">About</a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link" href="mainpage.html">Mission</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="ShoppingAcme.jsp">Shop</a>
                            <span class="sr-only">(current)</span>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="mainpage.html">Contact</a>
                        </li>
                        
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Page Content -->
        <div class="container">

            <div class="row">



                <h1 class="my-2">Add User</h1>
                <p>


                <!-- /.col-lg-3 -->


                <!-- /.col-lg-9 -->

            </div>
<!--<form action="<c:url value='/UserManagement?action=addConfirm'/>">  method="POST" name="register" action="ProjectServlet"-->
            <form action="UserManagement" method="POST">
                    <div class="form-group">
                        <label for="email">Email address:</label>
                        <input type="email" class="form-control"  name="email">
                    </div>
                    <div class="form-group">
                        <label for="pwd">Password:</label>
                        <input type="password" class="form-control"  name="password">
                    </div>
                      <div class="form-group">
                        <label for="fn">First Name</label>
                        <input type="text" class="form-control"  name="firstname">
                    </div>
                           <div class="form-group">
                        <label for="ln">Last Name</label>
                        <input type="text" class="form-control" name="lastname">
                    </div>
                    
                        <div class="form-group">
                        <label for="ut">USERTYPE</label>
                        <input type="text" class="form-control" name="usertype">
                    </div>
                    
                    <div class="checkbox">
                        <label><input type="checkbox"> Remember me</label>
                    </div>
                    
                 <button type="submit" class="btn btn-default">Submit</button>
<!--                    <a class="btn btn-primary" href="<c:url value='/UserManagement?action=addConfirm'/>" role="button">Submit</a>-->
                </form>
            <br/>
            
            <!-- /.row -->

        </div>
        <!-- /.container -->

<!--         Footer 
        <footer class="py-5 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; Your Website 2017</p>
            </div>
             /.container 
        </footer>-->

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    </body>

</html>

