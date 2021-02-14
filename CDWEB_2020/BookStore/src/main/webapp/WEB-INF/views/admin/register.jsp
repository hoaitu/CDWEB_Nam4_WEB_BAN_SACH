﻿﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
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
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
			<div class="col-md-6 col-md-6 col-sm-6 col-xs-12">
				<div class="hpanel">
					<div class="panel-body">
						<form id="loginForm" onsubmit="return checksame()"
							action="@Url.Action(" Register","Admin")" method="post">
							<div class="row">
								<div class="form-group col-lg-12">
									<label>Username</label> <input class="form-control" type="text"
										name="username" required>
								</div>
								<div class="form-group col-lg-6">
									<label>Password</label> <input id="password" type="password"
										class="form-control" name="password" required>
								</div>
								<div class="form-group col-lg-6">
									<label>Repeat Password</label> <input id="repeatpwd"
										type="password" name="repeatpwd" class="form-control">
								</div>
								<div class="form-group col-lg-6">
									<label>Email Address</label> <input class="form-control"
										id="idmail" name="email" type="email" required>
								</div>
								<div class="form-group col-lg-6">
									<label>Repeat Email Address</label> <input class="form-control"
										id="idrepeatmail" name="repeatemail" type="email" required>
								</div>
								<div class="checkbox col-lg-6" style="margin-left: 25px">
									<input type="checkbox" class="i-checks" checked> Sigh
									up for our newsletter
								</div>
							</div>
							<div class="text-center">
								<button class="btn btn-success loginbtn" type="submit">Register</button>
								<a href="@Url.Action("Register", "Admin")">
									<button class="btn btn-default">Cancel</button>
								</a>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
		</div>
		<div class="row">
			<div class="col-md-12 text-center"></div>
		</div>
	</div>
	<script>
		submitOK = "true";
		var repeatpass = document.getElementById("repeatpwd");
		var pass = document.getElementById("password");
		repeatpass.onblur = function() {
			if (pass.value !== repeatpass.value) {
				alert("password and repeatpassword aren't duplicate");
				submitOK = "false";
			}
		}
		var repeatmail = document.getElementById("idrepeatmail");
		var mail = document.getElementById("idmail");
		repeatmail.onblur = function() {
			if (mail.value !== repeatmail.value) {
				alert("mail and repeatmail aren't duplicate")
				submitOK = "false";
			}

		}
		// function checksame() {
		//   var pass = document.getElementById("password");
		//   var repeatpass = document.getElementById("repeatpwd");
		//   if (pass.value!==repeatpass.value){
		//       alert("wrong");
		//   }
		// }
	</script>
	<!--FOOTER -->

	<jsp:directive.include file="footer.jsp" />

	<!-- END FOOTER -->
</body>
</html>