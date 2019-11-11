<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Member Add</title>
</head>

<body>
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Member Form</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-book"></i> Home</a></li>
			<li class="active">Master</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="box">

			<div class="form-container">

				<form:form method="POST" modelAttribute="member"
					class="form-horizontal" action="savemember">
					<div class="box-body">
						<div class="form-group">
							<label class="col-md-3" for="membername">Member Name</label>
							<div class="col-md-7">
								<form:input type="text" path="membername" id="membername"
									class="form-control input-sm" />
								<div class="has-error">
									<form:errors path="membername" class="help-inline" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3" for="dob">DOB</label>
							<div class="col-md-7">
								<form:input type="date" path="dob" id="dob"
									class="form-control input-sm" />
								<div class="has-error">
									<form:errors path="dob" class="help-inline" />
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
