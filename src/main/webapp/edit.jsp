<%-- 
    Document   : edit
    Created on : 08-Jan-2019, 16:44:02
    Author     : garyb
--%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet" href="css/bootstrap.css">
                <link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css'>
	</head>

	<body>

	<%
        
	String values = request.getParameter("values");
	String split[] =values.split("~");
	String productid = split[0];
	String productname =split[1];
	String health = split[2];
	String spicetype = split[3];
	String quantity =split[4];
	String price = split[5];
        String family = split[6];
	String image =split[7];
	%>
	<div class="container">
		<div class="panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">CRUD OPERATIONS IN JSP with Bootstrap Design</h3>
			</div>
			<div class="panel-body">
				<form action="update.jsp" class="form-horizontal" method="post">
				<div class="form-group col-md-6">
					<label class="control-label" for=ProductID>Product ID</label>
					Product ID cant be modified
					<input type="text" id="productid" class="form-control" name="productid" placeholder="ENTER product id" readonly required="required" value="<%=productid%>">
				</div>
				<div class="clearfix"></div>
				<div class="form-group col-md-6">
					<label for="email" class="control-label">Product Name</label>
					<input type="productname" id="productname" value ="<%=productname%>"class="form-control" name="productname" placeholder="ENTER PRODUCT NAME" required="required">
				</div>
                                <div class="clearfix"></div>
				<div class="form-group col-md-6">
					<label for="health" class="control-label">Health Benefits</label>
					<input type="tel" id="health" class="form-control" name="health" placeholder="ENTER health Benefits" value ="<%=health%>" required="required">
				</div>
				<div class="clearfix"></div>
				<div class="form-group col-md-6">
					<label for="spicetype" class="control-label">Spice Type</label>
					<select id="spicetype" required="required" class="form-control" name="spicetype">
						<option value="">Select</option>
					        <option value="Mild">Mild</option>
				                 <option value="Medium">Medium</option>
				                 <option value="Hot">Hot</option>
					</select>
				</div>
				<div class="clearfix"></div>
				<div class="form-group col-md-6">
					<label for="quantity" class="control-label">Quantity</label>
					<input type="tel" id="quantity" class="form-control" name="quantity" placeholder="ENTER Qunatity" value ="<%=quantity%>" required="required">
				</div>
                                <div class="clearfix"></div>
				<div class="form-group col-md-6">
					<label for="price" class="control-label">Price</label>
					<input type="tel" id="price" class="form-control" name="price" placeholder="ENTER Price" value ="<%=price%>" required="required">
				</div>
                                  <div class="clearfix"></div>
				<div class="form-group col-md-6">
					<label for="family" class="control-label">Family</label>
					<input type="tel" id="family" class="form-control" name="family" placeholder="ENTER Family" value ="<%=family%>" required="required">
				</div>
                                  <div class="clearfix"></div>
				<div class="form-group col-md-6">
					<label for="image" class="control-label">Image</label>
					<input type="tel" id="image" class="form-control" name="image" placeholder="ENTER Price" value ="<%=image%>" required="required">
				</div>
				<div class="clearfix"></div>
				<div class="form-group col-md-6">
					<button class="btn btn-success">UPDATE</button>
				</div>
				</form>
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
	</body>
</html>