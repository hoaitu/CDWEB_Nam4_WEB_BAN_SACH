<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	top: 0 !important;
}

.skiptranslate {
	display: none;
}

#google_translate_element2 {
	display: none
}
/*  */
.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
	font-size: 22px;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
	border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
}
</style>
</head>
<body>

	<!-- Start header section -->
	<jsp:directive.include file="header.jsp" />
	<!-- / header section -->

	<h1>Trang ngôn gnuwx</h1>
	<div id="google_translate_element2">
		<div class="skiptranslate goog-te-gadget" dir="ltr" style="">
			<div id=":0.targetLanguage">
				<select class="goog-te-combo"
					aria-label="Tiện ích con dịch ngôn ngữ"><option value="">Chọn
						Ngôn ngữ</option>
				</select>
			</div>
			Được hỗ trợ bởi <span style="white-space: nowrap"><a
				class="goog-logo-link" href="https://translate.google.com"
				target="_blank"><img
					src="https://www.gstatic.com/images/branding/googlelogo/1x/googlelogo_color_42x16dp.png"
					width="37px" height="14px" style="padding-right: 3px"
					alt="Google Dịch">Dịch</a></span>
		</div>
	</div>

	<li class="menu-item"><a href="#" title="VI" class="lang-vi first"
		onclick="doGTranslate('vi|vi');return false;" hreflang="vi" lang="vi"
		role="menuitem">VI <!-- <img src="{{ asset('uploads/icon/flag_vi.gif') }}"
			alt="" class="img-fluid"> --> <img
			src="<%=request.getContextPath()%>/assets/img/vn.png" alt=""
			class="img-fluid">


	</a> <a href="#" title="EN" class="lang-en last"
		onclick="doGTranslate('vi|en');return false;" hreflang="en" lang="en"
		role="menuitem"> EN <!-- <img
			src="{{ asset('uploads/icon/flag_en.gif') }}" alt=""
			class="img-fluid"> --> <img
			src="<%=request.getContextPath()%>/assets/img/usa.png" alt=""
			class="img-fluid">

			<h1>Hôm nay em đi học.</h1>
			<h3>Thức dậy lúc 6AM</h3>
			<h5>Chào tú tôi đứng đay từ chiều</h5>

	</a></li>
	<div>

		<div>
			<c:forEach items="${listSach }" var="books">
				<div class="shop-single-product-area">
					<div class="col-md-4 col-sm-6">
						<div class="single-banner">
							<div class="product-wrapper">
								<a href="single_product?maSach=${books.maSach }"
									class="single-banner-image-wrapper"> <img alt=""
									src="<%=request.getContextPath()%>${books.hinhAnh}" />
								</a>
								<div class="product-description">
									<div class="functional-buttons">
										<a title="Thêm vào giỏ hàng" href="shopping_cart"> <i
											class="fa fa-shopping-cart"></i>
										</a> <a href="wishlist" title="Thêm vào danh sách yêu thích">
											<i class="far fa-heart"></i>
										</a> <a href="#" title="Xem nhanh" data-toggle="modal"
											data-target="#productModal1"> <i
											class="fas fa-compress-alt"></i>
										</a>
									</div>
								</div>
							</div>

							<div
								style="width: 15%; z-index: 999; position: absolute; top: 0; right: 0;">
								<img src="<%=request.getContextPath()%>/assets/img/sale.png"
									alt="" />
								<p
									style="font-size: 14px; position: absolute; left: 15%; top: 55%; transform: translate(0, -50%); color: white;">
									${books.khuyenMai }%</p>
							</div>


							<div class="banner-bottom text-center">
								<div class="banner-bottom-title" style="height: 40px">
									<a href="">${books.tenSach} </a>
								</div>
								<div style="color: #32b5f3" class="price-2">
									${books.gia }.000 VND <span style="color: black;"
										class="old-price">500.000đ</span>
								</div>
							</div>

						</div>
					</div>

				</div>
			</c:forEach>

		</div>
		<div>&nbsp</div>
		<!-- Phân trang -->
		<div class="pagination">
			<h3>Total item : [[${totalItems }]]</h3>
			<h2>Page [[ ${currentPage} ]] of [[ ${totalPage} ]]</h2>
			&nbsp ; <a if="${currentPage >1}"
				href="<%=request.getContextPath()%>/lang/1">First</a>
			<!--  -->

			<a if="${currentPage >1}"
				href="<%=request.getContextPath()%>/lang/${currentPage -1}">Previous</a>


			-----&nbsp;
			<c:forEach var="loop" begin="1" end="${totalPage}">
				<span> <a href="<%=request.getContextPath()%>/lang/${loop}">
						<c:out value="${loop}" />
				</a>
				</span>
			</c:forEach>



			<a if="${currentPage < totalPage }"
				href="<%=request.getContextPath()%>/lang/${currentPage +1}">Next</a>

			<!--  -->

			<a if="${currentPage < totalPage }"
				href="<%=request.getContextPath()%>/lang/${totalPage}">Last</a>
		</div>

	</div>

	<!--  -->
</body>
</html>