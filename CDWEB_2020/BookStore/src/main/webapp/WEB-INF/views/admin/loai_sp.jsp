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

	<div class="all-content-wrapper product-status mg-b-30">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="product-status-wrap">
					<h4>Products List</h4>
					<div class="add-product">@Html.ActionLink("Thêm sản phẩm",
						"them_sp", "Admin")</div>
					<table>
						<tbody>
							<tr>
								<th>Hình ảnh</th>
								<th>Tên</th>
								<th>Trạng thái</th>
								<th>Số lượng</th>
								<th>Giá giảm</th>
								<th>Giá gốc</th>
								<th>Loại</th>
								<th>Thao tác</th>
							</tr>
							@foreach (Product product in Model) {
							<tr>
								<td><img src="@product.Images" width="50px" alt="" /></td>
								<td>@product.Name</td>
								<td>@if (@product.Quantity == 0) {
									<button class="pd-setting"
										style="background-color: red; color: white">hết</button> }
									else if (@product.Quantity < 10) {
									<button class="pd-setting"
										style="background-color: orange; color: white">sắp
										hết</button> } else {
									<button class="pd-setting"
										style="background-color: green; color: white">còn</button> }
								</td>
								<td>@product.Quantity</td>
								<td>@{ double discount = product.Price * 80 / 100; }
									@discount</td>
								<td>@product.Price</td>
								<td>@if (@product.Type == 1) {
									<p>CƠM</p> } else if (@product.Type == 2) {
									<p>GỎI</p> } else if (@product.Type == 3) {
									<p>MÓN NƯỚC</p> } else if (@product.Type == 4) {
									<p>CHÁO</p> }else if (@product.Type == 5) {
									<p>SOUP</p> } else {
									<p>ĐỒ UỐNG</p> }

								</td>
								<td><a href="@Url.Action("
									chinh_sua_sp","Admin",new{id=@product.Id})"><button
											data-toggle="tooltip" title="Edit" class="pd-setting-ed">
											<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
										</button> </a> <a onclick="return confirm('Bạn có chắc muốn xóa')"
									href="@Url.Action(" xoa_sp","Admin", new{id=@product.Id})"><button
											data-toggle="tooltip" title="Trash" class="pd-setting-ed">
											<i class="fa fa-trash-o" aria-hidden="true"></i>
										</button> </a></td>
							</tr>
							}
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<a id="scrollUp" href="#"
		style="position: fixed; z-index: 2147483647; display: block;"> <i
		class="fa fa-angle-up"></i>
	</a>
	<!--FOOTER -->

	<jsp:directive.include file="footer.jsp" />

	<!-- END FOOTER -->
</body>
</html>