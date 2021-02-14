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

	<div class="container marketing"
		style="width: 80%; float: right; margin-right: 30px">
		<h1 style="color: red;">CHI TIẾT ĐƠN HÀNG</h1>
		<br />

		<div class="payment-order clearfix">
			<h3>
				Mã đơn hàng của bạn: <b>${order.receiptId}</b>
			</h3>
			<p>
				Tên khách hàng: <b>${order.receiptName }</b>
			</p>
			<p>
				Số điện thoại: <b>${order.receiptPhone }</b>
			</p>
			<p>
				Địa chỉ giao hàng: <b>${order.receiptAddress}</b>
			</p>
			<p>
				Ngày đặt: <i>${order.receiptDate }</i>
			</p>
			<p>
				Tổng tiền: <b>${order.total }00VNĐ</b>
			</p>
		</div>

		<br />
		<h4>Thông tin đơn hàng</h4>
		<table class="table table-bordered">
			<tr>
				<th>Hình</th>
				<th>Tên sản phẩm</th>
				<th>Số lượng</th>
				<th>Đơn giá</th>
			</tr>
			<c:forEach items="${listdetail }" var="order">
				<tr>
					<td class="text-center"><img alt=""
						src="<%=request.getContextPath()%>${order.product.hinhAnh}"
						width="70" height="60" /></td>
					<td>${order.product.tenSach }</td>
					<td>${order.receiptItemQuantity }</td>
					<td>${order.receiptItemPrice }00VNĐ</td>
				</tr>
			</c:forEach>
		</table>
		<div class="clearfix col-md-12">
			<div class="button text-right">
				<a class="btn btn-default btn-danger"
					href="<%=request.getContextPath()%>/admin/listOrder">Quay lại
					quản lý đơn hàng</a>
			</div>
		</div>
		<hr class="featurette-divider">
	</div>
	<!--FOOTER -->

	<jsp:directive.include file="footer.jsp" />

	<!-- END FOOTER -->
</body>
</html>