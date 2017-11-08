 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js""></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
	<h4><img alt="" src="${pageContext.request.contextPath}/resources/cart.jsp">&nbsp; My Cart</h4>
	<table id="cart" class="table table-hover table-condensed">
		<thead>
		<tr>
		<th>Product Name</th>
		<th>Quantity</th>
		<th>Price</th>
		<th>Image</th>
		<th>Total</th><!-- productprice * productQnty -->
		<th>Action</th>
		</tr>
		</thead>
	
		<tbody>
			<c:if test="${empty cartInfo }">
				<tr><td colspan="7" align="center">No Record Exists</td></tr>
			</c:if>
			<c:forEach var="c" varStatus="st" items="${cartInfo}">
			<tr>
				<td><c:out value="${c.cartProductName}"></c:out></td>
				<td><c:out value="${c.cartQnty}"></c:out></td>
				<td><c:out value="${c.cartPrice}"></c:out></td>
				<td><img alt="" src="${pageContext.request.contextPath}/resources/"><c:out value='${c.cartImg}'></c:out>"/></td>
				<td><c:out value="${ c.cartQnty* c.cartPrice}"></c:out></td>
				<td><a href="${pageContext.request.contextPath}/deletePcart/${c.cartId}" class="btn btn-lg btn-danger"><i class="fa fa-trash-o"></i></a></td>
				<c:set var="gtot" value="${gtot+ c.cartQnty* c.cartPrice }"></c:set>
			</tr>
			</c:forEach>
			
			<tr>
				<td>
					<span class="col-lg-7" align="right"><label>Grand Total</label><c:out value="${gtot}"></c:out></span>
				</td>
			</tr>
		</tbody>
		<tfoot>
		<tr>
			<td><a href="/index" class="btn btn-warning">Continue Shopping</a></td>
				<c:if test="${not empty cartInfo}">
					<td><a href="/CheckOut" class="btn btn-warning">CheckOut</a></td>
				</c:if>
		</tr>
	</table>


</div>
</body>
</html> 