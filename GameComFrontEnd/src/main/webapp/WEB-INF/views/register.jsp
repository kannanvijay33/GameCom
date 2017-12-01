<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register-GameComFrontEnd</title>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	function formRegister() {
		// Make quick references to our fields
		
		var name = document.getElementById('name');
		var email = document.getElementById('email');
		var phone = document.getElementById('phone');
		var password = document.getElementById('password');
		var doorno = document.getElementById('billingaddress.doorno');
		var streetname = document.getElementById('billingaddress.streetname');
		var city = document.getElementById('billingaddress.city');
		var state = document.getElementById('billingaddress.state');
		var country = document.getElementById('billingaddress.country');
		var zipcode = document.getElementById('billingaddress.zipcode');
	
		// Check each input in the order that it appears in the form!
	if (notEmpty(name, "Username Should not be empty")) 
	{
	 if (isAlphabet(name,"Please enter only letters for Username")) 
	 {
	  if (notEmpty(email,"EmailId Should not be empty")) 
	  {
	   if(emailValidator(email,"Please Enter a valid Email id"))
	   {
		if (notEmpty(phone,"PhoneNumber Should not be empty")) 
		{
		 if (isNumeric(phone,"Please enter only number for PhoneNumber"))
		 {
		  if (notEmpty(password,"password Should not be empty"))
		  {
		   if (isAlphanumeric(password,"Numbers and Letters Only for Passwords")) 
		   {
			 if (notEmpty(doorno,"doorno Should not be empty")) 
			  {
				 if (isNumeric(doorno,"Please enter only number for doorno"))
			   
			 if (notEmpty(streetname, "streetname Should not be empty"))
				 {
				 if (isAlphabet(streetname,"Please enter only letters for streetname")) 
					 {
					 if (notEmpty(city, "city Should not be empty"))
						 {
						 if (isAlphabet(city,"Please enter only letters for city")) 
						 }
					 if (notEmpty(state, "state Should not be empty"))
						 {
						 if (isAlphabet(state,"Please enter only letters for state")) 
							 {
						 		if (notEmpty(country, "country Should not be empty"))
							 {
						 			 if (isAlphabet(country,"Please enter only letters for country")) 
						 				 {
						 				if (notEmpty(zipcode,"zipcode Should not be empty")) 
						 					{
						 					if (isNumeric(zipcode,"Please enter only number for zipcode"))
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
				 }
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
  
  function notEmpty(elem, helperMsg) 
  {
		if (elem.value.length == 0) 
		{
			alert(helperMsg);
			elem.focus(); // set the focus to this input
			return false;
		}
		return true;
	}
  
	function isNumeric(elem, helperMsg) 
	{
		var numericExpression = /^[0-9]+$/;
		if (elem.value.match(numericExpression)) 
		{
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphabet(elem, helperMsg) 
	{
		var alphaExp = /^[a-z A-Z]+$/;
		if (elem.value.match(alphaExp)) 
		{
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphanumeric(elem, helperMsg) 
	{
		var alphaExp = /^[0-9a-zA-Z]+$/;
		if (elem.value.match(alphaExp)) 
		{
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function emailValidator(elem, helperMsg) 
	{
		var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
		if (elem.value.match(emailExp)) 
		{
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
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
			<div class="col-lg-12">

			<div class="row">
			
				<form:form action="saveregister" method="post" name="form" modelAttribute="user" onsubmit="return formRegister()">
				 
					 <body>
      <div id="container">
         <header>Register new account</header>
        <%--  <form method="post"> --%>
            <fieldset>
               <br/>
                       
                <div class="form-group">
                <label>Name</label>
                <form:input path="name" type="text" id="name" placeholder="Enter Name" class="form-control"  />
                </div> 
               <br/><br/>
               
                <div class="form-group">
                <label>E-mail Address</label>
                <form:input path="email" type="text" id="email" placeholder="Enter E-mail Address"  class="form-control"  />
                </div>  
                <br/><br/>  
                
                 <div class="form-group">
                 <label>Phone Number</label>
                <form:input path="phone" type="text" id="phone" placeholder="Enter Phone Number" class="form-control"  />
                </div>    
               <br/><br/>
               
               <div class="form-group">
               <label>Password</label>
                <form:input path="password" type="password" id="password" placeholder="Enter Password"  class="form-control"  />
                </div>               
                 <br/><br/>
                 
                 <div class="form-group">
				<label>Door no</label>
				<form:input path="billingaddress.doorno" placeholder="Enter Door no...." class="form-control"/>
				</div>
				<br/><br/>

				<div class="form-group">
				<label>Street name</label>
				<form:input path="billingaddress.streetname" placeholder="Enter Street name...." class="form-control"/>
				</div>
				<br/><br/>

				<div class="form-group">
				<label>City</label>
				<form:input path="billingaddress.city" placeholder="Enter city...." class="form-control"/>
				</div>
				<br/><br/>

				<div class="form-group">
				<label>State</label>
				<form:input path="billingaddress.state" placeholder="Enter State...." class="form-control"/>
				</div>
				<br/><br/>

				<div class="form-group">
				<label>Country</label>
				<form:input path="billingaddress.country" placeholder="Enter country...." class="form-control"/>
				</div>
				<br/><br/>

				<div class="form-group">
				<label>Zipcode</label>
				<form:input path="billingaddress.zipcode" placeholder="Enter Zipcode...." class="form-control"/>
				</div>
				<br/><br/>
                 
                 
                 
                <form:input path="role" type="hidden" id="role" value="ROLE_USER" class="form-control" />
                <form:input path="enabled" type="hidden" id="enabled" value="TRUE" class="form-control" />
                 
              
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