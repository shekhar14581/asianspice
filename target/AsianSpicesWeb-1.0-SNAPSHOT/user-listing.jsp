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
<!--    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="index.html">Start Bootstrap</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="index.html">Home
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="product-list.jsp">Shop</a>
              <span class="sr-only">(current)</span>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="playground.jsp">Contact</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="#">Hello ${param.name}</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>-->



  <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
<!--        <a class="navbar-brand js-scroll-trigger" href="#page-top">Spices of Life</a>-->
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
                <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#projects">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">About</a>
            </li>
              <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#projects">Mission</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="product.html">Shop</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#signup">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

      <div class="row">



          <h1 class="my-2">User Management</h1>
          <p><table class="table">
                            <thead>
                                <tr>
<!--                                    <th>#</th>-->
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Email</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${SKALLUSERS}" var="tempuser">    
                                    <tr>
<!--                                        <td scope="row"><c:out value="${tempuser.getId()}"/></td>-->
                                        <td>${tempuser.firstName}"</td>
                                        <td>${tempuser.lastName}"</td>
                                        <td>${tempuser.email}"</td>
                                        <td><a> link to edit </a> </td>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>

  
        <!-- /.col-lg-3 -->

 
        <!-- /.col-lg-9 -->

      </div>
        
        <br/>
        <a class="btn btn-primary" href="<c:url value='/UserManagement?action=add'/>" role="button">Add User</a>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
<!--    <footer class="py-5 bg-dark">
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

