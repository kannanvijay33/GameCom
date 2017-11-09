<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ include file="header.jsp"%> 
<body>
<div class="clear spaces10"></div>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 container containerMinHeight">
	<div class="clear spaces10"></div>
	<form action="${pageContext.request.contextPath}/AddCart" method="post">
	<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
		<img src="${pageContext.request.contextPath}/resources/images/products/${product.getProductId()}.jpg" class="productDetailImg detailBorderDtyle center-block" alt="">
	</div>
	<div class="col-lg-1 col-md-1 col-sm-12 col-xs-12 spacingWidth"></div>
	<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12" align="left">
		<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
			<div class="form-group">
				<span class="productDetailTitle">${product.getproductName}</span>
			</div>
			<div class="form-group">
				<span class="aboutUsDataContent">${product.getproductDesc()}</span>
			</div>	
			<div class="form-group">
				<label class="detailTitle">Category:</label>
				<label class="detailContent">${category.getcatName()}</label>
			</div><div class="form-group">
				<label class="detailTitle">Supplier:</label>
				<label class="detailContent">${supplier.getsupName()}</label>
			</div>
			<div class="form-group">
				<span class="productDetailTitle">&#8377;${product.getprice()}</span>
			</div>
		</div>
		<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
			<div class="clear spaces40"></div>
			<c:if test="${sessionScope.roleName == 'user'}">
				<input type="hidden" name="cartProductId" value="${product.getproductId()}" />
				<input type="hidden" name="cartUserId" value="${sessionScope.userId}" />
				<div class="form-group">
					<input name="cartQuantity" class="form-control" placeholder="Quantity" required />
				</div>
				<div class="form-group" align="left">	
					<input type="submit" value="Add to Cart" class="btn btn-primary" />
				</div>
			</c:if>
		</div>
	</div>
	</form>
	<div class="clear spaces10"></div>
</div>
<div class="clear spaces10"></div>
</body>
</html>