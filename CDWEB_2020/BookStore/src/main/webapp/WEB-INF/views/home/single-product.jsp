<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Details || Witter Multipage Responsive Template</title>

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
						<h2>Chi tiết sản phẩm</h2>
						<ul class="breadcrumbs-list">
							<li><a title="Return to Home"
								href="<%=request.getContextPath()%>">Trang chủ</a></li>
							<li>Chi tiết sản phẩm</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumbs Area Start -->
	<!-- Single Product Area Start -->
	<div class="single-product-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-7">
					<div class="single-product-image-inner">
						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="one"
								style="width: 90%; margin-bottom: 30px; position: relative;">
								<a class="venobox" href="" data-gall="gallery" title=""> <img
									src="<%=request.getContextPath()%>${books.hinhAnh}" alt="" />
								</a>

								<div
									style="width: 15%; z-index: 999; position: absolute; top: 0; right: 0;">
									<img src="<%=request.getContextPath()%>/assets/img/sale.png"
										alt="" />
									<p
										style="font-size: 20px; position: absolute; left: 50%; top: 55%; transform: translate(-50%, -50%); color: white;">
										${books.khuyenMai }%</p>
								</div>

							</div>
							<div role="tabpanel" class="tab-pane" id="two">
								<a class="venobox" href="" data-gall="gallery" title=""><img
									src="<%=request.getContextPath()%>${books.hinhAnh}" alt="" />
								</a>
							</div>
							<div role="tabpanel" class="tab-pane" id="three">
								<a class="venobox" href="" data-gall="gallery" title=""><img
									src="<%=request.getContextPath()%>${books.hinhAnh}" alt="" />
								</a>
							</div>
						</div>
						<!-- Nav tabs -->
					</div>
				</div>
				<div class="col-md-6 col-sm-5">
					<div class="single-product-details">
						<h2>${books.tenSach}</h2>
						<div class="single-product-price">

							<h2>${books.gia }.000VND</h2>
							<span style="color: black; font-size: 18px;" class="old-price">500.000đ</span>

						</div>
						<form
							action="<%=request.getContextPath()%>/cart/add/${books.maSach }"
							method="get">
							<input style="visibility: hidden;" name="maSach" type="text"
								value="1" />
							<div class="product-attributes clearfix">
								<span class="pull-left" id="quantity-wanted-p"> <span
									class="dec qtybutton">-</span> <input id="soLuongMua"
									type="text" name="soLuongMua" value="1"
									class="cart-plus-minus-box" /> <span class="inc qtybutton">+</span>
								</span> <span> <input type="submit" class="cart-btn btn-default"
									value="Thêm vào giỏ hàng" />
								</span>
							</div>
						</form>
						<div class="add-to-wishlist">
							<a class="wish-btn" href="#"> <i class="far fa-heart"></i>
								Thêm vào danh sách yêu thích
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="p-details-tab-content">
						<div class="p-details-tab">
							<ul class="p-details-nav-tab" role="tablist">
								<li role="presentation" class="active"><a href="#more-info"
									aria-controls="more-info" role="tab" data-toggle="tab">Giới
										thiệu sản phẩm</a></li>
								<li role="presentation"><a href="#data"
									aria-controls="data" role="tab" data-toggle="tab">Thông tin
										sản phẩm</a></li>
								<li role="presentation"><a href="#reviews"
									aria-controls="reviews" role="tab" data-toggle="tab">Bình
										luận sản phẩm</a></li>
							</ul>
						</div>
						<div class="clearfix"></div>

						<div class="tab-content review">
							<div role="tabpanel" class="tab-pane active" id="more-info">
								<p>${books.moTa }</p>

							</div>
							<div role="tabpanel" class="tab-pane" id="data">
								<table class="table-data-sheet">
									<tbody>
										<tr class="odd">
											<td>Tên</td>
											<td>${books.tenSach}</td>
										</tr>
										<tr class="even">
											<td>Thể loại</td>
											<c:if test="${books.theloaisach == 1}">
												<td>Tiểu Thuyết</td>
											</c:if>
											<c:if test="${books.theloaisach == 2}">
												<td>Truyện Dài</td>
											</c:if>
											<c:if test="${books.theloaisach == 3}">
												<td>Truyện Ngắn</td>
											</c:if>
											<c:if test="${books.theloaisach == 4}">
												<td>Truyện Thiếu Nhi</td>
											</c:if>
										</tr>
										<tr class="odd">
											<td>Tên tác giả</td>
											<td>${books.tenTacGia }</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div role="tabpanel" class="tab-pane" id="reviews">
								<div id="product-comments-block-tab">
									<div class="comment-here">
										<div class="user-comment">
											<i class="fas fa-user-ninja"></i>
										</div>
										<form name="commentArea" class="AreaComment">
											<label style="display: block;">NoName</label> <input
												type="text" placeholder="Thêm bình luận ...."
												name="commentText" /> <input type="button" value="Đăng"
												onclick="comment()" />
										</form>
									</div>
									<div id="CommentArea">
										<%-- <!-- <%
                                        ArrayList<Comment> listComment = (ArrayList<Comment>) request.getAttribute("listComment");
                                        for (int i = 0; i < listComment.size(); i++) {
                                    %> --> --%>
										<div class="comment-here"
											style="box-shadow: 0 1px 5px rgba(0, 0, 0, 0.15); padding: 10px 5px;">
											<div class="user-comment">
												<i class="fas fa-user-ninja"></i>
											</div>
											<div class="AreaComment"
												style="display: flex; flex-direction: column;">
												<p style="margin: 0px; font-weight: 600;">NoName</p>
												<p>No commnent</p>
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
	<!-- Single Product Area End -->
	<!-- Related Product Area Start -->
	<div class="related-product-area">
		<h2 class="section-title">Sản phẩm tương tự</h2>
		<div class="container">
			<div class="row">
				<div class="related-product indicator-style">
					<%-- <!-- <% ArrayList<Sach> listSach = (ArrayList<Sach>) request.getAttribute("listSach");
                    for (int i = 0; i < listSach.size(); i++) { %> --> --%>
					<c:forEach items="${listBook }" var="books"></c:forEach>
					<div class="col-md-3">
						<div class="single-banner">
							<div class="product-wrapper">
								<a href="single_product?ids=${books.maSach }"
									class="single-banner-image-wrapper"> <img alt=""
									src="<%=request.getContextPath()%>${books.hinhAnh}" />
								</a>
								<div class="product-description">
									<div class="functional-buttons">
										<a title="Thêm vào giỏ hàng" href="#"> <i
											class="fa fa-shopping-cart"></i>
										</a> <a href="#" title="Add to Wishlist"> <i
											class="far fa-heart"></i>
										</a> <a href="#" title="Xem nhanh" data-toggle="modal"
											data-target="#productModal1"> <i
											class="fas fa-compress-alt"></i>
										</a>
									</div>
								</div>
							</div>
							<c:if test="${books.khuyenMai > 10}">
								<div
									style="width: 15%; z-index: 999; position: absolute; top: 0; right: 0;">
									<img src="<%=request.getContextPath()%>/assets/img/sale.png"
										alt="" />
									<p
										style="font-size: 14px; position: absolute; left: 15%; top: 55%; transform: translate(0, -50%); color: white;">
										${books.khuyenMai }%</p>
								</div>




								<div class="banner-bottom text-center">
									<div class="banner-bottom-title" style="height: 40px;">
										<a href="#">${books.tenSach}</a>
									</div>
									<div style="color: #32b5f3;" class="price-2">
										${books.gia }.000 VND<span style="color: black;"
											class="old-price">500.000đ</span>
									</div>
								</div>
							</c:if>
							<c:if test="${books.khuyenMai <= 10}">
								<div class="banner-bottom text-center">
									<div class="banner-bottom-title" style="height: 40px">
										<a href="">${books.tenSach} </a>
									</div>
									<div style="color: #32b5f3" class="price-2">${books.gia }.000
										VND</div>
								</div>
							</c:if>


						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- Related Product Area End -->



	<!--FOOTER -->

	<jsp:directive.include file="footer.jsp" />

	<!-- END FOOTER -->
</body>
</html>