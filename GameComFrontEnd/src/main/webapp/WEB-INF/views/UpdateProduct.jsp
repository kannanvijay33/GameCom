<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
     <%@ taglib  uri="http://www.springframework.org/tags/form" prefix= "form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UpdateProduct-GameCom</title>
</head>
<body>
<style>
body {
    background-color: yellow;
}
</style>
<!--<form action="AddCategory" method="post">-->

<c:set var="mypath" value="/updateProduct"/>

<c:url value="/UpdateProduct" var="update"/>
<form:form action="${update}" modelAttribute="product" enctype="multipart/form-data">
<table align="center" cellspacing="2" >
<tr >
<td colspan="2">Product Module</td>
</tr>

<%-- <tr>
<td>Product ID</td>
<td><form:hidden path="productId" /></td>
</tr>
 --%>
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
<td>Stock</td>
<!--<td><input type="text" name="catDesc"/></td>-->
<td><form:input path="stock"/></td>
</tr>

<tr>
<td>Price</td>
<!--<td><input type="text" name="catDesc"/></td>-->
<td><form:input path="price"/></td>
</tr>

<tr>
<td>CatId</td>
<!--<td><input type="text" name="catDesc"/></td>-->
<td><form:input path="catId"/></td>
</tr>

<tr>
<td>SupplierId</td>
<!--<td><input type="text" name="catDesc"/></td>-->
<td><form:input path="supplierId"/></td>
</tr>

<tr>
<td>Product Image</td>
<!--<td><input type="text" name="catDesc"/></td>-->
<td><form:input type="file" path="pimage"/></td>
</tr>

<tr>
<td colspan="2">
<center><input type="submit"  value="UpdateProduct"/></center>
</td>
</tr>
</table>
</form:form>

<table cellspacing="2" align="center">
<tr bgcolor="green">
<td>Product ID</td>
<td>Product Name</td>
<td>Product Description</td>
<td>Stock</td>
<td>Price</td>
<td>CatId</td>
<td>Supplier ID</td>
<td>Product Image</td>
<td>Operation</td>

</tr>

<c:forEach items="${ProductList }" var="product">
<tr bgcolor="cyan">
<td>${product.productId}</td>
<td>${product.productName}</td>
<td>${product.productDesc}</td>
<td>${product.stock}</td>
<td>${product.price}</td>
<td>${product.catId}</td>
<td>${product.supplierId}</td>
<td>${product.pimage}</td>

<td>
<a href="<c:url value="/deleteProduct/${product.productId}"/>">DELETE</a>
<a href="<c:url value="${mypath}/${product.productId}"/>">UPDATE</a>
</td>
</tr>
</c:forEach>
</table>
</body>
</html>