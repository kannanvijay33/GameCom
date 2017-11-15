<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <style>
body {
    background: url("https://n6-img-fp.akamaized.net/free-vector/modern-technological-elements-with-transparent-background_1035-7108.jpg?size=338&ext=jpg") no-repeat center center fixed;
    background-size: cover;
    font-family: 'Droid Serif', serif;
}
</style> -->
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
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register-GameComFrontEnd</title>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
			<div class="col-lg-12">

			<div class="row">
			
				<form:form action="saveregister" method="post" name="form" modelAttribute="user">
				 
					 <body>
      <div id="container">
         <header>Register new account</header>
        <%--  <form method="post"> --%>
            <fieldset>
               <br/>
                       
                <div class="form-group">
                <form:input path="name" type="text" id="name" placeholder="Enter Name" class="form-control"  />
                </div> 
               <br/><br/>
               
                <div class="form-group">
                <form:input path="email" type="text" id="email" placeholder="Enter E-mail Address"  class="form-control"  />
                </div>  
                <br/><br/>  
                
                 <div class="form-group">
                <form:input path="phone" type="text" id="phone" placeholder="Enter Phone Number" class="form-control"  />
                </div>    
               <br/><br/>
               
                 <%-- <div class="form-group">
                <form:input path="address" type="text" id="address" placeholder="Enter Address"  class="form-control"  />
                </div>               
                 <br/><br/>
                  --%>
                 <div class="form-group">
                <form:input path="password" type="password" id="password" placeholder="Enter Password"  class="form-control"  />
                </div>               
                 <br/><br/>
                 
                 
                <form:input path="role" type="hidden" id="role" value="ROLE_USER" class="form-control" />
                <form:input path="enabled" type="hidden" id="enabled" value="TRUE" class="form-control" />
                 
                  <div class="form-group">
                <form:input path="Country" type="text" id="country" placeholder="Enter Country"  class="form-control"  />
                </div>               
               
               <label for="submit"></label>
               <button type="submit" class="btn btn-lg btn-info">Register</button>

               <label for="reset"></label>
               <button type="reset" class="btn btn-lg btn-info">Cancel</button>
            </fieldset>
        <%--  </form> --%>
      </div>
   </body>
   			</form:form>
			</div>
		</div>
	</div>
</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>
