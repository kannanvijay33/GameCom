<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Product</title>
<style type="text/css">
p{
color:red;
font-family: "Lucida Sans Unicode", "Lucida Grande", "sans-serif";
}
.font
{
font-family: "Lucida Sans Unicode", "Lucida Grande", "sans-serif";
}
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
	<center>
		<h2>Product Details</h2>
	</center>
	<br>
	<div class="container">
		<table class="table table-striped">
			<tr>
				<c:url value="/resources/products/${pro.productId}.png" var="image"></c:url>
			<td colspan="2"><img src="${image}" height="300" width="250"/></td>
			<td class="font">ProductName:${pro.productName}<br><br>
			  				 Description:${pro.productDesc}<br><br>
			    			 Price:${pro.price}<br><br>
			 </td>
			   
			</tr>
		</table>
		<c:if test="${pro.stock!=0 }">
		
	<c:url value="/cart/addtocart/${pro.productId}" var="shop"></c:url>
		<form action="${shop}">
			<!-- Enter Units<input type="text" name="units"><br> -->
			
			<input type="text" name="units" value="1" style="width: 36px; text-align: center;" hidden"/>
			
			<button type="submit"  class="btn btn-warning pull-left" >
			<span class="glyphicon glyphicon-shopping-cart"></span>AddToCart</button>
			</form>
	</c:if>
	
	<c:url value="/product" var="action"></c:url>
		<form action="${action}">
			<button type="submit"  class="btn btn-success pull-right" >
			<span class="glyphicon glyphicon-eye-open"></span>Back</button>
			</form>
	<c:if  test="${pro.stock==0 }">
	<center><p>Out Of Stock</p></center>
	</c:if>
	
	</div><br>

</body>
</html>
 
