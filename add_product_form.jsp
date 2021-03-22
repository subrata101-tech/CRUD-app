<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="./base.jsp" %>
</head>
<body>



		<div class="container mt-3">
		
			<div class="row">
				<div class="col-md-6 offset-md-3">
					
					<h1 class="text-center">Fill the Product Details</h1>
					
					<form action="processForm" method="post">
					  <div class="form-group">
					    <label for="exampleInputEmail1">Product Name</label>
					    <input type="text" name="name" class="form-control" placeholder="Enter the Product Name">
					   
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputPassword1">Product Price</label>
					    <input type="number" name="price" class="form-control" placeholder="Enter the Product Price">
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputPassword1">Product Description</label>
					    <textarea rows="5" cols=""name="description" class="form-control"placeholder="Enter about Product"></textarea>
					   
					  </div>
					  
					  
					  <div class="text-center">
					  	<button type="submit" class="btn btn-outline-success">Submit</button>
					  	<a href="${pageContext.request.contextPath }/" class="btn btn-outline-warning">Back</a>
					  </div>
					  
					</form>
					
					
				</div>
			</div>
		</div>

</body>
</html>