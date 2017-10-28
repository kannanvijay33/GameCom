<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
.img-rounded
{
}
</style>
<title>GameComFrontEnd</title>

<meta name="viewport" content="width=device-width,initial-scale=1">
<meta charset="utf-8">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js""></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
<div class="container">
<h2><i>GameCom</i></h2>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
<ol class="carousel-indicators">
<li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
<li data-target="#myCarousel2" data-slide-to="1" class="active"></li>
<li data-target="#myCarousel3" data-slide-to="2" class="active"></li>
</ol>

<div class="carousel-inner">

<div class="item active">
<c:url value="resources/img1.png" var="img1" ></c:url>
<img class="img-rounded" class="img-responsive center-block" 
src="${img1}" alt="img1" style="width:1280px" height="720px">
</div>

<div class="item">
<c:url value="resources/img2.png" var="img2" ></c:url>
<img class="img-rounded" class="img-responsive center-block" 
src="${img2}" alt="img2" style="width:1280px" height="720px">
</div>

<div class="item">
<c:url value="resources/img4.png" var="img4" ></c:url>
<img class="img-rounded" class="img-responsive center-block" 
src="${img4}" alt="img4" style="width:1280px" height="720px">
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
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
