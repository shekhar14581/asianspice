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

<div style="margin-top: 50px">
       <h3 align="center">Acme Spices Registration</h3>
</div>

     <form action="UserManagement" method="POST"style="margin-left: 400px;">
<div>
  <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    <input class="mdl-textfield__input" type="email" name="email" id="sample3">
    <label class="mdl-textfield__label" for="sample3">Email</label>
  </div>
  </div>
  <div>
    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    <input class="mdl-textfield__input" type="password" name ="password" id="sample3">
    <label class="mdl-textfield__label" for="sample3">Password</label>
  </div>
  </div>
    <div>
    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    <input class="mdl-textfield__input" type="text" name ="firstname" id="sample3">
    <label class="mdl-textfield__label" for="sample3">First Name</label>
  </div>
    </div>
         <div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    <input class="mdl-textfield__input" type="text" name ="lastname" id="sample3">
    <label class="mdl-textfield__label" for="sample3">Last Name</label>
  </div>
         </div>        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
<!--    <input class="mdl-textfield__input" type="text" name ="usertype" id="sample3">-->
 <label class="mdl-textfield__label" for="sample3">USER TYPE</label>
    <select id="spicetype" required="required" class="mdl-textfield__input" name="usertype">
				<option value=""></option>
				<option value="GENUSER">GENUSER</option>
				<option value="ADMIN">ADMIN</option>
				
			</select>
   
  </div>
         
  </div>
  <div>
  </div>
     <div>

   <button type="submit" class="btn btn-default">Submit</button>
    <div>
    <a href="Login.jsp" tabindex="5" class="forgot-password" style="#">Go back to Login</a>
  </div>
</form>
	

</body>
</html>
