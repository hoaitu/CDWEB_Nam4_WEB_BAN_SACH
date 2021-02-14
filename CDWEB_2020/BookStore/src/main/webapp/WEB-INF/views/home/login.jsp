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


	<!-- Mobile Menu Start -->
	<div class="mobile-menu-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="mobile-menu">
						<nav id="dropdown">
							<ul>
								<li><a href="shop">Sách</a></li>
								<li><a href="shop">Khuyến mãi</a></li>
								<li><a href="#footer">Liên Hệ</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Mobile Menu End -->

	<!-- Breadcrumbs Area Start -->
	<div class="breadcrumbs-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="breadcrumbs">
						<h2>Đăng nhập</h2>
						<ul class="breadcrumbs-list">
							<li><a title="Return to Home" href="/BookStore">Trang
									chủ</a></li>
							<li>Đăng nhập</li>
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

					<form class="create-account-form"
						action='<c:url value="/j_spring_security_login"></c:url>'
						method='post'>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
						<h2 class="heading-title">Bạn đã có tài khoản ?</h2>
						<p style="color: red;">
							${message }
							<%-- <%=request.getAttribute("msgLogin") != null ? request.getAttribute("msgLogin") : ""%> --%>
						</p>
						<p class="form-row">
							<input style="outline: none;" type="email" name="username"
								value="hoaitugl123@gmail.com" placeholder="Địa chỉ email" />
						</p>
						<p class="form-row">
							<input style="outline: none;" type="password" name="password"
								value="123456789" placeholder="Mật khẩu" />
						</p>
						<p class="lost-password form-group">
							<a href="#" rel="nofollow">Quên mật khẩu ?</a>
						</p>
						<div class="submit">
							<button name="submitcreate" id="submitcreate" type="submit"
								class="btn-default">
								<span> <i class="fa fa-user left"></i> Đăng nhập
								</span>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Loging Area End -->



	<!--FOOTER -->

	<jsp:directive.include file="footer.jsp" />

	<!-- END FOOTER -->
</body>
</html>