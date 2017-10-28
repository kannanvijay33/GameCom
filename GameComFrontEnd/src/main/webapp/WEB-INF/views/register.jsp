<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register-GameComFrontEnd</title>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
			<div class="col-lg-12">

			<div class="row">
					
				<c:url value="/all/register" var="action"></c:url>
				<form:form action="${action}" method="post" name="form" modelAttribute="user">
				 
					 <body>
      <div id="container">
         <header>Register new account</header>
         <form method="post">
            <fieldset>
               <br/>
                             
               <input type="text" name="username" id="username" placeholder="Enter Name" required >
               <br/><br/>
                             
               <input type="text" name="phone" id="phone" placeholder="Enter Phone Number" required >
               <br/><br/>
               
               <input type="text" name="address" id="address" placeholder="Enter Address" required >
               <br/><br/>
               
               <input type="email" name="email" id="email" placeholder="Enter E-mail Address" required>
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
         </form>
      </div>
   </body>
   
<!--  <style>
   html {
    height: 100%;
    width: 100%;
}

body {
    background: url("https://images.unsplash.com/photo-1485802007047-7774de7208e5?dpr=1&auto=compress,format&fit=crop&w=1800&h") no-repeat center center fixed;
    background-size: cover;
    font-family: 'Droid Serif', serif;
}

#container {
    background: rgba(3, 3, 55, 0.5);
    width: 18.75rem;
    height: 25rem;
    margin: auto;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
}

header {
    text-align: center;
    vertical-align: middle;
    line-height: 3rem;
    height: 3rem;
    background: rgba(3, 3, 55, 0.7);
    font-size: 1.4rem;
    color: #d3d3d3;
}

fieldset {
    border: 0;
    text-align: center;
}

input[type="submit"] {
    background: rgba(235, 30, 54, 1);
    border: 0;
    display: block;
    width: 70%;
    margin: 0 auto;
    color: white;
    padding: 0.7rem;
    cursor: pointer;
}

input {
    background: transparent;
    border: 0;
    border-left: 4px solid;
    border-color: #FF0000;
    padding: 10px;
    color: white;
}

input[type="text"]:focus,
input[type="email"]:focus,
input[type="password"]:focus {
    outline: 0;
    background: rgba(235, 30, 54, 0.3);
    border-radius: 1.2rem;
    border-color: transparent;
}

::placeholder {
    color: #d3d3d3;
}

/*Media queries */

@media all and (min-width: 481px) and (max-width: 568px) {
    #container {
        margin-top: 10%;
        margin-bottom: 10%;
    }
}
    @media all and (min-width: 569px) and (max-width: 768px) {
        #container {
            margin-top: 5%;
            margin-bottom: 5%;
        }
    }
   </style> -->
			</form:form>
			</div>
		</div>
	</div>
</body>
</html>
