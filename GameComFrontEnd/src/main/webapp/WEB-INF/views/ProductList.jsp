<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="com.niit.model.Product "
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
     <%@ taglib  uri="http://www.springframework.org/tags/form" prefix= "form" %>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
    <%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
   <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
table.roundedCorners { 

 
  border: 1px solid DarkOrange;
  border-radius: 13px; 
  border-spacing: 0;
  }
table.roundedCorners td, 
table.roundedCorners th { 
  /* border-bottom: 1px solid DarkOrange; */
  padding: 10px; 
  }
table.roundedCorners tr:last-child > td {
  border-bottom: none;
}
.btn {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 10px 22px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 2px 1px;
    cursor: pointer;
}
.btn{background-colou: r#f44336;}

</style>

</head>

<body>
<table class="roundedCorners" style="margin:auto">

<tr bgcolor="gray">
<td>Product Name</td>
<td>Product Description</td>
<td>Stock</td>
<td>Price</td>
<td>CatId</td>
<td>SupplierId</td>				
<td>Operation</td>

</tr>

<c:forEach items="${productList}" var="product">
<tr bgcolor="white">
<c:url value="/viewProduct/${product.productId}" var="prod"></c:url>
<td><a href="${prod}">${product.productName}</a></td>
<td>${product.productDesc}</td>
<td>${product.stock}</td>
<td>${product.price}</td>
<td>${product.catId}</td>
<td>${product.supplierId}</td>

				
<td>
	<ol>
	<c:url value="/viewProduct/${product.productId}" var="view"/>
	<a href="${view}"><i class="fa fa-eye" aria-hidden="true"></i></a>
	</ol>

	
	
</td>

</tr>
</c:forEach>
</table>
</body>
</html>