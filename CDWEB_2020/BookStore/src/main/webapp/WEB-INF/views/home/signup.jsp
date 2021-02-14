<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Creat An Account || Witter Multipage Responsive Template</title>
<style>
.error {
	color: red;
}
</style>
</head>
<body>

	<!-- Start header section -->
	<jsp:directive.include file="header.jsp" />
	<!-- / header section -->



	<!-- Breadcrumbs Area Start -->
	<div class="breadcrumbs-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="breadcrumbs">
						<h2>Đăng kí</h2>
						<ul class="breadcrumbs-list">
							<li><a title="Return to Home"
								href="<%=request.getContextPath()%>">Trang chủ</a></li>
							<li>Đăng kí</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumbs Area Start -->
	<!-- Loging Area Start -->
	<div class="login-account section-padding">
		<div class="container">
			<div class="row"
				style="display: flex; align-items: center; justify-content: center;">
				<div class="col-md-6 col-sm-6">
					<h2>Đăng ký thành viên</h2>
					<form:form action="signup" method="POST" modelAttribute="user"
						name="form1" onsubmit="return matchpass()">
					 * Username: <form:input path="email" cssClass="form-control" />
						<form:errors path="email" cssClass="error" />
						<br />
					    * Địa chỉ Email: <form:input path="username"
							cssClass="form-control" />
						<form:errors path="username" cssClass="error" />
						<br />
						    * Mật khẩu: <form:password path="password"
							cssClass="form-control" />
						<form:errors path="password" cssClass="error" />
						<br />
					    * Nhập lại mật khẩu: <form:password path="request"
							cssClass="form-control" />
						<form:errors path="request" cssClass="error" />
						<span id="sessages" style="color: red;"></span>
						<br />
						* Giới tính: <select name="gender" class="form-control">
							<option value="Nam">Nam</option>
							<option value="Nữ">Nu</option>
							<option value="Khác">Khac</option>

						</select>
						<form:errors path="gender" cssClass="error" />
						<br />
						* Ngày sinh: <input name="dateOfBirth" type="datetime"
							class="form-control" />
						<form:errors path="dateOfBirth" cssClass="error" />
						<br />
					    * Số điện thoại: <form:input path="phone"
							cssClass="form-control" />
						<form:errors path="phone" cssClass="error" />
						<br />
						    * Địa chỉ: <form:input path="address" cssClass="form-control" />
						<form:errors path="address" cssClass="error" />
						<br />

						<button type="submit">Lưu</button>
						<button type="reset">Huỷ bỏ</button>
					</form:form>

				</div>
			</div>
		</div>
	</div>
	<!-- Loging Area End -->
	<script type="text/javascript">
		function matchpass() {
			var firstpassword = document.form1.password.value;
			var secondpassword = document.form1.request.value;

			if (firstpassword == secondpassword) {
				return true;
			} else {
				document.getElementById("sessages").innerHTML = "password must be same!";

				return false;
			}
		}
	</script>
	<script type="text/javascript">
		var validations = {
			email : [
					/^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/,
					'Please enter a valid email address' ]
		};
		$(document).ready(function() {
			// Check all the input fields of type email. This function will handle all the email addresses validations
			$("input[type=email]").change(function() {
				// Set the regular expression to validate the email 
				validation = new RegExp(validations['email'][0]);
				// validate the email value against the regular expression
				if (!validation.test(this.value)) {
					// If the validation fails then we show the custom error message
					this.setCustomValidity(validations['email'][1]);
					return false;
				} else {
					// This is really important. If the validation is successful you need to reset the custom error message
					this.setCustomValidity('');
				}
			});
		})
	</script>
	<!--FOOTER -->

	<jsp:directive.include file="footer.jsp" />

	<!-- END FOOTER -->

</body>
</html>