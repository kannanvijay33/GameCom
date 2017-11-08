<%@include file="/WEB-INF/views/header.jsp"%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

<div class="container">
	<div class="row">

		<div class="col md-4 myform" style="width: 600px; margin:20px auto;">
			<div class="myform_head">

				<h3>GameCom Login Here!!</h3>
			</div>
			
			<!-- Form login -->
			<c:url value="/j_spring_security_check" var="action"></c:url>
		<form:form action="${action}" class="log" method="post" >

			
				<div class="form-group">
					<label>User Name</label>
					<input type="text" name="j_username" class="newtext form-control"
						placeholder="Username"/>
						
				</div>

				<div class="form-group">
					<label>Password</label> 
					<input type="password" name="j_password" class="newtext form-control" placeholder="Password" />
				</div>
				<c:url value="/register" var="register"></c:url>
			<u><a href="${register}">New User?</a></u><br>
				<!-- <div class="form-group">
					<label for="CategoryImage">Upload Image</label> <input type="file"
						class="form-control-file" id="CategoryImage">
				</div> -->

				<button type="submit" class=" btn-green btn btn-primary">Login</button>
			</form:form>
		</div>
	</div>
</div>

<%@include file="/WEB-INF/views/footer.jsp"%>