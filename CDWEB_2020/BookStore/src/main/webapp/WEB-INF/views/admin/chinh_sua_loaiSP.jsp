﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
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
									<li class="active"><a href="#description"><i
											class="icon nalika-edit" aria-hidden="true"></i> Chỉnh sửa
											loại sản phẩm</a></li>
								</ul>
								<div id="myTabContent" class="tab-content custom-product-edit">
									<div class="product-tab-list tab-pane fade active in"
										id="description">
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<form method="post" action=""
													modelAttribute="category">
													<input type="hidden" name="maTheLoai"
														value="${category.maTheLoai }" />
													<div class="review-content-section">
														<div class="input-group mg-b-pro-edt">
															<span class="input-group-addon"> <i
																class="icon nalika-edit" aria-hidden="true"> </i>
															</span> <input type="text" name="tenTheLoai"
																class="form-control" placeholder="Tên loại sản phẩm"
																value="${category.tenTheLoai }">
														</div>
													</div>
													<div class="text-center custom-pro-edt-ds">
														<button type="submit"
															class="btn btn-ctl-bt waves-effect waves-light m-r-10">
															Lưu</button>
														<a href="">
															<button type="button"
																class="btn btn-ctl-bt waves-effect waves-light m-r-10">
																HỦY</button>
														</a>
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
		<div class="footer-copyright-area">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="footer-copy-right"></div>
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