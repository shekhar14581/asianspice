<%-- 
    Document   : index1
    Created on : 3 Jan, 2019, 3:17:03 AM
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
            <link href="css/grayscale.min.css" rel="stylesheet">
    <link href="css/map.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

	</head>
	<body>
            
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="mainpage.html">Spices of Life</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
                <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="guestmainpage.html" style="color:black;">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="guestmainpage.html" style="color:black;">About</a>
            </li>
              <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="guestmainpage.html" style="color:black;">Mission</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="ShoppingAcme.jsp"style="color:black;">Shop</a>
            </li>
<!--            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#signup">Contact</a>
            </li>-->
          </ul>
        </div>
      </div>
    </nav>
		<div class="container">
		<div class="panel-primary">
<!--		<div class="panel-heading">
		<h3 class="panel-title"  >Acme Spices Product Management</h3>
               
		</div>-->
                     
		<div class="panel-body">
		<form action="action.jsp" class="form-horizontal" method="post">
		<div class="form-group col-md-6">
			<label class="control-label" for="productid">Product ID </label>
			<input type="text" id="productid" class="form-control" name="productid" placeholder="ENTER Product Id" required="required">
		</div>
                    <div class="clearfix"></div>
		<div class="form-group col-md-6">
			<label for="text" class="control-label">Product Name</label>
			<input type="text" id="productname" class="form-control" name="productname" placeholder="ENTER Product Name" required="required">
		</div>
                    
                    
		<div class="clearfix"></div>
		<div class="form-group col-md-6">
			<label for="text" class="control-label">Health Benefits</label>
			<input type="text" id="health" class="form-control" name="health" placeholder="ENTER Product Description" required="required">
		</div>
		<div class="clearfix"></div>
		<div class="form-group col-md-6">
			<label for="department" class="control-label">Spice Type</label>
			<select id="spicetype" required="required" class="form-control" name="spicetype">
				<option value="">Select</option>
				<option value="Mild">Mild</option>
				<option value="Medium">Medium</option>
				<option value="Hot">Hot</option>
			</select>
		</div>
		<div class="clearfix"></div>
	<div class="form-group col-md-6" >
			<label for="phone" class="control-label">Quantity</label>
			<input type="tel" id="quantity" class="form-control" name="quantity" placeholder="ENTER QUANTITY" required="required">
		</div>
                <div class="clearfix"></div>
	<div class="form-group col-md-6" >
			<label for="phone" class="control-label">Price</label>
			<input type="text" id="price" class="form-control" name="price" placeholder="ENTER Price" required="required">
		</div>
                         <div class="clearfix"></div>
	<div class="form-group col-md-6" >
			<label for="family" class="control-label">Family</label>
			<input type="text" id="family" class="form-control" name="family" placeholder="ENTER FAMILY" required="required">
		</div>
                
                                        <div class="clearfix"></div>
	<div class="form-group col-md-6" >
			<label for="family" class="control-label">IMAGE URL</label>
			<input type="text" id="image" class="form-control" name="image" placeholder="img/wood.jpg" required="required">
		</div>
		<div class="clearfix"></div>
		<div class="form-group col-md-6">
			<button class="btn btn-success">Add Products</button>
		</div>
		</form>
		</div>
		</div>
		</div>

		<% 
                    
        
                     
		Crud opObject = new Crud();
	
		List<ProductAdmin> list = new ArrayList();
		
		list = opObject.getListUsers();
		System.out.println(list.size());
		if(!(list.isEmpty())){
		%>
		<table class="table bordered">
		<thead><tr><th></th><th>Product ID</th><th>Product Name</th><th>Health Benefits</th><th>Spice Type</th><th>Quantity</th><th>Price</th><th>Family</th><th>Image URL</th></tr></thead>
		<% for(ProductAdmin p : list){%>
                <tr><td><input type="radio" name="rdValues" required="required"  id="rdId" value="<%=p.getProductid()+"~"+p.getProductname()+"~"+p.getHealth()+"~"+p.getSpicetype()+"~"+p.getQuantity()+"~"+p.getPrice()+"~"+p.getFamily()+"~"+p.getImage()+"~"%>"></td><td><%=p.getProductid()%></td><td><%=p.getProductname()%></td><td><%=p.getHealth()%></td><td><%=p.getSpicetype()%></td><td><%=p.getQuantity()%></td><td><%=p.getPrice()%></td><td><%=p.getFamily()%></td><td><%=p.getImage()%></td></tr>
		
		<% }%>
		</table>
		
		<button class="btn btn-primary" name="edit" required="required" value="edit" onclick="editThis()">EDIT</button>
		<button class ="btn btn-primary" name="delete"  required="required"value="delete" onclick="deleteThis()">DELETE</button>
	
	<%}
	%>
	<script>
	function editThis(){
		var edit;
		edit = document.getElementsByName("rdValues");
		
		var selVal="";
		for(var c=0;c<edit.length;c++){
			if(edit[c].checked == true){
				selVal+=edit[c].value;
			break;		
			}
		}
		
		window.location.href="edit.jsp?values="+selVal;
	}
	function deleteThis(){
		
		var values;
		values = document.getElementsByName("rdValues");
		var selVal="";
		for(var c=0;c<values.length;c++){
			if(values[c].checked == true){
				selVal+=values[c].value;
			break;		
			}
		}
		window.location.href="delete.jsp?userid="+selVal;
		
	}
	</script>

		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.js"></script>
	</body>
</html>