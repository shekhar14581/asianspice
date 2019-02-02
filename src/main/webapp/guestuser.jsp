<%-- 
    Document   : ShoppingAcme
    Created on : 15 Jan, 2019, 5:41:42 AM
    Author     : garyb
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ServletPackage.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.util.Vector"%>

<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
       		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="http://twitter.github.io/typeahead.js/releases/latest/typeahead.bundle.js"></script> 
			 <script src="https://cdn.rawgit.com/vdw/HideSeek/master/jquery.hideseek.min.js"></script>
      <link href="css/products.css" rel="stylesheet">
    
    
<!--     Custom styles for this template -->
    <link href="css/grayscale.min.css" rel="stylesheet">
     <link href="css/grayscale.css" rel="stylesheet">

<!--     Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <!-- Button trigger modal -->
        
                <div>   
     
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
              <a class="nav-link js-scroll-trigger" href="guestmainpage.html">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="guestmainpage.html">About</a>
            </li>
              <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="guestmainpage.html">Mission</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="ShoppingAcme.jsp">Shop</a>
            </li>
<!--            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#signup">Contact</a>
            </li>-->
          </ul>
        </div>
      </div>
    </nav>
        </div>
        
        <br>
        <br>
        <br>
 <form class="form-inline my-2 my-lg-0">
						<div class="input-group mb-3" style="margin-top:20px; margin-left:120px">
							  <div class="input-group-prepend" >
								<span class="input-group-text" id="basic-addon1"> Spices Search</span>
							  </div>
							 
							 <input  data-list=".list" id="input_1" type="text" class="form-control" placeholder="Type Something" aria-label="Username" aria-describedby="basic-addon1">
							</div>
					  
					</form>
		
           
	
      
                <% ArrayList<ProductAdmin> allProducts = ProductDao.getAllproducts(); 
                for (ProductAdmin p :allProducts) {%>
         <div class="container list">
                  <div class="col-sm-6">
    <div class="card" style="width:250%; margin-right: 20%">
      <div class="card-body" style="margin-right: 20%">  
        
        <table style="width:100%">
  <tr style="width:120%">
    <th>Product ID  </th>
    <th>Product Name</th>
    <th>HEALTH BENEFITS</th>
    <th>PRODUCT TYPE</th>
     <th>QUANTITY</th>
    <th>PRICE €</th>
    <th>FAMILY</th>
   
  </tr>
  

  <tr>
    <td><%= p.getProductid()%></td>
    <td><%= p.getProductname()%></td>
    <td><%= p.getHealth()%></td>
    <td><%= p.getSpicetype()%></td>
   <td><%= p.getQuantity()%></td>
    <td><%= p.getPrice()%></td>
    <td><%= p.getFamily()%></td>
    <td> <img src='<%= p.getImage()%>' style='width:60px;height:60px'></td>
  </tr>
  
</table>
       
  

      </div>

    </div>
  </div>
         </div>
                <%   }// end while  } %>
            
                
                
 		 <script type="text/javascript">
				$('#input_1').hideseek({
					highlight: true,
					nodata: 'No results found'
					 
				}
				
				);
		 
		 </script>
		 <style>

          mark {

               background-color: DarkSalmon ;

               font-weight: normal;

               font-style: normal;

          }

     </style>
       
    </body>
</html>
