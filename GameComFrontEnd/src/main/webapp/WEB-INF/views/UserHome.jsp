<%@ page language="java" contentType="text/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
<title>UserHome-GameCom</title>
</head>
<body>
	<c:if test="${PageContext.request.userPrincipal.name==null}">
	<li><a>Welcome: ${PageContext.request.userPrincipal.name}</a></li>
	<li><a href="<c:url value="/logout"/">">LogOut</a></li>
	<li><a href="${PageContext.request.ContextPath}/goToCart">My cart<i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
	 </c:if>
	 
	 
<table cellspacing="2" align="center">
<tr bgcolor="red">
		<td>Product Name</td>
		<td>Price</td>
		<td>Category</td>
		<td>Stock</td>
</tr>
</table>
<c:forEach items="${productList}" var="product">
<tr>
	<td>${product.productName}</td>
	<td>${product.price}</td>
	<td>${product.catId}</td>
	<td>${product.stock}</td>
	
	<a href="productDesc/${product.productId}"></a>
	<td><img src="<c:url value="/resources/images/${product.productId}.jpg"/">" width="50px" height="50px"/></td>
	
</tr>
</c:forEach>

</body>
</html>