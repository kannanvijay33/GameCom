<%@ page language="java" import="com.niit.model.Product" contentType="text/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Product Desc-GameCom</title>
</head>
<body>
<table>
<tr>
	<td rowspan="5">
		<img src="<c:url value="/resources/${product.productId}.jpg"/>" width="50px" height="50px"/>
	</td>
	
	<td>&nbsp;</td>
</tr>
<tr>
	<td>Product ID :${product.productId}</td>
</tr>	

<tr>
	<td>Product Name :${product.productName}</td>
</tr>	

<tr>
	<td>Product Desc :${product.productId}</td>
</tr>	

<tr>
	<td>&nbsp;</td>
</tr>	


</table>
</body>
</html>