<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="com.niit.model.Product"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
     <%@ taglib  uri="http://www.springframework.org/tags/form" prefix= "form" %>
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
<!--<form action="AddCategory" method="post">-->
<c:url value="/admin/updateProduct" var="var1"/>
<form:form action="${var1}" modelAttribute="product" enctype="multipart/form-data">
<table border="2" cellspacing="5px" cellpadding="10px" style="margin:auto">
<tr >
<td colspan="2" class="text-center" style="color:blue";>Product Module</td>
</tr>
<tr>
<!--<td><input type="text" name="catId"/></td>-->
<td><form:hidden path="productId"/></td>
</tr>
<tr>
<td>Product Name</td>
<!--<td><input type="text" name="catName"/></td>-->
<td><form:input path="productName"/></td>
</tr>
<tr>
<td>Product Desc</td>
<!--<td><input type="text" name="catDesc"/></td>-->
<td><form:input path="productDesc"/></td>
</tr>
<tr>
<td>Product Stock</td>

<td><form:input path="stock"/></td>
</tr>

<tr>
<td>Product Price</td>

<td><form:input path="price"/></td>
</tr>
<tr>
<td>Category</td>

<td>
<form:select path="catId">
<form:option value="0" label="---Select---"/>
<form:options items="${categoryList}"/>
</form:select>

</td>
</tr>

<tr>
<td>Supplier</td>
<td><form:input path="supplierId"/></td>
</tr>
<tr>
<td>Product Image</td>
<td><form:input type="file" path="pimage"/></td>
</tr>

<tr>
<td colspan="2">
<center><input type="submit" class="btn" value="UpdateProduct"/></center>
</td>
</tr>
</table>
</form:form>
<table class="roundedCorners" style="margin:auto">
<tr bgcolor="gray">
 <td>Product ID</td> 
<td>Product Name</td>
<td>Product Description</td>
<td>Operation</td>
</tr>
<c:forEach items="${productList}" var="product">
<tr bgcolor="yellow">
<td>${product.productId}</td>
<td>${product.productName}</td>
<td>${product.productDesc}</td>

<td>
<a href="<c:url value="/admin/deleteProduct/${product.productId}"/>">DELETE</a>
<a href="<c:url value="/admin/updateProduct/${product.productId}"/>">UPDATE</a>
</td>
</tr>
</c:forEach>
</table>


</body>
</html>