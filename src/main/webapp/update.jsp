<%-- 
    Document   : update
    Created on : 08-Jan-2019, 16:45:14
    Author     : garyb
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ServletPackage.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>CRUD</title>
	</head>
	
	<body>
		<jsp:include page="index.jsp"></jsp:include>

		<%
		String productid = request.getParameter("productid");
		String productname = request.getParameter("productname");
		String health = request.getParameter("health");
		String spicetype = request.getParameter("spicetype");
                String quantity = request.getParameter("quantity");
		String price = request.getParameter("price");
		String family = request.getParameter("family");
                String image = request.getParameter("image");
//		long phone = Long.parseLong(tel);


		ProductAdmin uObject = new ProductAdmin();
                
                uObject.setProductid(productid);
				uObject.setProductname(productname);
				uObject.setHealth(health);
				uObject.setSpicetype(spicetype);
				uObject.setQuantity(quantity);
				uObject.setPrice(price);
				uObject.setFamily(family);
				uObject.setImage(image);
//		uObject.setUserid(userid);
//		uObject.setEmail(email);
//		uObject.setDepartment(department);
//		uObject.setPhone(phone);

		Crud opObject = new Crud();
		String message = opObject.Update(uObject);
		if(message!=null){%>
			<div class="clearfix"></div>
			<div class="alert alert-success col-md-4">
			<%=message%></div>

		<%}
		%>
	</body>
</html>