<%-- 
    Document   : Login
    Created on : 10-Jan-2019, 12:58:02
    Author     : garyb
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">


    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/landingPage.css" rel="stylesheet">
     <link href="css/loginPage.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<!--	<form action="LoginServlet" method="post">
		<table>
			<tr>
				<td>${message}</td>
				<h3>${successmessage}</h3>
				<td></td>
			</tr>
			<tr>
				<td>UserName:</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" value="submit"></td>
				<td><a href="register.jsp">Registration</a></td>
                                <td><a href="DeleteUsers.jsp">Delete link</a></td>
			</tr>
		</table>
	</form>-->


<div class="login-wrapper">
  <div class="login-left">
     <img src="img/wood.jpg" alt="Login">
    <div class="h1">Enter the world of spices</div>
  </div>
  <div class="login-right">

            <form class="form-signin" action="LoginServlet" method="POST">
        <h2 class="form-signin-heading">Sign In</h2>
        <input type="text" class="input-block-level"  name="email" placeholder="Email address">
             <br>
             <br>
             <br>
        <input type="password" class="input-block-level" placeholder="Password" name="password">
        <br>
         <br>
          <br>

        <button class="btn btn-large btn-primary" style="margin-top: 5%; float: right;" type="submit">Sign in</button>




<br>
<br>
<br>
<a href="guestuser.jsp" tabindex="5" class="forgot-password" style="margin-left:30%;">Continue as Guest</a>
      </form>
      <a href="register.jsp"><button class="btn btn-large btn-primary" style="margin-top: -25.5%; float: left;">Sign up</button></a>
<!-- <a href="register.jsp" tabindex="5" class="forgot-password" style="#">Register here !!!!</a>-->
 

<!-- <a href="register.jsp" tabindex="5" class="forgot-password" style="#">Register here !!!!</a>-->
       
  </div>
</div>
         <script type="text/javascript">
     var openLoginRight = document.querySelector('.h1');
var loginWrapper = document.querySelector('.login-wrapper');

openLoginRight.addEventListener('click', function(){
  loginWrapper.classList.toggle('open'); 
});
      </script>
</body>
</html>
