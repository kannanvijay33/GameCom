 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head lang="en">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
.img-rounded
{
background-color: white;
}
.sliderimage
	{
		width:1500px !important;
		height:450px !important;
	}
}
</style>
<title>GameCom</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta charset="utf-8">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"></script>

<meta name="viewport" content="width=device-width,initial-scale=1">
<meta charset="utf-8">

</head>
<style>
img.top {
    vertical-align: text-top;
}

img.bottom {
    vertical-align: text-bottom;
}
</style>
<%@ include file="header.jsp"%> 
<body>

<div class="container-fluid">

<div id="myCarousel" class="carousel slide" data-ride="carousel">
<ol class="carousel-indicators">
<li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
<li data-target="#myCarousel2" data-slide-to="1" class="active"></li>
<li data-target="#myCarousel3" data-slide-to="2" class="active"></li>
<li data-target="#myCarousel4" data-slide-to="3" class="active"></li>
<li data-target="#myCarousel5" data-slide-to="4" class="active"></li>
</ol>

<div class="carousel-inner" style="width:1500px height:450px">

<div class="item active">
<img class="img-rounded img-responsive center-block sliderimage" 
src="resources/img10.png" >
</div>

<div class="item">
<img class="img-rounded img-responsive center-block sliderimage"
src="resources/img.png">
</div>

<div class="item">
<img class="img-rounded img-responsive center-block sliderimage"          
src="resources/img6.png" >
</div>

<div class="item">
<img class="img-rounded img-responsive center-block sliderimage"
src="resources/img7.png" >
</div>

<div class="item">
<img class="img-rounded img-responsive center-block sliderimage"
src="resources/img8.png" >
</div>
</div>

<a class="left carousel-control" href="#myCarousel" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left"></span>
<span class="sr-only">Previous</span>
</a>

<a class="right carousel-control" href="#myCarousel" data-slide="next">
<span class="glyphicon glyphicon-chevron-right"></span>
<span class="sr-only">Next</span>
</a>

</div>
</div>
<br>
<br>
<br>
<br>	
 <div class="clear spaces20"></div>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin:auto">

<div class="clear spaces10"></div>

 <c:if test="${empty listProduct}">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 left10 right10" align="center" style="margin:auto">
<span>No Products available</span>
</div>
</c:if> 

 	 <c:if test="${ !empty listProduct}">
	<c:forEach  items="${listProduct}" var="pro">
	<div class="col-lg-6 col-md-6 col-sm-6 spaces10">
		<img src="${pageContext.request.contextPath}/resources/products/${pro.productId}.png" style="width:100px; height:100px"/>
		
		<br>
		<span >Product Name:${pro.productName}</span>
		
		<%-- <br>
		<span >${pro.productDesc}</span>--%>		
		
		<br>
		<span >Price:${pro.price}</span>
		
		<br>
		<a href="<c:url value="/viewProduct/${pro.productId}" />">VIEW</a>
	
	</div>
	</c:forEach>
	</c:if>
<br>
<br>
<br>
<br><br>
<br>

</div>

</body>
</html>

 <jsp:include page="footer.jsp"></jsp:include>