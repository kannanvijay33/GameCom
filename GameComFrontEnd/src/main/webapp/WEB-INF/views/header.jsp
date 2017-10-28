<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib  uri="http://www.springframework.org/tags/form" prefix="spr" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js""></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Header-GameComFrontEnd</title>
</head>
<body>
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
<div class="collapse navbar-collapse" id="bs-example-nav">

<ul class="nav navbar-nav">

<c:url value="/home" var="home" ></c:url>
<li><a href="${home}"><i class="fa fa-home" aria-hidden="true"></i>Home</a></li>

<c:url value="/register" var="reg" ></c:url>
<li><a href="${reg}"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a></li>

<c:url value="/Login" var="log"></c:url>
<li><a href="${log}"><i class="fa fa-sign-in" aria-hidden="true"></i>Login</a></li>

<c:url value="/product" var="prod"></c:url>
<li><a href="${prod}"><i class="fa fa-product-hunt" aria-hidden="true"></i>Product</a></li>

<c:url value="/category" var="cat"></c:url>
<li><a href="${cat}">Category</a></li>
</ul>

</div>
</nav>
</body>
</html>