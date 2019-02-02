<%-- 
    Document   : action
    Created on : 08-Jan-2019, 17:10:15
    Author     : garyb
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ServletPackage.*, java.util.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>CRUD</title>
		<link rel="stylesheet" href="css/bootstrap.css">
                 <link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css'>
	</head>
	
	<body>
		<%
//		String userid = request.getParameter("UserID");
//		String email = request.getParameter("email");
//		//String tel = request.getParameter("phone");
//		String department = request.getParameter("department");
//		int phone = Integer.parseInt(tel);
               String productid = request.getParameter("productid");
		String productname = request.getParameter("productname");
		String health = request.getParameter("health");
		String spicetype = request.getParameter("spicetype");
                String quantity = request.getParameter("quantity");
		String price = request.getParameter("price");
		String family = request.getParameter("family");
                String image = request.getParameter("image");

		ProductAdmin uObject = new ProductAdmin();
//		uObject.setUserid(userid);
//		uObject.setEmail(email);
//		uObject.setDepartment(department);
		
                                uObject.setProductid(productid);
				uObject.setProductname(productname);
				uObject.setHealth(health);
				uObject.setSpicetype(spicetype);
				uObject.setQuantity(quantity);
				uObject.setPrice(price);
				uObject.setFamily(family);
				uObject.setImage(image);

		Crud opObject = new Crud();
		String message = opObject.save(uObject);%>


		<%if(message!=null){%>
		<jsp:include page="index.jsp"></jsp:include>
		<% }
			%>
	</body>
</html>
