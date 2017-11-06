<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js""></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	 <div class="container">
			<div class="page-header">
		<br>
			</div>
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="panel with nav-tabs panel-primary">
						<div class="panel heading">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#tab1prime" data-toggle="tab">Category</a></li>
								<li><a href="#tab2prime" data-toggle="tab">Supplier</a></li>
								<li><a href="#tab3prime" data-toggle="tab">Product</a></li>
							</ul>
						</div>
						
			<div class="panel--body">
				<div class="tab-content">
					<div class="tab-pane fade in active" id="#tab1prime">
						<form method="post" action="<c:url value="/admin/saveCat"/>" class="form-signin">
							<span id="reuth-email" class=="reuth-email"></span>						
								
								<h3 class="input-title">Category ID</h3>
								<input class="form-control" type="number" name="catId" required/>
								
								<h3 class="input-title">Category Name</h3>
								<input class="form-control" type="text" name="catName" required/>
								
								<button class="btn btn-lg btn-primary" type="submit">Save</button>
								<button class="btn btn-lg btn-primary" type="reset">Cancel</button>
						</form>
					</div>
					
					<div class="tab-pane fade in fade" id="#tab2prime">
						<form method="post" action="<c:url value="/admin/saveSupp"/>" class="form-signin">
							<span id="reuth-email" class=="reuth-email"></span>						
								
								<h3 class="input-title">Supplier ID</h3>
								<input class="form-control" type="number" name="SupplierId" required/>
								
								<h3 class="input-title">Supplier Name</h3>
								<input class="form-control" type="text" name="SupplierName" required/>
								
								<button class="btn btn-lg btn-primary" type="submit">Save</button>
								<button class="btn btn-lg btn-primary" type="reset">Cancel</button>
						</form>
					</div>
					
					<div class="tab-pane fade in fade" id="#tab3prime">
						<form method="post" action="<c:url value="/admin/saveProd"/>" class="form-signin" enctype="multipart/form-data">
							<span id="reuth-email" class=="reuth-email"></span>						
								
								<h3 class="input-title">Product Name</h3>
								<input class="form-control" type="text" name="productName" required/>
								
								<h3 class="input-title">Product Stock</h3>
								<input class="form-control" type="text" name="stock" required/>
								
								<h3 class="input-title">Product Desctiption</h3>
								<input class="form-control" type="text" name="productDesc" required/>
								
								<h3 class="input-title">Product Price</h3>
								<input class="form-control" type="text" name="price" required/>
								
								<div class="form-group">
									<h4>Select Category</h4><br>
										<select class="form-control" name="pCat" required>
										<option value="">---------Category Choices----------</option>
											<c:forEach items="${CategoryList}" var="cat">
											<option value="${cat.catId}"${cat.catName}></option></c:forEach>
										</select>
								</div>
								
								<div class="form-group">
									<h4>Select Supplier</h4><br>
										<select class="form-control" name="pSupp" required>
										<option value="">---------Supplier Choices----------</option>
											<c:forEach items="${SupplierList}" var="sup">
											<option value="${sup.SupplierId}"${sup.SupplierName}></option></c:forEach>
										</select>
								</div>
								
								<br><br>
								
								<div class="fileinput fileinput-new" data-provider="fileinput">
								<tr>
									<td>Image</td>
									<td><input class="form-control" type="file" name="file" accept="/image/*"></td>
								</tr>
								
								</div>

								<button class="btn btn-lg btn-primary" type="submit">Save</button>
								<button class="btn btn-lg btn-primary" type="reset">Cancel</button>
						</form>
					</div>
				
				
				
				</div>
			
			
			</div>	
				</div>
				</div>
			</div>
		</div>
	 </div>
</body>
</html> --%>