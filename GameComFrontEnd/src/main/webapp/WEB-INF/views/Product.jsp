<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="com.niit.model.Product"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product-GameCom</title>
</head>
<body>

<!--<form action="AddCategory" method="post">-->
<form:form action="AddProduct" modelAttribute="product" enctype="multipart/form-data">
<table cellspacing="2" align="center">
<tr>
  <td colspan="2">Product Details</td>
 </tr>
  
<%-- <tr>
    <td>Product ID</td>
    <!--   <td><input type="text" name="catid"/></td>-->
    <td><form:input path="productId"/></td>
 </tr>  --%>
 
 <tr>
   <td>Product Name</td>
  <!--  <td><input type="text" name="catname"/></td>-->
  
  <td><form:input  path="productName"/></td>
 </tr>
        
<tr>
   <td>Product Desc</td>
  <!--   <td><input type="text" name="catDesc"/></td>-->
  <td><form:input path="productDesc"/></td>
 </tr>
 
 <tr>
   <td>Product stock</td>
  <!--   <td><input type="text" name="catDesc"/></td>-->
  <td><form:input path="stock"/></td>
 </tr>
 
 <tr>
   <td>Product price</td>
  <!--   <td><input type="text" name="catDesc"/></td>-->
  <td><form:input path="price"/></td>
 </tr>
 

 <tr>
<td>Category</td>

<td>
<form:select path="catId">
<form:option value="0" label="---Select---"/>
<form:options items="${category}"/>
</form:select>
</td>
</tr>

<tr>
<td>Supplier</td>
<td>
<form:select path="supplierId">
<form:option value="0" label="---Select---"/>
<form:options items="${supplier}"/>
</form:select>
</tr>

<tr>
<td>Product Image</td>
<td><form:input type="file" path="pimage"/></td>
</tr>


<tr>
<td colspan="2">
<center><input type="submit"  value="Insert"/></center>
</td>
</tr>
 </table>
 </form:form>
 
 <table cellspacing="2" align="center">           
<tr bgcolor="lightblue">
  <td>Product ID</td>
  <td>Product Name</td>
  <td>Product Description</td>
  <td>Stock</td>
  <td>Price</td>
  <td>CatId</td>
  <td>SupplierId</td>
  <td>Operation</td>
  </tr>
  
  <c:forEach items="${ProductList}" var="product">
 <tr bgcolor="cyan">
   <td>${product.productId}</td>
   <td>${product.productName}</td>
   <td>${product.productDesc}</td>
   <td>${product.stock}</td>
   <td>${product.price}</td>
   <td>${product.catId}</td>
   <td>${product.supplierId}</td>
   
   
  <td>
  <c:url value="/deleteProduct/${product.productId}" var="del"/>
     <a href="${del}">DELETE</a>
     <c:url value="/updateProduct/${product.productId}" var="update"/>
     <a href="${update}">UPDATE</a>
   </td>    
 </tr>  
 </c:forEach>
 </table>
</body>
</html>