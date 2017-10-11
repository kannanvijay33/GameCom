<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@tagliburi="http://www.springframework.org/tags/form"prefix="spring"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<linkhref="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"rel="stylesheet">
<linkhref="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"rel="stylesheet">
<scriptsrc="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<scriptsrc="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<metahttp-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<linkrel="stylesheet"href="/resources/registration.css">
</head>
<body>
<jsp:includepage="header.jsp"></jsp:include>

<divclass="container">
<h1> Customer SignUp Form</h1>

<divclass="col-lg-12">

<divclass="row">

<spr:form modelAttribute="user" action="saveRegister" method="post">
<divclass="col-lg-12">

<divclass="form-group">
<label>Email</label>
<spr:inputpath="email"placeholder="Enter Email Id..."class="form-control"/>
</div>

<divclass="form-group">
<label>Password</label>
<spr:inputpath="password"placeholder="Enter password..."class="form-control"/>
</div>

<divclass="form-group">
<label>Address</label>
<spr:inputpath="address"placeholder="Enter address..."class="form-control"/>
</div>

<divclass="form-group">
<label>Phone</label>
<spr:inputpath="phone"placeholder="Enter phone..."class="form-control"/>
</div>

<divclass="form-group">
<label>Country</label>
<spr:inputpath="country"placeholder="Enter country..."class="form-control"/>
</div>

<buttontype="submit"class="btn btn-lg btn-info">Submit</button>
<buttontype="reset"class="btn btn-lg btn-info">Cancel</button>

</div>
</div>
</div>

</spr:form>

</body>
</html>
