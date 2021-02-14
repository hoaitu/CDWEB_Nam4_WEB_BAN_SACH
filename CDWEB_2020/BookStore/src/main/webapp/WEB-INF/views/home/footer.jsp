
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!DOCTYPE html>
<html class="no-js" lang="">
<head>

</head>
<body>
	<!-- Footer Area Start -->
	<footer id="footer">
		<div class="footer-top-area">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-8">
						<div class="footer-left">
							<a href="/BookStore"> <img
								src="<%=request.getContextPath()%>/assets/img/logo-2.png" alt="" />
							</a>
							<p>Sứ mệnh của chúng tôi là mang đến cho khách hàng tận hưởng
								các dịch vụ chất lượng và nhận được những cuốn sách tốt nhất.</p>
							<ul class="footer-contact">
								<li><i class="flaticon-location"></i> Q.Thủ Đức, Tp.Hồ Chí
									Minh</li>
								<li><i class="flaticon-technology"></i> (+800) 123 4567 890
								</li>
								<li><i class="flaticon-web"></i> info@bookstore.com</li>
							</ul>
						</div>
					</div>
					<div class="col-md-2 col-sm-4">
						<div class="single-footer">
							<h2 class="footer-title">VỀ WRITER</h2>
							<ul class="footer-list">
								<li><a href="about.jsp">Giới thiệu Writer</a></li>
								<li><a href="#">Thông tin giao hàng</a></li>
								<li><a href="#">Chính sách bảo mật</a></li>
								<li><a href="#">Điều khoản sử dụng</a></li>
								<li><a href="#">Hướng dẫn mua hàng</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-2 hidden-sm">
						<div class="single-footer">
							<h2 class="footer-title">TÀI KHOẢN</h2>
							<ul class="footer-list">
								<li><a href="<%=request.getContextPath()%>/my_account">Tài
										khoản của tôi</a></li>
								<li><a href="<%=request.getContextPath()%>/login">Đăng
										nhập</a></li>
								<li><a href="<%=request.getContextPath()%>/shopping_cart">Giỏ
										hàng</a></li>
								<li><a href="<%=request.getContextPath()%>/wishlist">Theo
										dõi</a></li>
								<li><a href="<%=request.getContextPath()%>/checkout">Thanh
										toán</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-2 hidden-sm">
						<div class="single-footer">
							<h2 class="footer-title">CỬA HÀNG</h2>
							<ul class="footer-list">
								<li><a href="#">Chính sách đổi trả hàng</a></li>
								<li><a href="#">Chương trình thành viên</a></li>
								<li><a href="#">Chính sách mua sĩ</a></li>
								<li><a href="#">Chi nhánh</a></li>
								<li><a href="#">Tuyển dụng</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 col-sm-8">
						<div class="single-footer footer-newsletter">
							<h2 class="footer-title">BẢN TIN WITTER</h2>
							<p>Hàng ngàn sản phẩm và chương trình khuyến mãi siêu hấp dẫn
								đang chờ bạn.</p>
							<form action="#" method="post">
								<div>
									<input type="text" placeholder="Địa chỉ email của bạn ..." />
								</div>
								<button class="btn btn-search btn-small" type="submit">
									ĐĂNG KÍ</button>
								<i class="flaticon-networking"></i>
							</form>
							<ul class="social-icon">
								<li><a href="#"> <i class="flaticon-social"></i>
								</a></li>
								<li><a href="#"> <i class="flaticon-social-1"></i>
								</a></li>
								<li><a href="#"> <i class="flaticon-social-2"></i>
								</a></li>
								<li><a href="#"> <i class="flaticon-video"></i>
								</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-2 col-sm-4 visible-sm">
						<div class="single-footer">
							<h2 class="footer-title">CỬA HÀNG</h2>
							<ul class="footer-list">
								<li><a href="#">Chính sách đổi trả hàng</a></li>
								<li><a href="#">Chương trình thành viên</a></li>
								<li><a href="#">Chính sách mua sĩ</a></li>
								<li><a href="#">Chi nhánh</a></li>
								<li><a href="#">Tuyển dụng</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="footer-bottom-left pull-left">
							<p>
								Copyright &copy; 2016 <span><a href="#">DevItems</a></span>. All
								Right Reserved.
							</p>
						</div>
					</div>
					<div class="col-md-6">
						<div class="footer-bottom-right pull-right">
							<img src="<%=request.getContextPath()%>/assets/img/paypal.png"
								alt="" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Area End -->

	<!--Quickview Product Start -->
	<div id="quickview-wrapper">
		<!-- Modal -->
		<div class="modal fade" id="productModal1" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="modal-product" style="display: flex;">
							<div class="product-images" style="width: 60%;">
								<div class="main-image images">
									<img alt=""
										src="<%=request.getContextPath()%>/assets/img/shop/tn2.jpeg" />
								</div>
							</div>
							<div class="product-info">
								<h1 style="font-size: 22px;">Book Name</h1>
								<div class="price-box">
									<p class="s-price">
										<span class="special-price"> <span class="amount"
											style="font-size: 25px;">500.000đ</span>
										</span>
									</p>
								</div>
								<a href="#" class="see-all">Xem chi tiết</a>
								<div class="quick-add-to-cart">
									<a
										style="display: flex; justify-content: center; align-items: center;"
										class="single_add_to_cart_button" href="#">Mua Ngay</a>
								</div>
								<div style="height: 300px; overflow-y: scroll;"
									class="quick-desc">Hay cực</div>
							</div>
							<!-- .product-info -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--End of Quickview Product-->
	<!-- all js here -->
	<!-- jquery latest version -->
	<script
		src="<%=request.getContextPath()%>/assets/js/vendor/jquery-1.12.0.min.js"></script>
	<!-- bootstrap js -->
	<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
	<!-- owl.carousel js -->
	<script
		src="<%=request.getContextPath()%>/assets/js/owl.carousel.min.js"></script>
	<!-- jquery-ui js -->
	<script src="<%=request.getContextPath()%>/assets/js/jquery-ui.min.js"></script>
	<!-- jquery Counterup js -->
	<script
		src="<%=request.getContextPath()%>/assets/js/jquery.counterup.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/waypoints.min.js"></script>
	<!-- jquery countdown js -->
	<script
		src="<%=request.getContextPath()%>/assets/js/jquery.countdown.min.js"></script>
	<!-- jquery countdown js -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/assets/venobox/venobox.min.js"></script>
	<!-- jquery Meanmenu js -->
	<script
		src="<%=request.getContextPath()%>/assets/js/jquery.meanmenu.js"></script>
	<!-- wow js -->
	<script src="<%=request.getContextPath()%>/assets/js/wow.min.js"></script>
	<script>
		new WOW().init();
	</script>
	<!-- scrollUp JS -->
	<script
		src="<%=request.getContextPath()%>/assets/js/jquery.scrollUp.min.js"></script>
	<!-- plugins js -->
	<script src="<%=request.getContextPath()%>/assets/js/plugins.js"></script>
	<!-- Nivo slider js -->
	<script
		src="<%=request.getContextPath()%>/assets/lib/js/jquery.nivo.slider.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/lib/home.js"
		type="text/javascript"></script>
	<!-- main js -->
	<script src="<%=request.getContextPath()%>/assets/js/main.js"></script>
	
	<script src="<%=request.getContextPath()%>/assets/ajax.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>



</body>
</html>
