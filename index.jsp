<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!doctype html>
<html lang="en">
  <head>
   
    <%@include file="./base.jsp" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  </head>
  <body>
   	
   	<div class="container mt-5">
   		<div class="row">
   			<div class="col-md-12">
   				<h1 class="text-center">Welcome to CRUD App</h1>
   				
					<table class="table table-hover table-dark mt-3">
					  <thead>
					    <tr class="text-center">
					      <th scope="col">SL No.</th>
					      <th scope="col">NAME</th>
					      <th scope="col">PRICE</th>
					      <th scope="col">DESCRIPTION</th>
					      <th scope="col">ACTION</th>
					    </tr>
					  </thead>
					  <tbody>
					    
					    <c:forEach items="${products}" var="p">
					    	<tr>
						      <th scope="row" class="bg-primary">${p.id}</th>
						      <td class="bg-success">${p.name}</td>
						      <td class="bg-danger font-weight-bold">&#x20b9 ${p.price }</td>
						      <td class="bg-info "> ${p.description }</td>
						      <td>
						      	<a href="delete/${p.id}"><i class="fas fa-trash text-danger" style="font-size:23px" ></i></a>
						      	<a href="update/${p.id}"><i class="fas fa-pen-nib text-info px-2" style="font-size:23px" ></i></a>
						      </td>
					   		 </tr>
					    </c:forEach>
					   
					  </tbody>
					</table>
					
					<div class="text-center">
						<a href="addProduct" class="btn btn-outline-success">ADD PRODUCT</a>
					</div>
   				
   			</div>
   		</div>
   	</div>
   
  </body>
</html>