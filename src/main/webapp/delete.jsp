<%-- 
    Document   : delete
    Created on : 08-Jan-2019, 16:56:23
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
		<%
		String value = request.getParameter("userid");
		String split[] =value.split("~");
		String productid = split[0];

		Crud opObject = new Crud();
		String message = opObject.deleteUser(productid);
		if(message!=null){%>
		<div class="clearfix"></div>
		<jsp:include page="index.jsp"></jsp:include>
		<span class="alert alert-success col-md-4"><%=message%></span>
		<%}

		%>
	</body>
</html>