<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Creat An Account || Witter Multipage Responsive Template</title>

</head>
<body>


	<!-- Start header section -->
	<jsp:directive.include file="header.jsp" />
	<!-- / header section -->

	<div class="all-content-wrapper color-line"></div>
	<div class="all-content-wrapper container-fluid">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="back-link back-backend">
					<a href="@Url.Action(" Index", "Admin")" class="btn btn-primary">Back
						to Dashboard</a>
				</div>
			</div>
		</div>
	</div>
	<div class="all-content-wrapper container-fluid">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"></div>
			<div class="col-md-4 col-md-4 col-sm-4 col-xs-12">
				<div class="text-center m-b-md custom-login">
					<h3>PLEASE LOGIN TO APP</h3>
					<p>This is the best app ever!</p>
				</div>
				<div class="hpanel">
					<div class="panel-body">
						<form action="@Url.Action(" Login","Admin")" id="loginForm"
							method="post">
							<div class="form-group">
								<label class="control-label" for="username">Username</label> <input
									type="text" placeholder="example@gmail.com"
									title="Please enter you username" required="" value=""
									name="username" id="username" class="form-control"> <span
									class="help-block small">Your unique username to app</span>
							</div>
							<div class="form-group">
								<label class="control-label" for="password">Password</label> <input
									type="password" title="Please enter your password"
									placeholder="******" required="" value="" name="password"
									id="password" class="form-control"> <span
									class="help-block small">Your strong password</span>
							</div>
							<div class="checkbox login-checkbox" style="padding: 0 30px">
								<label> <input type="checkbox" class="i-checks">
									Remember me
								</label>
								<p class="help-block small">(if this is a private computer)</p>
							</div>
							<button class="btn btn-success btn-block loginbtn" type="submit">Login</button>
							<a class="btn btn-default btn-block" href="@Url.Action("Register", "Admin")">Register</a>
						</form>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"></div>
		</div>
	</div>
	<!--FOOTER -->

	<jsp:directive.include file="footer.jsp" />

	<!-- END FOOTER -->
</body>
</html>