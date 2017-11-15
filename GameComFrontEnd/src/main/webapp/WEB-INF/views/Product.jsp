<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="com.niit.model.Product"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>
     
     <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product-GameCom</title>
</head>
<body>

<form:form action="InsertProduct" modelAttribute="product" enctype="multipart/form-data">

<table cellspacing="2" align="center">
<tr>
  <td colspan="2">Product Details</td>
 </tr>
  
<%-- <tr>
    <td></td>
    <td><form:input path="productId"/></td>
 </tr> 
  --%>
 <tr>
   <td>Product Name</td>
   <td><form:input  path="productName"/></td>
 </tr>
        
<tr>
   <td>Product Desc</td>
  <td><form:input path="productDesc"/></td>
 </tr>
 
 <tr>
   <td>Product stock</td>
   <td><form:input path="stock"/></td>
 </tr>
 
 <tr>
   <td>Product price</td>
    <td><form:input path="price"/></td>
 </tr>
 

 <tr>
<td>Category</td>

<td>
<form:select path="catId">
<form:option value="0" label="---Select Category ---"/>
<form:options items="${category}"/>
</form:select>
</td>
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
 <style>
 table#table1 {
    width: 50%; 
    background-color: #f1f1c1;
}
 
 </style>
 
 <table id="table1" cellspacing="2" align="center" style="margin-top:100px">           
<tr bgcolor="#f1f1c1">
  <td>Product ID</td>
  <td>Product Name</td>
  <td>Product Description</td>
  <td>Stock</td>
  <td>Price</td>
  <td>CatId</td>
  <td>SupplierId</td>
  <td>Product Image</td>
  <td>Operation</td>
  </tr>
  
  <c:forEach items="${ProductList}" var="product">
 <tr bgcolor="cyan">
  <td width="10%" height="10%">${product.productId}</td>
   <td width="10%" height="10%">${product.productId}</td>
   <td width="10%" height="10%">${product.productName}</td>
   <td width="10%" height="10%">${product.productDesc}</td>
   <td width="10%" height="10%">${product.stock}</td>
   <td width="10%" height="10%">${product.price}</td>
   <td width="10%" height="10%">${product.catId}</td>
   <td width="10%" height="10%">${product.supplierId}</td>
   <td width="10%" height="10%">${product.pimage}</td>
  
   
  <td>
 <security:authorize access="hasRole('ROLE_ADMIN')">
  <c:url value="/deleteProduct/${product.productId}" var="del"/>
     <a href="${del}"><i class="fa fa-trash" aria-hidden="true"></i>DELETE</a>
     
     <c:url value="/updateProduct/${product.productId}" var="update"/>
     <a href="${update}">UPDATE</a>
    </security:authorize> 
    <c:url value="/viewProduct/${product.productId}" var="view"/>
     <a href="${view}">VIEW</a>
   </td>    
 </tr>  
 </c:forEach>
 </table>
</body>
</html>