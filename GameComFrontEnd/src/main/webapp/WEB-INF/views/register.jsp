<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
    background: url("https://n6-img-fp.akamaized.net/free-vector/modern-technological-elements-with-transparent-background_1035-7108.jpg?size=338&ext=jpg") no-repeat center center fixed;
    background-size: cover;
    font-family: 'Droid Serif', serif;
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
					
			<!-- 	<c:url value="saveregister" var="action"></c:url> -->
				<form:form action="saveregister" method="post" name="form" modelAttribute="user">
				 
					 <body>
      <div id="container">
         <header>Register new account</header>
        <%--  <form method="post"> --%>
            <fieldset>
               <br/>
                             
               <input type="text" name="name" id="name" placeholder="Enter UserName" required >
               <br/><br/>
               
               <input type="email" name="email" id="email" placeholder="Enter E-mail Address" required>
               <br/><br/>
                             
               <input type="text" name="phone" id="phone" placeholder="Enter Phone Number" required >
               <br/><br/>
               
               <input type="text" name="address" id="address" placeholder="Enter Address" required >
               <br/><br/>
               
                <input type="password" name="password" id="password" placeholder="Enter Password" required>
               <br/><br/>
               
               <input type="text" name="role" id="role" placeholder="Enter Role" required >
               <br/><br/>
               
               <input type="text" name="country" id="country" placeholder="Enter Country" required >
               <br/><br/>
               
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
