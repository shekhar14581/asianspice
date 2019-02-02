<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!--<link href="css/registration.css" rel="stylesheet">-->
<title>Insert title here</title>
</head>
<body>
 <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
<!-- 	<form action="LoginServlet" method="post">
		<table>
			<tr>
				<td>UserName:</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<td><input class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored" type="submit" name="submit" value="register"></td>
			</tr>
			
		</table>
	</form> -->
	<!-- Textfield with Floating Label -->
<!--         <div class="login-left">
             <img src="vendor/images/spice.jpg" alt="Login" align="center">
    
  </div>-->
<div style="margin-top: 50px">
       <h3 align="center">Acme Spices Registration</h3>
</div>
<form action="LoginServlet" method="GET" style="margin-left: 400px;">
<div>
  <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    <input class="mdl-textfield__input" type="text" name ="username" id="sample3">
    <label class="mdl-textfield__label" for="sample3">Username...</label>
  </div>
  </div>
<!--  <div>
    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    <input class="mdl-textfield__input" type="text" name ="name" id="sample3">
    <label class="mdl-textfield__label" for="sample3">Name...</label>
  </div>
  </div>-->
    <div>
    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    <input class="mdl-textfield__input" type="password" name ="password" id="sample3">
    <label class="mdl-textfield__label" for="sample3">Password...</label>
  </div>
  </div>
  <div>
  </div>
     <div>
    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    <input class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored" style="margin-top: 5%; float: right;"type="submit" name="submit" value="register">
   <!--  <label class="mdl-textfield__label" for="sample3">Password...</label> -->
 
  </div>
    <div>
    <a href="Login.jsp" tabindex="5" class="forgot-password" style="#">Go back to Login!!!!</a>
  </div>
</form>
	
	
</body>
</html>