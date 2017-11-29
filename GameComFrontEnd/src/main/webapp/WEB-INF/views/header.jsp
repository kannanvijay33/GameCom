<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib  uri="http://www.springframework.org/tags/form" prefix="spr" %>
	<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
	
<html>
<head>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Header-GameCom</title>
</head>
<body>

<style>
{
height:100%;
}
.fx{
position:fixed;
z-index:9
}
div.container a {
	color: black;
	text-decoration: none;
	font: 15px Raleway;
	position: relative;
	z-index: 0;
	cursor: pointer;
}
/* Circle behind */
div.circleBehind a:before, div.circleBehind a:after {
	position: absolute;
	top: 22px;
	left: 50%;
	width: 50px;
	height: 50px;
	border: 4px solid #0277bd;
	transform: translateX(-50%) translateY(-50%) scale(0.8);
	border-radius: 50%;
	background: transparent;
	content: "";
	opacity: 0;
	transition: all 0.3s;
	z-index: -1;
}
div.circleBehind a:after {
	border-width: 2px;
	transition: all 0.4s;
}
div.circleBehind a:hover:before {
	opacity: 1;
	transform: translateX(-50%) translateY(-50%) scale(1);
}
div.circleBehind a:hover:after {
	opacity: 1;
	transform: translateX(-50%) translateY(-50%) scale(1.3);
}
nav {
	background-color: #2196f3 !important;
	border-color: darkblue !important;
		text-align: center;
}
nav a:hover {
	color: black !important;
}
.nav.navbar-nav.navbar-right li a {
	color: white;
}
.nav.navbar-nav li a {
	color: white;
}
.navbar-toggle.collapsed li a{
	background-color: #2196f3 !important;
}
.navbar-inverse .navbar-brand {
	color: #ffc107;
}
.dropdown a {
	background-color: #2196f3 !important;
}
.dropdown-menu li a {
	background-color: white !important;
	color: black !important;
	height: 50px;
	text-align: center;
}


</style>
<nav id="navbar-green" class="navbar navbar-inverse navbar-static-top" role="navigation">
	<div class="container">
		<ul class="nav navbar-nav">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-nav">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</ul>
	</div>

 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
 <ul class="nav navbar-left navbar-nav left0">
 <a>
	<img src="${pageContext.request.contextPath}/resources/logo2.png" class="logoImgStyle shiftLeft left5" height="100px" width="150px"/>	
	</a>
	</ul>
	
 <ul class="nav navbar-left navbar-nav left1">
 <c:url value="/" var="home" ></c:url>
 <li><a href="${home}"><i class="fa fa-home" aria-hidden="true"></i>Home</a></li>
 </ul>
 
 
 
 <ul class="nav navbar-right navbar-nav right0">
 <c:if test="${pageContext.request.userPrincipal.name==null }">
 
<c:url value="/ProductList" var="product"></c:url>
 <li><a  href="${product}"><i class="fa fa-product-hunt" aria-hidden="true"></i> Products list </a></li>

<c:url value="/Login" var="log"></c:url>
<li><a href="${log}"><i class="fa fa-sign-in" aria-hidden="true"></i>Login</a></li> 
	
<c:url value="/register" var="reg" ></c:url>
<li><a href="${reg}"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a></li>
</c:if>
</ul>

 <c:if test="${pageContext.request.userPrincipal.name!=null }"> 
<security:authorize access="hasRole('ROLE_ADMIN')">
<ul class="nav navbar-center navbar-nav center0">
	
	<c:url value="/product" var="prod"></c:url>
	<li><a href="${prod}"><i class="fa fa-product-hunt" aria-hidden="true"></i>Product</a></li>

	<c:url value="/Category" var="cat"></c:url>
	<li><a href="${cat}">Category</a></li>

	<c:url value="/Supplier" var="sup"></c:url>
	<li><a href="${sup}">Supplier</a></li>
	</ul>
				</security:authorize>
</c:if>	

<c:if test="${pageContext.request.userPrincipal.name!=null }"> 
<security:authorize access="hasRole('ROLE_USER')">
<ul class="nav navbar-center navbar-nav center0">

<c:url value="/ProductList" var="product"></c:url>
 <li><a  href="${product}"><i class="fa fa-product-hunt" aria-hidden="true"></i> Products list </a></li>

<%-- <c:url value="/cart" var="cart"></c:url>
 <li><a  href="${cart}"><i class="fa fa-shopping-cart" aria-hidden="true"></i>MY CART</a></li> --%>
 
</ul>
</security:authorize>
</c:if>

<ul class="nav navbar-right navbar-nav right0">
 <c:url value="/j_spring_security_logout" var="logoutUrl"></c:url>
				<c:if test="${pageContext.request.userPrincipal.name!=null }">
					<li><a href="${logoutUrl}"><span
							class="glyphicon glyphicon-log-out"></span> Logout</a></li>
				</c:if>
				</ul>

</div> 
</nav>
</body>
</html>