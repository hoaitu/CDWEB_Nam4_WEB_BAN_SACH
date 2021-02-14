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
									<li class="active"><a href="#description"><i
											class="icon nalika-edit" aria-hidden="true"></i> Chỉnh sửa
											đơn hàng</a></li>
								</ul>
								<div id="myTabContent" class="tab-content custom-product-edit">
									<div class="product-tab-list tab-pane fade active in"
										id="description">
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												@foreach (DataRow dh in ViewBag.updateDH.Rows) {
												<form method="post">
													<input type="hidden" name="id" value="@dh["id"]">
													<div class="input-group mg-b-pro-edt">
														<select name="status" class="form-control col-xl-12">

															<option value="@dh["status"]">@dh["status"]</option>

															<option>Đang cập nhật</option>

															<option>Đã gia hàng</option>

															<option>Thanh toán thành công</option>

															<option>Đã huỷ</option>

														</select>
													</div>
													<div class="input-group mg-b-pro-edt">
														<span class="input-group-addon"> <i
															class="icon nalika-edit" aria-hidden="true"></i>
														</span> <input type="text" name="date" class="form-control"
															placeholder="Ngày cập nhật" value="@DateTime.Now">
													</div>
													<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="text-center custom-pro-edt-ds">
															<a href="">
																<button type="submit"
																	class="btn btn-ctl-bt waves-effect waves-light m-r-10">Lưu
																</button>
															</a>
															<button type="button"
																class="btn btn-ctl-bt waves-effect waves-light">Hủy
															</button>
														</div>
													</div>
												</form>
												}
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