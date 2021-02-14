<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us || Witter Multipage Responsive Template</title>

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
						<h2>Cá nhân</h2>
						<ul class="breadcrumbs-list">
							<li><a title="Return to Home"
								href="<%=request.getContextPath()%>">Trang chủ</a></li>
							<li>Cá nhân</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumbs Area Start -->
	<!-- My Account Area Start -->
	<div class="my-account-area section-padding">
		<div class="container">
			<div class="section-title2">
				<p>Chào mừng bạn đến với tài khoản của bạn. Tại đây bạn có thể
					quản lý tất cả các thông tin cá nhân và đơn đặt hàng của bạn.</p>
			</div>
			<div class="row">
				<div class="addresses-lists">
					<div class="col-xs-12 col-sm-6 col-lg-6">
						<div class="panel-group" id="accordion" role="tablist"
							aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
									<h4 class="panel-title">
										<a role="button" data-toggle="collapse"
											data-parent="#accordion" href="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne"> <i
											class="fa fa-building"></i> <span>Thông tin cá nhân</span>
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in"
									role="tabpanel" aria-labelledby="headingOne">
									<div class="panel-body">
										<div class="coupon-info">
											<h1 class="heading-title">Thông tin cá nhân của bạn</h1>
											<p class="coupon-text">Hãy chắc chắn để cập nhật thông
												tin cá nhân của bạn nếu nó đã thay đổi.</p>
											<p class="required">*Bắt buộc</p>
											<form action="my_account" method="post" modelAttribute="user">
												<label>Username </label>
												<p class="form-row">
													<input type="text" placeholder="Username *"
														value="${user.username }" name="username" />
												</p>
												<label>Địa chỉ email </label>
												<p class="form-row">
													<input type="text" placeholder="Địa chỉ email *"
														value="${user.email }" name="email" />
												</p>
												<label>Địa chỉ </label>
												<p class="form-row">
													<input type="text" placeholder="Địa chỉ *" name="address"
														value="${user.address }" />
												</p>
												<label>Số điện thoại </label>
												<p class="form-row">
													<input type="text" placeholder="Số điện thoại *"
														name="phone" value="${user.phone }" />
												</p>

												<label>Giới tính </label>
												<p class="form-row">
													<input type="text" name="gender" value="${user.gender }"
														class="form-control" />
												</p>

												<label>Ngày sinh </label>
												<p class="form-row">
													<input type="text" name="dateOfBirth"
														value="${user.dateOfBirth }" />
												</p>

												<p>Thay đổi mật khẩu</p>
												<p class="form-row">
													<input type="password" name="current-pass"
														placeholder="Mật khẩu hiện tại" value="${user.password }" />
												</p>
												<p class="form-row">
													<input type="password" name="password"
														placeholder="Mật khẩu mới" />
												</p>
												<p class="form-row">
													<input type="password" name="request"
														placeholder="Nhập lại mật khẩu mới" />
												</p>
												<div class="checkbox">
													<label> <span><input type="checkbox"
															checked="checked" /></span> Đăng ký nhận bản tin của chúng tôi!
													</label>
												</div>
												<a title="Save" class="btn button button-small"
													href="<%=request.getContextPath()%>"> <span> Cập
														nhật <i class="fa fa-chevron-right"></i>
												</span>
												</a> <input type="submit" value="Đổi mật khẩu" />
											</form>
										</div>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse"
											data-parent="#accordion" href="#collapseTwo"
											aria-expanded="false" aria-controls="collapseTwo"> <i
											class="fa fa-list-ol"></i> <span>Quản lý đơn hàng</span>
										</a>
									</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse"
									role="tabpanel" aria-labelledby="headingTwo">
									<div class="panel-body">
										<div class="coupon-info">
											<h1 class="heading-title">LỊCH SỬ ĐƠN HÀNG</h1>
											<p class="coupon-text">Dưới đây là các đơn đặt hàng bạn
												đã đặt kể từ khi tài khoản của bạn được tạo.</p>
											<div class="order-history">
												<p class="alert">Bạn chưa có đơn hàng nào.</p>

												<table id="dataTable"
													class="table table-bordered table-condensed table-hover table-striped dataTable no-footer"
													role="grid" aria-describedby="dataTable_info">
													<thead>
														<tr role="row">
															<th class="sorting_asc" tabindex="0"
																aria-controls="dataTable" rowspan="1" colspan="1"
																aria-sort="ascending"
																aria-label="ID: activate to sort column descending"
																style="width: 135px;">Id Bill</th>
															<th class="sorting_asc" tabindex="0"
																aria-controls="dataTable" rowspan="1" colspan="1"
																aria-sort="ascending"
																aria-label="ID: activate to sort column descending"
																style="width: 548px;">Hình ảnh</th>
															<th class="sorting_asc" tabindex="0"
																aria-controls="dataTable" rowspan="1" colspan="1"
																aria-sort="ascending"
																aria-label="ID: activate to sort column descending"
																style="width: 548px;">Tên sách</th>
															<th class="sorting" tabindex="0"
																aria-controls="dataTable" rowspan="1" colspan="1"
																aria-label="Email: activate to sort column ascending"
																style="width: 223px;">Số lượng</th>
															<th class="sorting" tabindex="0"
																aria-controls="dataTable" rowspan="1" colspan="1"
																aria-label="Email: activate to sort column ascending"
																style="width: 462px;">Giá</th>
														</tr>
													</thead>
													<c:forEach items="${receipts}" var="rs">
														<tbody>

															<tr role="row" class="odd">
																<td class="sorting_1">${rs.receipt.receiptId }</td>
																<td class="sorting_1"><img
																	src="<%=request.getContextPath()%>${rs.product.hinhAnh}" /></td>
																<td class="sorting_1">${rs.product.tenSach }</td>
																<td>${rs.receiptItemQuantity }</td>
																<td>${rs.receiptItemPrice }00VNĐ</td>
															</tr>
														</tbody>
													</c:forEach>
												</table>
												<div class="progress" style="width: 85%; margin: auto;">
													<div
														class="progress-bar progress-bar-striped progress-bar-animated bg-danger"
														role="progressbar" aria-valuenow="75" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
												<div
													style="display: flex; justify-content: space-between; margin-bottom: 20px; font-size: 14px; text-align: center; width: 100%; margin: auto;">
													<p style="background-color: transparent; color: black">Đặt
														hàng thành công</p>
													<p style="background-color: transparent; color: black">Đang
														lấy hàng</p>
													<p style="background-color: transparent; color: black">Đóng
														gói xong</p>
													<p style="background-color: transparent; color: black">Bàn
														giao vận chuyển</p>
													<p style="background-color: transparent; color: black">Giao
														hàng thành công</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-lg-6">
						<div class="myaccount-link-list">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="#"> <i class="fa fa-heart"></i> <span>Danh
												sách yêu thích của tôi</span>
										</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="<%=request.getContextPath()%>/shopping_cart"> <i
											class="flaticon-shop"></i> <span>Giỏ hàng của tôi</span>
										</a>
									</h4>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="create-account-button pull-left">
						<a href="<%=request.getContextPath()%>"
							class="btn button button-small" title="Home"> <span> <i
								class="fa fa-chevron-left"></i> Trở về
						</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- My Account Area End -->




	<!--FOOTER -->

	<jsp:directive.include file="footer.jsp" />

	<!-- END FOOTER -->

</body>
</html>