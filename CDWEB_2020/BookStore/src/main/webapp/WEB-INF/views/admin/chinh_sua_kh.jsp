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
									<li class="active"><a href="#description"> <i
											class="icon nalika-edit" aria-hidden="true"> </i> Chỉnh sửa
											người dùng
									</a></li>
								</ul>
								<div id="myTabContent" class="tab-content custom-product-edit">
									<div class="product-tab-list tab-pane fade active in"
										id="description">
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<form method="post" modelAttribute="user" action="">
													<input type="hidden" name="idUser" value="${user.idUser }" />
													* Username: <input name="email" type="text"
														class="form-control" value="${user.email }" /> <br /> *
													Địa chỉ Email: <input name="username" type="text"
														class="form-control" value="${user.username }" /> <br />
													* Mật khẩu: <input type="password" name="password"
														class="form-control" value="${user.password }" /> <br />
													* Nhập lại mật khẩu: <input type="password" name="request"
														class="form-control" value="${user.request }" /> <br />
													Giới tính: <select name="gender" class="form-control">
														<option value="Nam">Nam</option>
														<option value="Nữ">Nu</option>
														<option value="Khác">Khac</option>

													</select> <br /> * Ngày sinh: <input name="dateOfBirth" type="text"
														class="form-control" value="${user.dateOfBirth }" /> <br />
													* Số điện thoại: <input name="phone" class="form-control"
														value="${user.phone }" type="text" /> <br /> * Địa chỉ:
													<input name="address" class="form-control"
														value="${user.address }" type="text" /> <br />
													<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="text-center custom-pro-edt-ds">
															<button type="submit"
																class="btn btn-ctl-bt waves-effect waves-light">
																LƯU</button>
															<a href="">
																<button type="button"
																	class="btn btn-ctl-bt waves-effect waves-light">
																	HỦY</button>
															</a>
														</div>
													</div>
												</form>
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

	<jsp:directive.include file="footer.jsp" />

	<!-- END FOOTER -->
</body>
</html>