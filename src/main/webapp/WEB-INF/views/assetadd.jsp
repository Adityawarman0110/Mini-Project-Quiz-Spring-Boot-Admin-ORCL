<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Asset Form</title>
</head>

<body>
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Asset Form</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-book"></i> Home</a></li>
			<li class="active">Master</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="box">

			<div class="form-container">

				<form:form method="POST" modelAttribute="asset"
					class="form-horizontal" action="saveasset">
					<div class="box-body">
						<div class="form-group">
							<label class="col-md-3" for="assetnumber">Asset Number</label>
							<div class="col-md-7">
								<form:input type="Number" path="assetnumber" id="assetnumber"
									class="form-control input-sm" />
								<div class="has-error">
									<form:errors path="assetnumber" class="help-inline" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3" for="assetname">Asset Name</label>
							<div class="col-md-7">
								<form:input type="text" path="assetname" id="assetname"
									class="form-control input-sm" />
								<div class="has-error">
									<form:errors path="assetname" class="help-inline" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3" for="category">Category</label>
							<div class="col-md-7">
								<form:select path="category" id="category"
									class="form-control input-sm">
									<form:option value="">Select Category</form:option>
									<form:options items="${category}" />
								</form:select>
								<div class="has-error">
									<form:errors path="category" class="help-inline" />
								</div>
							</div>
						</div>

					</div>
					<div class="box-footer">
						<input type="submit" value="Register"
							class="btn btn-primary btn-sm">
					</div>
				</form:form>
			</div>
		</div>
	</section>
</body>
</html>
