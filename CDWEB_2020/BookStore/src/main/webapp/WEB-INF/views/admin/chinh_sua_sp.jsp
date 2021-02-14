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
											sản phẩm</a></li>
									<li><a href="#reviews"><i class="icon nalika-picture"
											aria-hidden="true"></i> Hình ảnh</a></li>
									<li><a href="#INFORMATION"><i class="icon nalika-chat"
											aria-hidden="true"></i> Xem xét</a></li>
								</ul>
								<div id="myTabContent" class="tab-content custom-product-edit">


									<div class="product-tab-list tab-pane fade active in"
										id="description">
										<div class="row">

											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

												<form action="" method="POST" modelAttribute="book">
													<input type="hidden" name="maSach" value="${book.maSach }">
													<br />
													 Hình ảnh: <input name="hinhAnh" type="text"
														class="form-control" value="${book.hinhAnh }" /> 
														<br />
													Tên sách: <input name="tenSach" class="form-control"
														value="${book.tenSach }" /> 
														<br /> 
														Thể loại: <input
														type="text" name="theloaisach.maTheLoai"
														value="${book.theloaisach }"
														class="form-control" /> 
														<br />
														 Giá: <input name="gia"
														type="text" class="form-control" value="${book.gia }" /> <br />
													Tác giả: <input name="tenTacGia" class="form-control"
														type="text" value="${book.tenTacGia }" />
														 <br />
														 Mô tả: <input
														name="moTa" class="form-control" type="text"
														value="${book.moTa }" /> 
														<br /> 
														Khuyến mãi: <input
														name="khuyenMai" type="text" class="form-control"
														value="${book.khuyenMai }" /> 
														<br /> 
														Ngày sản xuất: <input
														name="ngayXuatBan" class="form-control" type="text"
														value="${book.ngayXuatBan }" /> 
														<br /> 
														Số lượng: <input
														name="soLuong" type="number" class="form-control"
														value="${book.soLuong }" /> <br /> <br />

													<div class="row">
														<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
															<div class="text-center custom-pro-edt-ds">
																<a href="">
																	<button type="submit"
																		class="btn btn-ctl-bt waves-effect waves-light m-r-10">
																		Lưu</button>
																</a> <a href="">
																	<button type="button"
																		class="btn btn-ctl-bt waves-effect waves-light">
																		Hủy</button>
																</a>
															</div>
														</div>
													</div>
												</form>
											</div>
										</div>

									</div>
									<div class="product-tab-list tab-pane fade" id="reviews">
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="review-content-section">
													<div class="row">
														<div class="col-lg-4">
															<div class="pro-edt-img">

																<img src="../image/chaothit.jpeg" width="130px" />
															</div>
														</div>
														<div class="col-lg-8">
															<div class="row">
																<div class="col-lg-12">
																	<div class="product-edt-pix-wrap">
																		<div class="input-group">
																			<span class="input-group-addon">TT</span> <input
																				type="text" class="form-control"
																				placeholder="Label Name">
																		</div>
																		<div class="row">
																			<div class="col-lg-6">
																				<div class="form-radio">
																					<form>
																						<div class="radio radiofill">
																							<label> <input type="radio" name="radio"><i
																								class="helper"></i>Lớn
																							</label>
																						</div>
																						<div class="radio radiofill">
																							<label> <input type="radio" name="radio"><i
																								class="helper"></i>Vừa
																							</label>
																						</div>
																						<div class="radio radiofill">
																							<label> <input type="radio" name="radio"><i
																								class="helper"></i>Nhỏ
																							</label>
																						</div>
																					</form>
																				</div>
																			</div>
																			<div class="col-lg-6">
																				<div class="product-edt-remove">
																					<button type="button"
																						class="btn btn-ctl-bt waves-effect waves-light">
																						Xóa <i class="fa fa-times" aria-hidden="true"></i>
																					</button>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-lg-4">
															<div class="pro-edt-img">

																<img src="../image/phobo.jpg" width="130px">
															</div>
														</div>
														<div class="col-lg-8">
															<div class="row">
																<div class="col-lg-12">
																	<div class="product-edt-pix-wrap">
																		<div class="input-group">
																			<span class="input-group-addon">TT</span> <input
																				type="text" class="form-control"
																				placeholder="Label Name">
																		</div>
																		<div class="row">
																			<div class="col-lg-6">
																				<div class="form-radio">


																					<form>
																						<div class="radio radiofill">
																							<label> <input type="radio" name="radio"><i
																								class="helper"></i>Lớn
																							</label>
																						</div>
																						<div class="radio radiofill">
																							<label> <input type="radio" name="radio"><i
																								class="helper"></i>Vừa
																							</label>
																						</div>
																						<div class="radio radiofill">
																							<label> <input type="radio" name="radio"><i
																								class="helper"></i>Nhỏ
																							</label>
																						</div>
																					</form>
																				</div>
																			</div>
																			<div class="col-lg-6">
																				<div class="product-edt-remove">
																					<button type="button"
																						class="btn btn-ctl-bt waves-effect waves-light">
																						Xóa <i class="fa fa-times" aria-hidden="true"></i>
																					</button>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-lg-4">
															<div class="pro-edt-img mg-b-0">

																<img src="../image/comtam.jpg" width="130px">
															</div>
														</div>
														<div class="col-lg-8">
															<div class="row">
																<div class="col-lg-12">
																	<div class="product-edt-pix-wrap">
																		<div class="input-group">
																			<span class="input-group-addon">TT</span> <input
																				type="text" class="form-control"
																				placeholder="Label Name">
																		</div>
																		<div class="row">
																			<div class="col-lg-6">
																				<div class="form-radio">
																					<form>
																						<div class="radio radiofill">
																							<label> <input type="radio" name="radio"><i
																								class="helper"></i>Lớn
																							</label>
																						</div>
																						<div class="radio radiofill">
																							<label> <input type="radio" name="radio"><i
																								class="helper"></i>Vừa
																							</label>
																						</div>
																						<div class="radio radiofill">
																							<label> <input type="radio" name="radio"><i
																								class="helper"></i>Nhỏ
																							</label>
																						</div>
																					</form>
																				</div>
																			</div>
																			<div class="col-lg-6">
																				<div class="product-edt-remove">
																					<button type="button"
																						class="btn btn-ctl-bt waves-effect waves-light">
																						Xóa <i class="fa fa-times" aria-hidden="true"></i>
																					</button>
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
									</div>
									<div class="product-tab-list tab-pane fade" id="INFORMATION">
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="review-content-section">
													<div class="card-block">
														<div class="text-muted f-w-400">
															<p>Chưa có đánh giá.</p>
														</div>
														<div class="m-t-10">
															<div class="txt-primary f-18 f-w-600">
																<p>Đánh giá của bạn</p>
															</div>
															<div class="stars stars-example-css detail-stars">
																<div class="review-rating">
																	<fieldset class="rating">
																		<input type="radio" id="star5" name="rating" value="5">
																		<label class="full" for="star5"></label> <input
																			type="radio" id="star4half" name="rating"
																			value="4 and a half"> <label class="half"
																			for="star4half"></label> <input type="radio"
																			id="star4" name="rating" value="4"> <label
																			class="full" for="star4"></label> <input type="radio"
																			id="star3half" name="rating" value="3 and a half">
																		<label class="half" for="star3half"></label> <input
																			type="radio" id="star3" name="rating" value="3">
																		<label class="full" for="star3"></label> <input
																			type="radio" id="star2half" name="rating"
																			value="2 and a half"> <label class="half"
																			for="star2half"></label> <input type="radio"
																			id="star2" name="rating" value="2"> <label
																			class="full" for="star2"></label> <input type="radio"
																			id="star1half" name="rating" value="1 and a half">
																		<label class="half" for="star1half"></label> <input
																			type="radio" id="star1" name="rating" value="1">
																		<label class="full" for="star1"></label> <input
																			type="radio" id="starhalf" name="rating" value="half">
																		<label class="half" for="starhalf"></label>
																	</fieldset>
																</div>
																<div class="clear"></div>
															</div>
														</div>
														<div class="input-group mg-b-15 mg-t-15">
															<span class="input-group-addon"><i
																class="icon nalika-user" aria-hidden="true"></i></span> <input
																type="text" class="form-control" placeholder="User Name">
														</div>
														<div class="input-group mg-b-15">
															<span class="input-group-addon"><i
																class="icon nalika-user" aria-hidden="true"></i></span> <input
																type="text" class="form-control" placeholder="Last Name">
														</div>
														<div class="input-group mg-b-15">
															<span class="input-group-addon"><i
																class="icon nalika-mail" aria-hidden="true"></i></span> <input
																type="text" class="form-control" placeholder="Email">
														</div>
														<div class="form-group review-pro-edt mg-b-0-pt">
															<button type="submit"
																class="btn btn-ctl-bt waves-effect waves-light">
																Submit</button>
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