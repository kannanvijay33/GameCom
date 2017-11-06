<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="com.niit.model.Supplier" pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
     <%@ taglib  uri="http://www.springframework.org/tags/form" prefix= "form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UpdateSupplier-GameComFrontEnd</title>
</head>
<body>
<c:url value="/updateSupplier" var="update"/>
<form:form action="${update}" modelAttribute="supplier">
<table align="center" cellspacing="2" >
<tr >
<td colspan="2">Supplier Module</td>
</tr>

<tr>
<td>Supplier ID</td>
<td><form:input path="supId"/></td>
</tr>

<tr>
<td>Supplier Name</td>
<td><form:input path="supName"/></td>
</tr>
<tr>
<td>Supplier Address</td>
<td><form:input path="supAddress"/></td>
</tr>

<tr>
<td colspan="2">
<center><input type="submit"  value="UpdateSupplier"/></center>
</td>
</tr>
</table>
</form:form>

<table cellspacing="2" align="center">
<tr bgcolor="green">
<td>Supplier ID</td>
<td>Supplier Name</td>
<td>Supplier Address</td>
<td>Operation</td>
</tr>
<c:forEach items="${SupplierList}" var="supplier">
<tr bgcolor="cyan">
<td>${supplier.supId}</td>
<td>${supplier.supName}</td>
<td>${supplier.supAddress}</td>

<td>
<a href="<c:url value="deleteSupplier/${supplier.supId}"/>">DELETE</a>
<a href="<c:url value="updateSupplier/${supplier.supId}"/>">UPDATE</a>
</td>
</tr>
</c:forEach>
</table>
</body>
</html>