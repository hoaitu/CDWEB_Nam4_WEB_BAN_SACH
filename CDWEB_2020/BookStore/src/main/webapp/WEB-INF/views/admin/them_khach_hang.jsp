﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

	<div class="all-content-wrapper">

		<!-- Single pro tab start-->
		<div class="single-product-tab-area mg-b-30">
			<!-- Single pro tab review Start-->
			<div class="single-pro-review-area">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="review-tab-pro-inner">
								<ul id="myTab3" class="tab-review-design">
									<li class="active"><a href="#description"><i
											class="icon nalika-edit" aria-hidden="true"></i> Thêm người
											dùng</a></li>
								</ul>
								<div id="myTabContent" class="tab-content custom-product-edit">
									<div class="product-tab-list tab-pane fade active in"
										id="description">
										<div class="row">

											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<form:form action="addUser" method="POST"
													modelAttribute="user" onsubmit="return matchpass()">
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
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--FOOTER -->
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
	<jsp:directive.include file="footer.jsp" />

	<!-- END FOOTER -->
</body>
</html>