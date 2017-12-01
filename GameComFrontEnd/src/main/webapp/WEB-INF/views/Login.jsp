<%@include file="/WEB-INF/views/header.jsp"%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script>
function login() 
{
	var  email = document.getElementById('email');
	var password = document.getElementById('password');
	
	if (notEmpty(email, " email Should not be empty")) 
	{
		if (notEmpty(password, "password Should not be empty")) 
			{
				
			}
		return true;
	}
	
	function notEmpty(elem, helperMsg) {
		if (elem.value.length == 0) {
			alert(helperMsg);
			elem.focus(); // set the focus to this input
			return false;
		}
		return true;
	}	
}

</script>

<div class="container">
	<div class="row">

		<div class="col md-4 myform" style="width: 600px; margin:20px auto;">
			<div class="myform_head">

				<h3>GameCom Login Here!!</h3>
			</div>
			
			<!-- Form login -->
			<c:url value="/j_spring_security_check" var="action"></c:url>
		<form:form action="${action}" class="log" method="post" id="" onsubmit="return login()">

			
				<!-- <div class="form-group">
					<label>Email ID</label>
					<input type="text" name="j_username" class="newtext form-control"
						placeholder="Email"/>
						
				</div>
 -->
 
 				<div class="form-group">
					<label>Email ID</label>
					<input type="text" name="j_username" class="newtext form-control"
						placeholder="Email"/>
						
				</div>
 				
				<div class="form-group">
					<label>Password</label> 
					<input type="password" name="j_password" class="newtext form-control" placeholder="Password" />
				</div>
				<c:url value="/register" var="register"></c:url>
			<u><a href="${register}">New User?</a></u><br>
				

				<button type="submit" class=" btn-green btn btn-primary">Login</button>
			</form:form>
		</div>
	</div>
</div>
