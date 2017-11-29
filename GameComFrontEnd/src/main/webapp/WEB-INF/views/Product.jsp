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
<script type="text/javascript">
	function formRegister() {
		// Make quick references to our fields
		
		var username = document.getElementById('user_name_fr');
		var email = document.getElementById('email_id_fr');
		var password = document.getElementById('password_fr');
		var phone = document.getElementById('contactNumber_fr');
		//var address = document.getElementById('address_fr');
	
		// Check each input in the order that it appears in the form!
		
					if (notEmpty(user_name_fr, "Username Should not be empty")) {
							if (isAlphabet(username,
									"Please enter only letters for Username")) {
								if (notEmpty(email,
								"EmailId Should not be empty")) {
									if(emailValidator(email, "Please Enter a valid Email id")){ 
								if (notEmpty(password,
										"password Should not be empty")) {
									if (isAlphanumeric(password,
											"Numbers and Letters Only for Passwords")) {
										if (notEmpty(phone,
												"PhoneNumber Should not be empty")) {
											if (isNumeric(phone,
													"Please enter only number for PhoneNumber"))
												{
													return true;
												}
											}
										}
									}
								}
							}
						}
  }
		return false;
	}
  
  function notEmpty(elem, helperMsg) {
		if (elem.value.length == 0) {
			alert(helperMsg);
			elem.focus(); // set the focus to this input
			return false;
		}
		return true;
	}
  
	function isNumeric(elem, helperMsg) {
		var numericExpression = /^[0-9]+$/;
		if (elem.value.match(numericExpression)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphabet(elem, helperMsg) {
		var alphaExp = /^[a-z A-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphanumeric(elem, helperMsg) {
		var alphaExp = /^[0-9a-zA-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function emailValidator(elem, helperMsg) {
		var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
		if (elem.value.match(emailExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
  </script>

</head>

<body>
<security:authorize access="hasRole('ROLE_ADMIN')">
<c:url value="/admin/InsertProduct" var="prod"></c:url>	
<form:form action="${prod}" modelAttribute="product" enctype="multipart/form-data">
<table border="2" cellspacing="5px" cellpadding="10px" style="margin:auto">
<tr >
<td colspan="2" class="text-center" style="color:blue";>Product Details</td>
</tr>

<tr>
<td>Product Name</td>

<td><form:input path="productName"/></td>
</tr>
<tr>
<td>Product Desc</td>
<td><form:textarea path="productDesc"/></td>
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

<%-- <tr>
<td>Supplier</td>
<td>
<form:select path="supplierId">
<form:option value="0" label="---Select---"/>
<form:options items="${SupplierList}"/>
</form:select>
</td>
</tr> --%>

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
<center><input type="submit" class="btn"  value="Insert"/></center>
</td>
</tr>
</table>
</form:form>
</security:authorize>
<table class="roundedCorners" style="margin:auto">

<tr bgcolor="gray">
<td>Product Name</td>
<td>Product Description</td>
<td>Stock</td>
<td>Price</td>
<td>CatId</td>
<td>SupplierId</td>
<security:authorize access="hasRole('ROLE_ADMIN')">
				
<td>Operation</td>
</security:authorize>
</tr>

<c:forEach items="${productList}" var="product">
<tr bgcolor="lightyellow">
<c:url value="/viewProduct/${product.productId}" var="prod"></c:url>
<td><a href="${prod}">${product.productName}</a></td>
<td>${product.productDesc}</td>
<td>${product.stock}</td>
<td>${product.price}</td>
<td>${product.catId}</td>
<td>${product.supplierId}</td>
				
<td>
<ul>
	<c:url value="/admin/deleteProduct/${product.productId}" var="del"/>
	<a href="${del}"><i class="fa fa-trash" aria-hidden="true"></i></a>
</ul>
	
	<ul>
	<c:url value="/admin/updateProduct/${product.productId}" var="update"/>
	<a href="${update}"><i class="fa fa-pencil" aria-hidden="true"></i></a>
	</ul>
	
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